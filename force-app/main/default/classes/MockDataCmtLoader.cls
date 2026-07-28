/**
 * @description Concrete loader: reads DataBody__c JSON from MockData__mdt by DeveloperName.
 *              SRP: only responsible for retrieval + deserialization.
 */
public with sharing class MockDataCmtLoader implements IMockDataLoader {

    @TestVisible private static final String CLASS_NAME = 'MockDataCmtLoader';

    @TestVisible
    private static Map<String, MockData__mdt> mockStore = new Map<String, MockData__mdt>();

    public List<Map<String, Object>> load(String strategyName) {
        MockData__mdt record = getRecord(strategyName);
        if (record == null) {
            throw new MockDataException(
                'No MockData__mdt record found with DeveloperName: ' + strategyName
            );
        }
        try {
            List<Object> raw = (List<Object>) JSON.deserializeUntyped(record.DataBody__c);
            List<Map<String, Object>> result = new List<Map<String, Object>>();
            for (Object item : raw) {
                Map<String, Object> fieldMap = (Map<String, Object>) item;
                // Inject sentinel so MockDataService.resolveObjectType avoids extra SOQL
                fieldMap.put('__objectType', record.ObjectType__c);
                result.add(fieldMap);
            }
            return result;
        } catch (Exception e) {
            throw new MockDataException(
                'Failed to parse DataBody__c for strategy "' + strategyName + '": ' + e.getMessage()
            );
        }
    }

    /**
     * @description Returns ParentLookupField__c for a batch of strategy names.
     *              Respects mockStore for test injection, falls back to SOQL in production.
     *              Called by DataFactory to resolve parent lookup fields without a
     *              separate SOQL query per seed.
     *
     * @param strategyNames  DeveloperNames of the MockData__mdt records to look up.
     * @return               Map of strategyName → ParentLookupField__c value (nulls excluded).
     */
    public Map<String, String> getParentLookupFields(Set<String> strategyNames) {
        Map<String, String> result = new Map<String, String>();
        Set<String> needsSoql = new Set<String>();

        for (String name : strategyNames) {
            if (Test.isRunningTest() && mockStore.containsKey(name)) {
                String field = mockStore.get(name).ParentLookupField__c;
                if (String.isNotBlank(field)) {
                    result.put(name, field);
                }
            } else {
                needsSoql.add(name);
            }
        }

        if (!needsSoql.isEmpty()) {
            for (MockData__mdt rec : [
                SELECT DeveloperName, ParentLookupField__c
                FROM MockData__mdt
                WHERE DeveloperName IN :needsSoql
                AND ParentLookupField__c != null
            ]) {
                result.put(rec.DeveloperName, rec.ParentLookupField__c);
            }
        }

        return result;
    }

    /**
     * @description Returns ParentSourceField__c for a batch of strategy names.
     *              Only populated when the child lookup references a derived field
     *              on the parent (e.g. PersonContactId) rather than the parent's Id.
     *              Respects mockStore for test injection.
     *
     * @param strategyNames  DeveloperNames of the MockData__mdt records to look up.
     * @return               Map of strategyName → ParentSourceField__c (blanks excluded).
     */
    public Map<String, String> getParentSourceFields(Set<String> strategyNames) {
        Map<String, String> result = new Map<String, String>();
        Set<String> needsSoql = new Set<String>();

        for (String name : strategyNames) {
            if (Test.isRunningTest() && mockStore.containsKey(name)) {
                String field = mockStore.get(name).ParentSourceField__c;
                if (String.isNotBlank(field)) {
                    result.put(name, field);
                }
            } else {
                needsSoql.add(name);
            }
        }

        if (!needsSoql.isEmpty()) {
            for (MockData__mdt rec : [
                SELECT DeveloperName, ParentSourceField__c
                FROM MockData__mdt
                WHERE DeveloperName IN :needsSoql
                AND ParentSourceField__c != null
            ]) {
                result.put(rec.DeveloperName, rec.ParentSourceField__c);
            }
        }

        return result;
    }

    /**
     * @description Returns full CMT records for a batch of strategy names.
     *              Used by DataFactory.TeardownPlan to load ObjectType__c,
     *              DataBody__c, and TeardownQueryField__c in one query.
     *              Respects mockStore for test injection.
     *
     * @param strategyNames  DeveloperNames to load.
     * @return               Map of strategyName → MockData__mdt (only found records included).
     */
    public Map<String, MockData__mdt> getCmtRecords(Set<String> strategyNames) {
        Map<String, MockData__mdt> result = new Map<String, MockData__mdt>();
        Set<String> needsSoql = new Set<String>();

        for (String name : strategyNames) {
            if (Test.isRunningTest() && mockStore.containsKey(name)) {
                result.put(name, mockStore.get(name));
            } else {
                needsSoql.add(name);
            }
        }

        if (!needsSoql.isEmpty()) {
            for (MockData__mdt rec : [
                SELECT DeveloperName, ObjectType__c, DataBody__c,
                       TeardownQueryField__c, SearchKeyPath__c, PageSize__c
                FROM MockData__mdt
                WHERE DeveloperName IN :needsSoql
            ]) {
                result.put(rec.DeveloperName, rec);
            }
        }

        return result;
    }

    private MockData__mdt getRecord(String strategyName) {
        if (Test.isRunningTest() && mockStore.containsKey(strategyName)) {
            return mockStore.get(strategyName);
        }
        List<MockData__mdt> records = [
            SELECT Id, DeveloperName, ObjectType__c, DataBody__c,
                   ParentLookupField__c, TeardownQueryField__c
            FROM MockData__mdt
            WHERE DeveloperName = :strategyName
            LIMIT 1
        ];
        return records.isEmpty() ? null : records[0];
    }
}