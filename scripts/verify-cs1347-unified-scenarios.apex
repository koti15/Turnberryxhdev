Map<String, Object> oneCaseResponse =
    (Map<String, Object>)
        omnistudio.IntegrationProcedureService.runIntegrationService(
            'Claims_PreMigrationCaseLookup',
            new Map<String, Object>{ 'claimId' => 'EOB001' },
            new Map<String, Object>()
        );
List<Object> oneCaseList =
    (List<Object>) oneCaseResponse.get('cases');
System.assertEquals(1, oneCaseList.size(), JSON.serialize(oneCaseResponse));
System.assertEquals(
    'SI-CSD-7789001',
    ((Map<String, Object>) oneCaseList[0]).get('caseNumber')
);

Map<String, Object> mixedNotesResponse =
    (Map<String, Object>)
        omnistudio.IntegrationProcedureService.runIntegrationService(
            'Claims_PreMigrationCaseLookup',
            new Map<String, Object>{ 'claimId' => 'EOB004' },
            new Map<String, Object>()
        );
List<Object> mixedCases =
    (List<Object>) mixedNotesResponse.get('cases');
System.assertEquals(1, mixedCases.size(), JSON.serialize(mixedNotesResponse));
Map<String, Object> mixedCase =
    (Map<String, Object>) mixedCases[0];
List<Object> mixedNotes =
    (List<Object>) mixedCase.get('notes');
System.assertEquals(4, mixedNotes.size(), JSON.serialize(mixedCase));
System.assertEquals(
    'Member inquired about professional claim for office visit on 01/20/2026.',
    ((Map<String, Object>) mixedNotes[0]).get('text')
);
System.assertEquals(
    'Follow-up call on balance billing case from November.',
    ((Map<String, Object>) mixedNotes[3]).get('text')
);
System.assertEquals(
    'Rachel Foster',
    ((Map<String, Object>) mixedNotes[3]).get('author')
);
System.assertEquals(
    '2026-01-15T11:30:00',
    ((Map<String, Object>) mixedNotes[3]).get('when')
);
