String targetName = 'DRTransformPremigrationUnifiedCases';

System.assertEquals(
    0,
    [SELECT COUNT() FROM OmniDataTransform WHERE Name = :targetName],
    targetName + ' already exists'
);

OmniDataTransform target = new OmniDataTransform(
    Name = targetName,
    Type = 'Transform',
    InputType = 'JSON',
    OutputType = 'JSON',
    IsActive = false,
    IsManagedUsingStdDesigner = false,
    VersionNumber = 1,
    Description =
        'CS-1347 older-designer unified case contract transform.'
);
insert target;

List<List<String>> mappings = new List<List<String>>{
    new List<String>{ 'legacyId', 'caseNumber' },
    new List<String>{ 'legacyId', 'caseKey' },
    new List<String>{ 'sourceSystem', 'sourceSystem' },
    new List<String>{ 'subject', 'subject' },
    new List<String>{ 'workBasket', 'workBasket' },
    new List<String>{ 'lastActivityDate', 'lastActivityDate' },
    new List<String>{ 'status', 'status' },
    new List<String>{ 'derivedIsClosed', 'isClosed' },
    new List<String>{ 'description', 'description' },
    new List<String>{ 'memberId', 'memberId' },
    new List<String>{ 'providerId', 'provider' },
    new List<String>{ 'legacyId', 'legacyId' },
    new List<String>{ 'normalizedClaims', 'claims' },
    new List<String>{ 'normalizedNotes', 'notes' },
    new List<String>{ 'normalizedHistory', 'history' }
};

List<OmniDataTransformItem> items =
    new List<OmniDataTransformItem>();
String intentPrefix =
    'normalizedLegacyCaseData:interactions:serviceIntents:';
for (List<String> mapping : mappings) {
    items.add(new OmniDataTransformItem(
        Name = targetName,
        OmniDataTransformationId = target.Id,
        InputFieldName = intentPrefix + mapping[0],
        OutputObjectName = 'json',
        OutputFieldName = 'cases:' + mapping[1],
        OutputCreationSequence = 1,
        IsDisabled = false
    ));
}

List<List<String>> parentMappings = new List<List<String>>{
    new List<String>{ 'interactionId', 'interactionId' },
    new List<String>{ 'createdAt', 'interactionCreatedAt' },
    new List<String>{ 'closedAt', 'interactionClosedAt' },
    new List<String>{ 'meaName', 'mea' }
};
for (List<String> mapping : parentMappings) {
    items.add(new OmniDataTransformItem(
        Name = targetName,
        OmniDataTransformationId = target.Id,
        InputFieldName =
            'normalizedLegacyCaseData:interactions:' + mapping[0],
        OutputObjectName = 'json',
        OutputFieldName = 'cases:' + mapping[1],
        OutputCreationSequence = 1,
        IsDisabled = false
    ));
}
insert items;

target.IsActive = true;
update target;
