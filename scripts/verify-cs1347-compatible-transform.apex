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
    'DRTransformPremigrationcasesCompatible',
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
    'INT-ENCOMPASS-20250910-0022',
    ((Map<String, Object>) cases[0]).get('interactionId')
);
System.assertEquals(
    'SI-CSD-3317001',
    ((Map<String, Object>) cases[1]).get('case')
);
System.assertEquals(
    'INT-CSD-20260122-0039',
    ((Map<String, Object>) cases[1]).get('interactionId')
);
