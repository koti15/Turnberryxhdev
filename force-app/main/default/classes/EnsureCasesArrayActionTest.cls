@IsTest
private class EnsureCasesArrayActionTest {

    @IsTest
    static void wrapsSingletonAndPreservesListsAndEmptyValues() {
        EnsureCasesArrayAction action = new EnsureCasesArrayAction();

        Map<String, Object> singleton =
            (Map<String, Object>) action.execute(
                new Map<String, Object>{
                    'cases' => new Map<String, Object>{ 'caseKey' => 'A' }
                }
            );
        System.assertEquals(
            1,
            ((List<Object>) singleton.get('cases')).size()
        );

        Map<String, Object> multiple =
            (Map<String, Object>) action.execute(
                new Map<String, Object>{
                    'cases' => new List<Object>{
                        new Map<String, Object>{ 'caseKey' => 'A' },
                        new Map<String, Object>{ 'caseKey' => 'B' }
                    }
                }
            );
        System.assertEquals(
            2,
            ((List<Object>) multiple.get('cases')).size()
        );

        Map<String, Object> empty =
            (Map<String, Object>) action.execute(
                new Map<String, Object>{ 'cases' => null }
            );
        System.assertEquals(
            0,
            ((List<Object>) empty.get('cases')).size()
        );
    }

    @IsTest
    static void gatewayRoutesEnsureCasesArray() {
        Map<String, Object> output = new Map<String, Object>();
        Boolean succeeded = new MockIntegrationGateway().invokeMethod(
            'ensureCasesArray',
            new Map<String, Object>{
                'cases' => new Map<String, Object>{ 'caseKey' => 'A' }
            },
            output,
            new Map<String, Object>()
        );
        System.assertEquals(true, succeeded, JSON.serialize(output));
        System.assertEquals(
            1,
            ((List<Object>) output.get('cases')).size()
        );
    }
}
