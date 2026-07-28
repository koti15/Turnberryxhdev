@IsTest
private class FilteredLookupActionTest {

    private class StubLoader implements IMockDataLoader {
        private final List<Map<String, Object>> records;

        StubLoader(String jsonBody) {
            records = new List<Map<String, Object>>();
            for (Object item : (List<Object>) JSON.deserializeUntyped(jsonBody)) {
                records.add((Map<String, Object>) item);
            }
        }

        public List<Map<String, Object>> load(String strategyName) {
            return records;
        }
    }

    @IsTest
    static void preservesGenericScalarAndNoFilterBehavior() {
        FilteredLookupAction action = new FilteredLookupAction(
            new StubLoader(
                '[{"claimId":"EOB001"},{"claimId":"EOB002"}]'
            )
        );

        Map<String, Object> filtered = (Map<String, Object>) action.execute(
            new Map<String, Object>{
                'source' => 'Claims',
                'matchField' => 'claimId',
                'matchValue' => 'EOB001',
                'resultKey' => 'matches'
            }
        );
        System.assertEquals(
            1,
            ((List<Object>) filtered.get('matches')).size()
        );

        Map<String, Object> unfiltered = (Map<String, Object>) action.execute(
            new Map<String, Object>{ 'source' => 'Claims' }
        );
        System.assertEquals(
            2,
            ((List<Object>) unfiltered.get('results')).size()
        );
    }

    @IsTest
    static void preservesGenericExactEqualityBehavior() {
        FilteredLookupAction action = new FilteredLookupAction(
            new StubLoader(
                '[{"claims":["EOB001","EOB002"]},{"claims":["EOB003"]}]'
            )
        );

        Map<String, Object> response = (Map<String, Object>) action.execute(
            new Map<String, Object>{
                'matchField' => 'claims',
                'matchValue' => 'eob002'
            }
        );

        System.assertEquals(
            0,
            ((List<Object>) response.get('results')).size()
        );
    }

    @IsTest
    static void getCasesKeepsOnlyMatchingNestedServiceIntents() {
        FilteredLookupAction action = new FilteredLookupAction(
            new StubLoader(
                '[' +
                ' {"subscriberId":"SUB-1","interactions":[' +
                '   {"interactionId":"INT-1","serviceIntents":[' +
                '     {"legacyId":"SI-1","claims":["EOB001"]},' +
                '     {"legacyId":"SI-2","claims":["EOB002"]}' +
                '   ]},' +
                '   {"interactionId":"INT-2","serviceIntents":[]}' +
                ' ]},' +
                ' {"subscriberId":"SUB-2","interactions":[' +
                '   {"interactionId":"INT-3","serviceIntents":[' +
                '     {"legacyId":"SI-3","claims":["EOB003"]}' +
                '   ]}' +
                ' ]}' +
                ']'
            )
        );

        Map<String, Object> response = (Map<String, Object>) action.execute(
            new Map<String, Object>{
                '_action' => 'getCases',
                'source' => 'LegacyCases',
                'claimId' => 'eob001',
                'resultKey' => 'legacyCaseData'
            }
        );

        List<Object> subscribers =
            (List<Object>) response.get('legacyCaseData');
        System.assertEquals(1, subscribers.size());

        Map<String, Object> subscriber =
            (Map<String, Object>) subscribers[0];
        System.assertEquals('SUB-1', subscriber.get('subscriberId'));
        List<Object> interactions =
            (List<Object>) subscriber.get('interactions');
        System.assertEquals(1, interactions.size());

        Map<String, Object> interaction =
            (Map<String, Object>) interactions[0];
        System.assertEquals('INT-1', interaction.get('interactionId'));
        List<Object> intents =
            (List<Object>) interaction.get('serviceIntents');
        System.assertEquals(1, intents.size());
        System.assertEquals(
            'SI-1',
            ((Map<String, Object>) intents[0]).get('legacyId')
        );
    }

    @IsTest
    static void getCasesReturnsEmptyForNoMatchAndMissingInput() {
        FilteredLookupAction action = new FilteredLookupAction(
            new StubLoader(
                '[{"interactions":[{"serviceIntents":[' +
                '{"claims":["EOB001"]}]}]}]'
            )
        );

        for (String claimId : new List<String>{ 'NOT-FOUND', null }) {
            Map<String, Object> response =
                (Map<String, Object>) action.execute(
                    new Map<String, Object>{
                        '_action' => 'getCases',
                        'claimId' => claimId
                    }
                );
            System.assertEquals(
                0,
                ((List<Object>) response.get('results')).size()
            );
        }
    }
}
