Map<String, Object> matchInput = new Map<String, Object>{
    'claimId' => 'EOB006'
};
Map<String, Object> matchResponse =
    (Map<String, Object>) omnistudio.IntegrationProcedureService.runIntegrationService(
        'Claims_PreMigrationCaseLookup',
        matchInput,
        new Map<String, Object>()
    );
Map<String, Object> noMatchResponse =
    (Map<String, Object>) omnistudio.IntegrationProcedureService.runIntegrationService(
        'Claims_PreMigrationCaseLookup',
        new Map<String, Object>{ 'claimId' => 'EOB-NOT-FOUND' },
        new Map<String, Object>()
    );
List<Object> matchedCases = (List<Object>) matchResponse.get('cases');
List<Object> emptyCases = (List<Object>) noMatchResponse.get('cases');
System.assertEquals(2, matchedCases.size(), JSON.serialize(matchResponse));
Map<String, Object> firstCase =
    (Map<String, Object>) matchedCases[0];
System.assertEquals(
    'SI-ENCP-2201001',
    firstCase.get('caseNumber')
);
System.assertEquals(
    'SI-ENCP-2201001',
    firstCase.get('caseKey')
);
System.assertEquals(
    'EnCompass',
    firstCase.get('sourceSystem')
);
System.assertEquals(
    'INT-ENCOMPASS-20250910-0022',
    firstCase.get('interactionId')
);
System.assertEquals(
    'EOB006',
    ((Map<String, Object>)
        ((List<Object>) firstCase.get('claims'))[0]).get('id')
);
System.assertNotEquals(
    null,
    ((Map<String, Object>)
        ((List<Object>) firstCase.get('notes'))[0]).get('text')
);
System.assertEquals(
    'SI-CSD-3317001',
    ((Map<String, Object>) matchedCases[1]).get('caseNumber')
);
System.assertEquals(0, emptyCases.size(), JSON.serialize(noMatchResponse));
System.debug(
    LoggingLevel.ERROR,
    'CS1347_IP_MATCH=' + JSON.serialize(matchResponse)
);
System.debug(
    LoggingLevel.ERROR,
    'CS1347_IP_NO_MATCH=' + JSON.serialize(noMatchResponse)
);
