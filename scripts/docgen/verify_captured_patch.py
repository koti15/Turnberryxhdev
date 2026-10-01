"""Compare committed configuration patch with configuration-only org queries."""
import json
from pathlib import Path

root=Path(__file__).resolve().parents[2]
session=root.parents[1]
def read(path): return json.loads(path.read_text(encoding='utf-8-sig'))
patch=read(root/'datapacks/docgen-captured-patch/patch.json')
records={}
for kind,file in [('OmniProcessElement','docgen-verified-elements.json'),('OmniDataTransformItem','docgen-verified-items.json'),('OmniProcess','docgen-verified-processes.json')]:
    result=read(session/'tmp'/file)
    assert result['status']==0, file
    records[kind]={r['Id']:r for r in result['result']['records']}
fields=0
for op in patch['operations']:
    actual=records[op['sobject']][op['id']]
    for key,expected in op['fields'].items():
        value=actual[key]
        if key=='PropertySetConfig': value,expected=json.loads(value),json.loads(expected)
        assert value==expected, (op['logicalKey'],key,value,expected)
        fields+=1
draft=records['OmniProcess'][patch['draftId']]
assert draft['IsActive'] is False and draft['VersionNumber']==4
defaults=next(r for r in records['OmniProcessElement'].values() if r['OmniProcessId']==patch['draftId'] and r['Name']=='SV-DefaultMapping')
assignments=json.loads(defaults['PropertySetConfig'])['elementValueMap']
assert len(assignments)==7
assert assignments['isDocumentUploaded']=='false' and not isinstance(assignments['isDocumentUploaded'],bool)
result={'success':True,'recordsVerified':len(patch['operations']),'fieldsVerified':fields,'draftId':draft['Id'],'version':4,'active':False,'defaultAssignmentsConfigured':7,'runtimePreviewPerformed':False}
(root/'Docgen/deployment/captured-verification.json').write_text(json.dumps(result,indent=2)+'\n',encoding='utf-8')
print(json.dumps(result))
