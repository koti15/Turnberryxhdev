List<String> claimIds = new List<String>{
    'EOB006',
    'EOB001',
    'EOB004',
    'EOB-NOT-FOUND'
};
for (String claimId : claimIds) {
    Map<String, Object> response =
        (Map<String, Object>)
            omnistudio.IntegrationProcedureService.runIntegrationService(
                'Claims_PreMigrationCaseLookup',
                new Map<String, Object>{ 'claimId' => claimId },
                new Map<String, Object>()
            );
    System.debug(
        LoggingLevel.ERROR,
        'CS1347_SIMPLE_' + claimId + '=' + JSON.serialize(response)
    );
}
