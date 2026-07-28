Map<String, Object> input = new Map<String, Object>{
    'source' => 'LegacyCases',
    'claimId' => 'EOB006',
    'resultKey' => 'legacyCaseData'
};
Map<String, Object> output = new Map<String, Object>();
Boolean succeeded = new MockIntegrationGateway().invokeMethod(
    'getCases',
    input,
    output,
    new Map<String, Object>()
);
System.assertEquals(true, succeeded, JSON.serialize(output));
List<Object> cases = (List<Object>) output.get('legacyCaseData');
System.assertEquals(1, cases.size(), JSON.serialize(output));
List<Object> interactions = (List<Object>)
    ((Map<String, Object>) cases[0]).get('interactions');
System.assertEquals(2, interactions.size(), JSON.serialize(output));
List<Object> serviceIntents = (List<Object>)
    ((Map<String, Object>) interactions[1]).get('serviceIntents');
System.assertEquals(
    'SI-CSD-3317001',
    ((Map<String, Object>) serviceIntents[0]).get('legacyId')
);
System.debug(LoggingLevel.ERROR, 'CS1347_SMOKE=' + JSON.serialize(output));
