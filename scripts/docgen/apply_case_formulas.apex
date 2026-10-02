System.assertEquals('00Dbm00000phCerEAE', String.valueOf(UserInfo.getOrganizationId()));
OmniProcess draft = [SELECT Id, IsActive, Description FROM OmniProcess WHERE Id = '0jNbm000000gie9EAA'];
System.assertEquals(false,draft.IsActive);
Id mapperId='0jIbm000000MlGPEA0';
Map<String,OmniDataTransformItem> existing=new Map<String,OmniDataTransformItem>();
for(OmniDataTransformItem row:[SELECT Id, FormulaResultPath FROM OmniDataTransformItem WHERE OmniDataTransformationId=:mapperId AND FormulaResultPath!=null]) existing.put(row.FormulaResultPath,row);
List<OmniDataTransformItem> writes=new List<OmniDataTransformItem>();
List<Object> formulas=(List<Object>)JSON.deserializeUntyped('[{"resultPath": "relatedEntityCount", "expression": "COUNTQUERY(\\"SELECT COUNT() FROM Case_Sub_Entity__c WHERE Case__c = \'{0}\'\\",caseId)", "sequence": 1}, {"resultPath": "currentDate", "expression": "FORMATDATETIME(NOW(),\\"MM/dd/yyyy\\")", "sequence": 2}, {"resultPath": "todayDate", "expression": "FORMATDATETIME(NOW(),\\"MMMM dd, yyyy\\")", "sequence": 3}, {"resultPath": "serviceRepName", "expression": "IF(ISBLANK(loggedInUserInfo:FirstName),SUBSTRING(loggedInUserInfo:LastName,0,1),CONCAT(loggedInUserInfo:FirstName,\\" \\",SUBSTRING(loggedInUserInfo:LastName,0,1)))", "sequence": 4}, {"resultPath": "caseInfo:relationship", "expression": "IF(caseInfo:Account.Record_Type__c = \\"Member\\" || caseInfo:Account.Record_Type__c = \\"Unlisted Member\\",\\"Member\\",\\"Provider\\")", "sequence": 5}, {"resultPath": "localMemberName", "expression": "IF(caseInfo:Account.Record_Type__c = \\"Member\\" || caseInfo:Account.Record_Type__c = \\"Unlisted Member\\",caseInfo:Account.Name,caseInfo:Contact.Name)", "sequence": 6}, {"resultPath": "localMemberFirstName", "expression": "IF(caseInfo:Account.Record_Type__c = \\"Member\\" || caseInfo:Account.Record_Type__c = \\"Unlisted Member\\",caseInfo:Account.FirstName,\\"\\")", "sequence": 7}, {"resultPath": "localMemberLastName", "expression": "IF(caseInfo:Account.Record_Type__c = \\"Member\\" || caseInfo:Account.Record_Type__c = \\"Unlisted Member\\",caseInfo:Account.LastName,\\"\\")", "sequence": 8}, {"resultPath": "localEnterprisePersonId", "expression": "IF(caseInfo:Account.Record_Type__c = \\"Member\\" || caseInfo:Account.Record_Type__c = \\"Unlisted Member\\",caseInfo:Account.Enterprise_Person_Id__c,\\"\\")", "sequence": 9}, {"resultPath": "createdDate", "expression": "FORMATDATETIME(caseInfo:CreatedDate,\\"MM/dd/yyyy\\")", "sequence": 10}, {"resultPath": "receivedDate", "expression": "FORMATDATETIME(caseInfo:Received_Date__c,\\"MM/dd/yyyy\\")", "sequence": 11}, {"resultPath": "relatedEntitiesList", "expression": "QUERY(\\"SELECT Entity_Type__c FROM Case_Sub_Entity__c WHERE Case__c = \'{0}\'\\",caseId)", "sequence": 12}, {"resultPath": "relatedEntities", "expression": "TOSTRING(relatedEntitiesList)", "sequence": 13}]');
for(Object raw:formulas){
 Map<String,Object> f=(Map<String,Object>)raw;
 String path=(String)f.get('resultPath');
 OmniDataTransformItem row=existing.containsKey(path)?existing.get(path):new OmniDataTransformItem(Name='CNCGetCaseInfo',OmniDataTransformationId=mapperId,GlobalKey='Docgen_CNCGetCaseInfo_Formula_'+String.valueOf(f.get('sequence')));
 row.FormulaResultPath=path;row.FormulaExpression=(String)f.get('expression');row.FormulaSequence=Integer.valueOf(String.valueOf(f.get('sequence')));row.IsDisabled=true;writes.add(row);
}
upsert writes;
List<OmniDataTransformItem> users=[SELECT Id FROM OmniDataTransformItem WHERE OmniDataTransformationId=:mapperId AND InputObjectName='User'];
OmniDataTransformItem userStep=users.isEmpty()?new OmniDataTransformItem(Name='CNCGetCaseInfo',OmniDataTransformationId=mapperId,GlobalKey='Docgen_CNCGetCaseInfo_UserExtract'):users[0];
userStep.InputObjectName='User';userStep.InputObjectQuerySequence=2;userStep.InputFieldName='Id';userStep.OutputFieldName='loggedInUserInfo';userStep.OutputObjectName='json';userStep.FilterOperator='=';userStep.FilterValue='$Vlocity.UserId';userStep.IsDisabled=true;
upsert userStep;
draft.Description='Captured draft: Step1 scoped LWCs enabled; Forms/Letters/Documents Line and nine Header records deployed; Case mapper 13 formulas and User filter stored. Remaining dependencies/settings unresolved. Inactive; runtime not validated.';
update draft;
System.assertEquals(false,[SELECT IsActive FROM OmniProcess WHERE Id=:draft.Id].IsActive);
System.debug('DOCGEN_CASE_FORMULAS_AND_DRAFT_STATUS_UPDATED');
