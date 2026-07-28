String sourceName = 'DRTransformPremigrationcases';
String targetName = 'DRTransformPremigrationcasesCompatible';

System.assertEquals(
    0,
    [SELECT COUNT() FROM OmniDataTransform WHERE Name = :targetName],
    targetName + ' already exists'
);

OmniDataTransform source = [
    SELECT Id
    FROM OmniDataTransform
    WHERE Name = :sourceName
    LIMIT 1
];
OmniDataTransform target = new OmniDataTransform(
    Name = targetName,
    Type = 'Transform',
    InputType = 'JSON',
    OutputType = 'JSON',
    IsActive = false,
    IsManagedUsingStdDesigner = false,
    VersionNumber = 1,
    Description =
        'CS-1347 team-compatible DataRaptor clone created after Brian review.'
);
insert target;

List<OmniDataTransformItem> targetItems =
    new List<OmniDataTransformItem>();
for (OmniDataTransformItem sourceItem : [
    SELECT InputObjectName, InputFieldName, OutputObjectName,
        OutputFieldName, OutputCreationSequence, IsDisabled
    FROM OmniDataTransformItem
    WHERE OmniDataTransformationId = :source.Id
]) {
    targetItems.add(new OmniDataTransformItem(
        Name = targetName,
        OmniDataTransformationId = target.Id,
        InputObjectName = sourceItem.InputObjectName,
        InputFieldName = sourceItem.InputFieldName,
        OutputObjectName = sourceItem.OutputObjectName,
        OutputFieldName = sourceItem.OutputFieldName,
        OutputCreationSequence = sourceItem.OutputCreationSequence,
        IsDisabled = sourceItem.IsDisabled
    ));
}

targetItems.add(new OmniDataTransformItem(
    Name = targetName,
    OmniDataTransformationId = target.Id,
    InputFieldName = 'legacyCaseData:interactions:interactionId',
    OutputObjectName = 'json',
    OutputFieldName = 'cases:interactionId',
    OutputCreationSequence = 1,
    IsDisabled = false
));
insert targetItems;

target.IsActive = true;
update target;

System.debug(
    LoggingLevel.ERROR,
    'CS1347_COMPATIBLE_TRANSFORM_ID=' + target.Id
);
