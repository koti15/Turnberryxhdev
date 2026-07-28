Map<String, Object> gatewayOutput = new Map<String, Object>();
Boolean lookupSucceeded = new MockIntegrationGateway().invokeMethod(
    'getCases',
    new Map<String, Object>{
        'source' => 'LegacyCases',
        'claimId' => 'EOB006',
        'resultKey' => 'legacyCaseData'
    },
    gatewayOutput,
    new Map<String, Object>()
);
System.assertEquals(true, lookupSucceeded, JSON.serialize(gatewayOutput));

omnistudio.DRProcessResult transformResult = omnistudio.DRGlobal.process(
    gatewayOutput,
    'DRTransformPremigrationcases',
    null
);
List<Object> transformRows = (List<Object>) JSON.deserializeUntyped(
    JSON.serialize(transformResult.toJsonList())
);
Map<String, Object> transformOutput =
    (Map<String, Object>) transformRows[0];
List<Object> cases = (List<Object>) transformOutput.get('cases');

System.assertEquals(2, cases.size(), JSON.serialize(transformOutput));
System.assertEquals(
    'SI-ENCP-2201001',
    ((Map<String, Object>) cases[0]).get('case')
);
System.assertEquals(
    'SI-CSD-3317001',
    ((Map<String, Object>) cases[1]).get('case')
);
System.debug(
    LoggingLevel.ERROR,
    'CS1347_TRANSFORM=' + JSON.serialize(transformOutput)
);
