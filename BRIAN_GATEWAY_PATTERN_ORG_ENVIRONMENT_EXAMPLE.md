# Brian-Style OmniStudio Gateway Pattern — Org Environment Example

This is a reference example for the BCBSMN OmniStudio callable gateway pattern discussed on Sep 16, 2026. It is intentionally saved as documentation/example code and is not meant to be deployed directly from this Markdown file.

## Pattern

```text
OmniStudio Integration Procedure
    -> BCBSMNGateway
    -> AbstractCallableGateway
    -> ICallableAction
    -> GetOrgEnvironmentAction
```

The gateway owns Callable / Vlocity Open Interface plumbing, action resolution, handler instantiation, output routing, and exception handling. Individual actions should contain only the business logic they own.

## Gateway registration

```apex
public with sharing class BCBSMNGateway extends AbstractCallableGateway {
    @TestVisible private static final String CLASS_NAME = 'BCBSMNGateway';

    protected override Map<String, String> getActionRegistry() {
        return new Map<String, String>{
            'memberLookup' => 'MemberLookupAction',
            'claimLookup' => 'filteredLookupAction',
            'findByReference' => 'FhirFindByReferenceAction',
            'findByReferences' => 'FhirFindByReferencesAction',
            'findContainedById' => 'FhirFindContainedByIdAction',
            'pivotByCode' => 'FhirPivotByCodeAction',
            'pickCoding' => 'FhirPickCodingAction',
            'bulkPickCoding' => 'FhirBulkPickCodingAction',
            'pickExtensionByUrl' => 'FhirPickExtensionByUrlAction',
            'bulkpickExtenstionByUrl' => 'FhirBulkPickExtensionByUrlAction',
            'bulkPivotByCode' => 'FhirBulkPivotByCodeAction',
            'pickEventDate' => 'FhirPickEventDateAction',
            'getSelectResources' => 'FhirPivotByFieldAction',
            'resolveAdjudicationCodes' => 'FhirBulkPivotAdjudicationCodesAction',
            'resolveSupportingInfo' => 'FhirPivotSupportingInfoAction',
            'selectWhereIn' => 'FhirSelectWhereInAction',
            'bulkSelectWhereIn' => 'FhirBulkSelectWhereInAction',
            'bulkPivotByField' => 'FhirBulkPivotByFieldAction',
            'resolveLineReasonCodes' => 'FhirResolveLineReasonCodesAction',
            'upsertHost' => 'invokeFlowAction',
            'getIsSandbox' => 'GetOrgEnvironmentAction'
        };
    }
}
```

Important: the registered handler class name must exactly match the Apex class name. Use `GetOrgEnvironmentAction`, not `getOrgEvironmentAction`.

## Action implementation

```apex
/**
 * Class Name      : GetOrgEnvironmentAction
 * Description     : Returns the current Salesforce org sandbox indicator through
 *                   the shared OmniStudio callable gateway pattern.
 */
public without sharing class GetOrgEnvironmentAction implements ICallableAction {

    public Object execute(Map<String, Object> args) {
        return getEnvironment();
    }

    private Map<String, Object> getEnvironment() {
        Organization orgInfo = [
            SELECT IsSandbox
            FROM Organization WITH SYSTEM_MODE
            LIMIT 1
        ];

        return new Map<String, Object>{
            'isSandbox' => orgInfo.IsSandbox
        };
    }
}
```

### Why this style

The previous `XH_OrgEnvironmentService implements Callable` approach duplicated Callable plumbing and action validation. `AbstractCallableGateway` already owns those responsibilities. The action therefore only implements `ICallableAction.execute(...)` and returns its result.

Because the action returns a `Map<String, Object>` and there is no domain-key override for `getIsSandbox`, `AbstractCallableGateway.putResult()` merges the map into the OmniStudio output. The resulting JSON contains:

```json
{
  "isSandbox": true
}
```

or:

```json
{
  "isSandbox": false
}
```

## Unit test

```apex
@IsTest
private class GetOrgEnvironmentActionTest {

    @IsTest
    static void testExecuteReturnsOrgEnvironment() {
        Organization orgInfo = [
            SELECT IsSandbox
            FROM Organization
            LIMIT 1
        ];

        GetOrgEnvironmentAction action = new GetOrgEnvironmentAction();

        Test.startTest();
        Object result = action.execute(new Map<String, Object>());
        Test.stopTest();

        System.assertNotEquals(
            null,
            result,
            'Result should not be null'
        );

        Map<String, Object> resultMap = (Map<String, Object>) result;

        System.assert(
            resultMap.containsKey('isSandbox'),
            'Result should contain isSandbox'
        );

        System.assertEquals(
            orgInfo.IsSandbox,
            (Boolean) resultMap.get('isSandbox'),
            'Action should return the current org IsSandbox value'
        );
    }
}
```

The old `testUnsupportedActionThrowsException` test does not belong in the action test anymore. Unknown-action validation is owned by `AbstractCallableGateway`.

## OmniStudio configuration

Use the gateway as the Remote Action entry point:

```text
Remote Class  : BCBSMNGateway
Remote Method : getIsSandbox
```

Do not configure the Integration Procedure to call `GetOrgEnvironmentAction` directly. The gateway resolves the action through `getActionRegistry()`.

## Design rule to reuse

For future OmniStudio callable work:

1. Add a small action class implementing `ICallableAction`.
2. Put business logic in `execute(...)` or a focused private helper.
3. Register the external action name and handler class in the appropriate gateway.
4. Let `AbstractCallableGateway` handle Callable, OmniStudio invocation, routing, and errors.
5. Unit-test the action directly; gateway-specific behavior belongs in gateway tests.
