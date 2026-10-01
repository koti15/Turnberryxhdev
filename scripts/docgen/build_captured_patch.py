"""Create an in-place Salesforce configuration patch from captured evidence.

Snapshots contain configuration and schema only. No new record, default, launcher,
component implementation or activation is synthesized by this builder.
"""
import json
from pathlib import Path

ROOT = Path(__file__).resolve().parents[2]
SESSION = ROOT.parents[1]
SPEC = json.loads((ROOT/'Docgen/spec/send-communication.partial.json').read_text(encoding='utf-8-sig'))
OUT = ROOT/'datapacks/docgen-captured-patch'
OUT.mkdir(parents=True, exist_ok=True)

def load(name):
    data = json.loads((SESSION/'tmp'/name).read_text(encoding='utf-8-sig'))
    if data.get('status') != 0:
        raise ValueError(f'Failed snapshot {name}: {data.get("message")}')
    return data['result']

def save(path, value):
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(json.dumps(value, indent=2, ensure_ascii=True)+'\n', encoding='utf-8')

elements = load('docgen-selected-elements.json')['records']
processes = load('docgen-selected-processes.json')['records']
items = load('docgen-existing-items.json')['records']
mappers = load('docgen-mapper-inventory.json')['records']
case_fields = {f['name'] for f in load('docgen-case-schema.json')['fields']}
account_fields = {f['name'] for f in load('docgen-account-schema.json')['fields']}
TARGET = '0jNbm000000gie9EAA'
assert next(p for p in processes if p['Id']==TARGET)['IsActive'] is False
IP_IDS = {'CNC_GetCaseInformation':'0jNbm000000giavEAA', 'CNC_GetEmailFormsDetails':'0jNbm000000gicXEAQ'}
patch = {'targetOrgId':'00Dbm00000phCerEAE', 'targetAlias':'myProdOrg', 'draftId':TARGET,
         'baseCommit':'c28071334a02a28306df0bc0a9a32b7c4a9291d6', 'operations':[]}
audit=[]
blockers=[]

def record(pid, name):
    matches = [r for r in elements if r['OmniProcessId']==pid and r['Name']==name]
    assert len(matches)==1, (pid,name,len(matches))
    return matches[0]

def update(kind, actual, fields, canonical):
    patch['operations'].append({'sobject':kind, 'logicalKey':canonical, 'id':actual['Id'], 'fields':fields})

def assign(rows, old, parent):
    result=dict(old)
    for r in rows:
        if r.get('useExpression') is True:
            result[r['name']] = '=' + r['expression']
            if r.get('inputTokenVerification'):
                blockers.append(f"{parent}.{r['name']}: expression stored exactly; token casing remains unverified against source export.")
        elif r.get('useExpression') is False and 'valueText' in r:
            # Preserve the captured literal text, never coerce it to a Boolean.
            result[r['name']]=r['valueText']
            blockers.append(f"{parent}.{r['name']}: literal text stored; runtime value type remains unverified.")
        elif 'useExpression' not in r and r.get('expression'):
            result[r['name']]='='+r['expression']
        else:
            blockers.append(f"{parent}.{r['name']}: expression/literal mode and runtime type unknown; not written.")
    return result

def properties(e, actual, is_ip=False):
    p=json.loads(actual['PropertySetConfig'])
    typ=e.get('elementType',e.get('type'))
    if 'fieldLabel' in e: p['label']=e['fieldLabel']
    if typ=='Set Values': p['elementValueMap']=assign(e.get('values',[]),p.get('elementValueMap',{}),e['elementName'])
    if typ=='Step':
        if 'visibleTitle' in e: p['label']=e['visibleTitle']
        for key in ('chartLabel','instruction','allowSaveForLater'):
            if key in e: p[key]=e[key]
        p.update(e.get('buttonProperties',{}))
    if typ=='Integration Procedure Action':
        if 'integrationProcedure' in e: p['integrationProcedureKey']=e['integrationProcedure']
        if 'extraPayload' in e: p['extraPayload']={r['key']:r['value'] for r in e['extraPayload']}
        if 'remoteOptions' in e: p['remoteOptions']={r['key']:r['value'] for r in e['remoteOptions']}
        for key,value in e.get('remoteProperties',{}).items():
            if key=='useContinuation': p[key]=value
            else: p.setdefault('remoteOptions',{})[key]=value
        for source,dest in [('preTransformDataMapperInterface','preTransformBundle'),('postTransformDataMapperInterface','postTransformBundle')]:
            if source in e: p[dest]=e[source]
        if 'showToastOnCompletion' in e: p['showToastOnCompletion']=e['showToastOnCompletion']
        view=e.get('conditionalViewEvidence',{})
        if view.get('displayedCondition')=='(MaterialType = Forms OR MaterialType = Documents)':
            # Native structured show rules verified from existing org configuration.
            p['show']={'group':{'operator':'OR','rules':[{'field':'MaterialType','condition':'=','data':x} for x in ('Forms','Documents')]}}
            for src,dst in [('windowPostMessage','wpm'),('pubSub','pubsub'),('sessionStorage','ssm')]:
                if src in view.get('messagingFramework',{}): p[dst]=view['messagingFramework'][src]
    if typ=='Data Mapper Extract Action':
        p['bundle']=e['dataMapper']
        if 'inputParameters' in e:
            rows=[]
            for r in e['inputParameters']:
                if r.get('literalQuotingVerified') is False:
                    blockers.append(e['elementName']+': action literal quoting unverified; preserve existing input row, do not reinterpret.')
                    rows=p.get('dataRaptor Input Parameters',[]); break
                rows.append({'element':r['dataSource'],'inputParam':r.get('filterValue',r.get('filterValueDisplayed'))})
            p['dataRaptor Input Parameters']=rows
    for src,dst in [('sendJsonPath','sendJSONPath'),('sendJsonNode','sendJSONNode'),('responseJsonPath','responseJSONPath'),('responseJsonNode','responseJSONNode')]:
        if src in e: p[dst]=e[src]
    for key in ('ignoreCache','sendOnlyExtraPayload','sendOnlyAdditionalInput','returnOnlyAdditionalOutput','executionConditionalFormula','failOnStepError','lwcComponentOverride','internalNotes'):
        if key in e: p[key]=e[key]
    if typ=='Response Action':
        p['responseFormat']=e['responseFormat']
        p['vlcResponseHeaders']={r['key']:r['value'] for r in e['responseHeaders']}
        output=e['additionalOutputResponse']
        p['additionalOutput']={r['key']:r['value'] for r in output['additionalOutput']}
        p['returnOnlyAdditionalOutput']=output['returnOnlyAdditionalOutput']
    return p

actions={e['elementName']:e for e in SPEC['confirmedActions']}
sets={e['elementName']:e for e in SPEC['setValuesElements']}
steps={e['elementName']:e for e in SPEC['stepElements']}
for outer in SPEC['outerTree']['elements'][:7]:
    name=outer['name']; e=dict(outer); e['elementName']=name
    e.update(actions.get(name,{}));e.update(sets.get(name,{}));e.update(steps.get(name,{}))
    actual=record(TARGET,name); props=properties(e,actual)
    fields={'PropertySetConfig':json.dumps(props,separators=(',',':')),'SequenceNumber':outer['order']}
    update('OmniProcessElement',actual,fields,'OmniScript/'+name)
    save(OUT/'OmniScript'/f'{name}.json',{'Id':actual['Id'],'Name':name,'OmniProcessId':TARGET,**fields})
    audit.append({'reference':name,'id':actual['Id'],'status':'partially configured' if name!='SV-InitialMapping' else 'captured assignment configured','source':f'datapacks/docgen-captured-patch/OmniScript/{name}.json'})
    if name=='IP-GETCaseDetails': blockers.append('IP-GETCaseDetails: Case input/response mappings and execution condition absent in reference and org source.')
    if name=='MaterialAndCommunicationChannel': blockers.extend(steps[name]['missing'])
    if name=='Step1':
        blockers.extend(steps[name]['missing'])
        for child in steps[name]['visibleLayoutItems']:
            if child.get('elementType')!='Custom LWC': continue
            actual=record(TARGET,child['elementName']); p=json.loads(actual['PropertySetConfig'])
            p.update(label=child['fieldLabel'],lwcName=child['componentName'],bStandalone=child['standaloneLwc'],customAttributes=child['propertyMappings'])
            if 'internalNotes' in child:p['internalNotes']=child['internalNotes']
            update('OmniProcessElement',actual,{'PropertySetConfig':json.dumps(p,separators=(',',':'))},'Step1/'+child['elementName'])
            save(OUT/'OmniScript'/f'{child["elementName"]}.json',{'Id':actual['Id'],'Name':child['elementName'],'OmniProcessId':TARGET,'ParentElementId':actual['ParentElementId'],'PropertySetConfig':p})
            blockers.append(f"{child['componentName']}: no LightningComponentBundle in target org or source; reference mapping configured but child remains disabled.")

for ip in SPEC['integrationProcedures']:
    pid=IP_IDS[ip['key']]
    for e in ip['visibleElements']:
        actual=record(pid,e['elementName']); p=properties(e,actual,True)
        update('OmniProcessElement',actual,{'PropertySetConfig':json.dumps(p,separators=(',',':'))},ip['key']+'/'+e['elementName'])
        save(OUT/'IntegrationProcedure'/ip['key']/f'{e["elementName"]}.json',{'Id':actual['Id'],'OmniProcessId':pid,'Name':e['elementName'],'PropertySetConfig':p})
    if 'configuration' in ip:
        actual=next(r for r in processes if r['Id']==pid)
        p=json.loads(actual['PropertySetConfig']);p.update(ip['configuration'])
        fields={'PropertySetConfig':json.dumps(p,separators=(',',':'))}
        if 'description' in ip:fields['Description']=ip['description']
        update('OmniProcess',actual,fields,ip['key'])
    blockers.append(ip['key']+': inactive; full procedure/execution/failure settings and executable dependencies incomplete.')

for mapper in SPEC['dataMappers']:
    current=next(m for m in mappers if m['Name']==mapper['name']); mid=current['Id']
    source=[]
    for pair in mapper.get('outputMappings',[]):
        if pair.get('verification'):
            blockers.append(mapper['name']+': '+pair['verification']);continue
        matches=[r for r in items if r['OmniDataTransformationId']==mid and r['InputFieldName']==pair['extractJsonPath']]
        exact=[r for r in matches if r['OutputFieldName']==pair['outputJsonPath']]
        if len(exact)==1:actual=exact[0]
        elif len(matches)==1:actual=matches[0]
        else:
            blockers.append(mapper['name']+': cannot unambiguously resolve existing output item '+str(pair));continue
        fields={'InputFieldName':pair['extractJsonPath'],'OutputFieldName':pair['outputJsonPath']}
        update('OmniDataTransformItem',actual,fields,mapper['name']+'/'+pair['extractJsonPath']+'->'+pair['outputJsonPath'])
        source.append({'Id':actual['Id'],**fields})
    for formula in mapper.get('formulas',[]) or []:
        matches=[r for r in items if r['OmniDataTransformationId']==mid and r['FormulaResultPath']==formula['resultPath']]
        assert len(matches)==1, formula['resultPath']
        fields={'FormulaExpression':formula['expression'],'FormulaResultPath':formula['resultPath']}
        # Keep execution gating until the referenced extraction schema exists.
        update('OmniDataTransformItem',matches[0],fields,mapper['name']+'/formula/'+formula['resultPath'])
        source.append({'Id':matches[0]['Id'],**fields})
    save(OUT/'DataMapper'/f'{mapper["name"]}.json',{'Id':mid,'Name':mapper['name'],'items':source})
    if mapper['name']=='CNCGetCaseInfo':
        blockers.append('CNCGetCaseInfo: all 13 formulaEvidence.expression values are null; exact User filter unresolved. Neither has a genuine source definition in this org.')
        for pair in mapper.get('outputMappings', []):
            path=pair['extractJsonPath']
            if path.startswith('caseInfo:Account.'):
                field=path.split('Account.',1)[1]
                if field not in account_fields:
                    blockers.append('CNCGetCaseInfo: referenced Account.'+field+' is absent from target schema; field definition not supplied.')
            elif path.startswith('caseInfo:') and '.' not in path:
                field=path.split(':',1)[1]
                if field not in case_fields and field!='relationship':
                    blockers.append('CNCGetCaseInfo: referenced Case.'+field+' is absent from target schema; field definition not supplied.')
    for e in mapper.get('extractSteps',[]):
        if e['object'].endswith('__mdt'):
            blockers.append(mapper['name']+': '+e['object']+' is a prior-created type shell without captured field definitions/configuration records; cannot execute extraction.')
    if mapper['name']=='GetMMREmailTemplate':blockers.append('GetMMREmailTemplate: literal quoting/semantics, formulas/options and action response transformations unknown; template contents not provided.')
    if mapper['name']=='CNCGetInternalAndExternalLinks':blockers.extend(mapper['missing'])
    if mapper['name']=='CNCGetHeaderAttributes':blockers.extend(mapper['outputMappingCoverage']['notes'])

# A supported patch contains only updates to existing records. No inserts, deletes,
# activation flags, placeholder children or guessed settings are emitted.
assert all(o['id'] and 'IsActive' not in o['fields'] and 'IsDisabled' not in o['fields'] for o in patch['operations'])
assert len({(o['sobject'],o['id']) for o in patch['operations']})==len(patch['operations']), 'Duplicate record update'
save(OUT/'patch.json',patch)
save(ROOT/'Docgen/deployment/captured-audit.json',{'components':audit,'blockers':list(dict.fromkeys(blockers)),'targetOrgId':patch['targetOrgId'],'draftId':TARGET})
def literal(s):return "'"+s.replace('\\','\\\\').replace("'","\\'").replace('\n','\\n').replace('\r','\\r')+"'"
payload=json.dumps(patch,separators=(',',':'))
apex="System.assertEquals('00Dbm00000phCerEAE', UserInfo.getOrganizationId());\nSystem.assertEquals(false, [SELECT IsActive FROM OmniProcess WHERE Id='0jNbm000000gie9EAA'].IsActive);\n"
apex+='Map<String,Object> payload=(Map<String,Object>)JSON.deserializeUntyped('+literal(payload)+');\n'
apex+='Map<String,List<SObject>> batches=new Map<String,List<SObject>>();\n'
apex+="for(Object entry:(List<Object>)payload.get('operations')) { Map<String,Object> op=(Map<String,Object>)entry; String kind=(String)op.get('sobject'); SObject row=Schema.getGlobalDescribe().get(kind).newSObject((Id)op.get('id')); Map<String,Object> fields=(Map<String,Object>)op.get('fields'); for(String key:fields.keySet()) { row.put(key,fields.get(key)); } if(!batches.containsKey(kind)) batches.put(kind,new List<SObject>()); batches.get(kind).add(row); }\n"
apex+='for(String kind:batches.keySet()) update batches.get(kind);\n'
apex+="System.assertEquals(false, [SELECT IsActive FROM OmniProcess WHERE Id='0jNbm000000gie9EAA'].IsActive);\nSystem.debug('DOCGEN_CAPTURED_PATCH_APPLIED');\n"
(OUT/'deploy.apex').write_text(apex,encoding='utf-8')
print(json.dumps({'operations':len(patch['operations']),'components':audit,'blockerCount':len(set(blockers))}))
