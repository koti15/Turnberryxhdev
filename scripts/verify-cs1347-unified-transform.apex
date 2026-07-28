Map<String, Object> filtered = new Map<String, Object>();
Boolean filterSucceeded = new MockIntegrationGateway().invokeMethod(
    'getCases',
    new Map<String, Object>{
        'source' => 'LegacyCases',
        'claimId' => 'EOB006',
        'resultKey' => 'legacyCaseData'
    },
    filtered,
    new Map<String, Object>()
);
System.assertEquals(true, filterSucceeded, JSON.serialize(filtered));

Map<String, Object> normalized = new Map<String, Object>();
Boolean normalizeSucceeded = new MockIntegrationGateway().invokeMethod(
    'normalizeLegacyCases',
    new Map<String, Object>{
        'legacyCaseData' => filtered.get('legacyCaseData')
    },
    normalized,
    new Map<String, Object>()
);
System.assertEquals(true, normalizeSucceeded, JSON.serialize(normalized));

omnistudio.DRProcessResult transformResult = omnistudio.DRGlobal.process(
    normalized,
    'DRTransformPremigrationcasesCompatible',
    null
);
List<Object> transformRows = (List<Object>) JSON.deserializeUntyped(
    JSON.serialize(transformResult.toJsonList())
);
Map<String, Object> output =
    (Map<String, Object>) transformRows[0];
List<Object> cases = (List<Object>) output.get('cases');
System.assertEquals(2, cases.size(), JSON.serialize(output));

Map<String, Object> firstCase = (Map<String, Object>) cases[0];
System.assertEquals('SI-ENCP-2201001', firstCase.get('caseNumber'));
System.assertEquals('SI-ENCP-2201001', firstCase.get('caseKey'));
System.assertEquals('EnCompass', firstCase.get('sourceSystem'));
System.assertEquals(
    'Dialysis Authorization and Claim Tracking',
    firstCase.get('subject')
);
System.assertEquals(
    'INT-ENCOMPASS-20250910-0022',
    firstCase.get('interactionId')
);
System.assert(firstCase.get('claims') instanceof List<Object>);
System.assert(firstCase.get('notes') instanceof List<Object>);
System.assert(firstCase.get('history') instanceof List<Object>);
System.assertEquals(
    'EOB006',
    ((Map<String, Object>)
        ((List<Object>) firstCase.get('claims'))[0]).get('id')
);
System.assertEquals(
    'Member called regarding ongoing hemodialysis coverage at San Diego Dialysis Center.',
    ((Map<String, Object>)
        ((List<Object>) firstCase.get('notes'))[0]).get('text')
);
