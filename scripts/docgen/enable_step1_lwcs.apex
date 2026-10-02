System.assertEquals('00Dbm00000phCerEAE', String.valueOf(UserInfo.getOrganizationId()));
OmniProcess draft = [SELECT Id, IsActive FROM OmniProcess WHERE Id = '0jNbm000000gie9EAA'];
System.assertEquals(false, draft.IsActive);
List<OmniProcessElement> children = [SELECT Id, Name, IsActive, PropertySetConfig FROM OmniProcessElement WHERE OmniProcessId = :draft.Id AND Name IN ('CustomLWC4','CustomLWC2')];
System.assertEquals(2, children.size());
for (OmniProcessElement child : children) {
    Map<String,Object> props = (Map<String,Object>)JSON.deserializeUntyped(child.PropertySetConfig);
    System.assertEquals(child.Name == 'CustomLWC4' ? 'cncDynamicTableSections' : 'cncAttachmentsUploadSection', props.get('lwcName'));
    child.IsActive = true;
}
update children;
System.assertEquals(false, [SELECT IsActive FROM OmniProcess WHERE Id = :draft.Id].IsActive);
System.debug('DOCGEN_STEP1_LWCS_ENABLED');
