/** Sandbox support for CC_FeatureToggles. Dark Launch flags only. */
public with sharing class FeatureToggleEvalAction implements ICallableAction {
    public Object execute(Map<String,Object> args) {
        Organization orgInfo = [SELECT IsSandbox, OrganizationType FROM Organization LIMIT 1];
        Boolean nonProduction = orgInfo.IsSandbox || orgInfo.OrganizationType == 'Developer Edition';
        return new Map<String,Object>{'toggles' => evaluate(
            (String)args.get('featureKeys'), Feature_Toggle__mdt.getAll(), nonProduction)};
    }
    @TestVisible
    private static Map<String,Object> evaluate(String keys, Map<String,Feature_Toggle__mdt> records, Boolean nonProduction) {
        Map<String,Object> toggles = new Map<String,Object>();
        if (String.isBlank(keys)) return toggles;
        for (String value : keys.split(',')) {
            String key = value.trim();
            if (String.isBlank(key)) continue;
            Feature_Toggle__mdt config = records.get(key);
            Boolean enabled = false;
            if (config != null && config.Type__c == 'Dark Launch') {
                enabled = nonProduction ? config.SandboxToggle__c : config.ProdToggle__c;
            }
            toggles.put(key, enabled == true);
        }
        return toggles;
    }
}