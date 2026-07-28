/**
 * @description OmniStudio callable gateway for FHIR mock integration.
 *              Extends AbstractCallableGateway from OmniCallableFramework.
 *              Deploy to orgs with OmniStudio installed only.
 *
 *              IP Remote Action class:  MockIntegrationGateway
 *              Supported methods:
 *                getFhirResource  — search or single-resource fetch
 */
public with sharing class MockIntegrationGateway extends AbstractCallableGateway {

    @TestVisible private static final String CLASS_NAME = 'MockIntegrationGateway';

    @TestVisible
    override protected Map<String, String> getActionRegistry() {
        return new Map<String, String>{
            'getFhirResource' => 'GetFhirResourceAction',
            'memberLookup' => 'MemberLookupAction',
            'claimLookup' =>    'FilteredLookupAction',
            'getCases' => 'FilteredLookupAction'
        };
    }
}
