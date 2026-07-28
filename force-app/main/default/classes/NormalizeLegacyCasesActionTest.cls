@IsTest
private class NormalizeLegacyCasesActionTest {

    @IsTest
    static void mergesParentAndChildNotesAndNormalizesCollections() {
        Map<String, Object> response =
            (Map<String, Object>) new NormalizeLegacyCasesAction().execute(
                new Map<String, Object>{
                    'legacyCaseData' => JSON.deserializeUntyped(
                        '[' +
                        '{"interactions":[{' +
                        '"createdAt":"2026-01-01",' +
                        '"meaName":"Parent Author",' +
                        '"notes":["Parent note"],' +
                        '"serviceIntents":[{' +
                        '"status":"closed",' +
                        '"lastActivityDate":"2026-01-02",' +
                        '"claims":["EOB001"],' +
                        '"notes":["Child note"],' +
                        '"provider":{"id":"NPI-1"}' +
                        '}]' +
                        '}]}' +
                        ']'
                    )
                }
            );

        Map<String, Object> intent = firstIntent(response);
        System.assertEquals(true, intent.get('derivedIsClosed'));
        System.assertEquals('NPI-1', intent.get('providerId'));

        List<Object> claims =
            (List<Object>) intent.get('normalizedClaims');
        System.assertEquals(1, claims.size());
        System.assertEquals(
            'EOB001',
            ((Map<String, Object>) claims[0]).get('id')
        );

        List<Object> notes =
            (List<Object>) intent.get('normalizedNotes');
        System.assertEquals(2, notes.size());
        System.assertEquals(
            'Child note',
            ((Map<String, Object>) notes[0]).get('text')
        );
        System.assertEquals(
            '2026-01-02',
            ((Map<String, Object>) notes[0]).get('when')
        );
        System.assertEquals(
            'Parent note',
            ((Map<String, Object>) notes[1]).get('text')
        );
        System.assertEquals(
            '2026-01-01',
            ((Map<String, Object>) notes[1]).get('when')
        );
    }

    @IsTest
    static void skipsBlankParentNotesAndSupportsStructuredNotes() {
        Map<String, Object> response =
            (Map<String, Object>) new NormalizeLegacyCasesAction().execute(
                new Map<String, Object>{
                    'legacyCaseData' => JSON.deserializeUntyped(
                        '[' +
                        '{"interactions":[{' +
                        '"notes":["",null],' +
                        '"serviceIntents":[{' +
                        '"status":"open",' +
                        '"notes":[{"text":"Existing","author":"A","when":"D"}]' +
                        '}]' +
                        '}]}' +
                        ']'
                    )
                }
            );

        Map<String, Object> intent = firstIntent(response);
        System.assertEquals(false, intent.get('derivedIsClosed'));
        List<Object> notes =
            (List<Object>) intent.get('normalizedNotes');
        System.assertEquals(1, notes.size());
        System.assertEquals(
            'Existing',
            ((Map<String, Object>) notes[0]).get('text')
        );
        System.assertEquals(
            0,
            ((List<Object>) intent.get('normalizedHistory')).size()
        );
    }

    @IsTest
    static void gatewayRoutesNormalizationAction() {
        Map<String, Object> output = new Map<String, Object>();
        Boolean succeeded = new MockIntegrationGateway().invokeMethod(
            'normalizeLegacyCases',
            new Map<String, Object>{
                'legacyCaseData' => new List<Object>()
            },
            output,
            new Map<String, Object>()
        );

        System.assertEquals(true, succeeded, JSON.serialize(output));
        System.assertEquals(
            0,
            ((List<Object>) output.get('normalizedLegacyCaseData')).size()
        );
    }

    @IsTest
    static void acceptsSingletonSubscriberFromOmniFormula() {
        Map<String, Object> singleton =
            (Map<String, Object>) JSON.deserializeUntyped(
                '{"interactions":[{"serviceIntents":[' +
                '{"status":"open","claims":["EOB001"],"notes":[]}' +
                ']}]}'
            );

        Map<String, Object> response =
            (Map<String, Object>) new NormalizeLegacyCasesAction().execute(
                new Map<String, Object>{
                    'legacyCaseData' => singleton
                }
            );

        System.assertEquals(
            1,
            ((List<Object>)
                response.get('normalizedLegacyCaseData')).size()
        );
    }

    private static Map<String, Object> firstIntent(
        Map<String, Object> response
    ) {
        List<Object> subscribers =
            (List<Object>) response.get('normalizedLegacyCaseData');
        Map<String, Object> subscriber =
            (Map<String, Object>) subscribers[0];
        Map<String, Object> interaction =
            (Map<String, Object>)
                ((List<Object>) subscriber.get('interactions'))[0];
        return (Map<String, Object>)
            ((List<Object>) interaction.get('serviceIntents'))[0];
    }
}
