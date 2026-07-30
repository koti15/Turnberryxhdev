public with sharing class FilteredLookupAction implements ICallableAction {
    @TestVisible private static final String CLASS_NAME = 'FilteredLookupAction';
    @TestVisible private static final String DEFAULT_RESULT_KEY = 'results';

    private final IMockDataLoader loader;

    public FilteredLookupAction() {
        this(new MockDataCmtLoader());
    }

    @TestVisible
    FilteredLookupAction(IMockDataLoader loader) {
        this.loader = loader;
    }

    public Object execute(Map<String, Object> args) {
        String source = (String) args.get('source');
        String matchField = (String) args.get('matchField');
        Object matchValue = args.get('matchValue');
        String resultKey = (String) args.get('resultKey');
        if (String.isBlank(resultKey)) resultKey = DEFAULT_RESULT_KEY;

        // getCases requires a nested claim-list lookup. Other actions continue
        // through the original generic lookup path below without modification.
        if ('getCases'.equalsIgnoreCase((String) args.get('_action'))) {
            String claimId = (String) args.get('claimId');
            if (String.isBlank(claimId)) {
                claimId = (String) matchValue;
            }
            return new Map<String, Object>{
                resultKey => filterLegacyCases(loader.load(source), claimId)
            };
        }

        Boolean noFilter = String.isBlank(matchField);

        List<Map<String, Object>> hits = new List<Map<String, Object>>();
        for (Map<String, Object> record : loader.load(source)) {
            if (noFilter || valuesMatch(matchValue, record.get(matchField))) {
                hits.add(record);
            }
        }

        return new Map<String, Object>{ resultKey => hits };
    }

    private List<Map<String, Object>> filterLegacyCases(
        List<Map<String, Object>> subscribers,
        String claimId
    ) {
        List<Map<String, Object>> filtered = new List<Map<String, Object>>();
        if (String.isBlank(claimId)) return filtered;

        for (Map<String, Object> subscriber : subscribers) {
            List<Object> matchingInteractions = new List<Object>();
            for (Object interactionValue :
                asList(subscriber.get('interactions'))) {
                Map<String, Object> interaction = asMap(interactionValue);
                if (interaction == null) continue;

                List<Object> matchingIntents = new List<Object>();
                for (Object intentValue :
                    asList(interaction.get('serviceIntents'))) {
                    Map<String, Object> intent = asMap(intentValue);
                    if (intent != null &&
                        containsClaim(intent.get('claims'), claimId)) {
                        matchingIntents.add(intent);
                    }
                }

                if (!matchingIntents.isEmpty()) {
                    Map<String, Object> filteredInteraction =
                        new Map<String, Object>();
                    filteredInteraction.putAll(interaction);
                    filteredInteraction.put(
                        'serviceIntents',
                        matchingIntents
                    );
                    matchingInteractions.add(filteredInteraction);
                }
            }

            if (!matchingInteractions.isEmpty()) {
                Map<String, Object> filteredSubscriber =
                    new Map<String, Object>();
                filteredSubscriber.putAll(subscriber);
                filteredSubscriber.put(
                    'interactions',
                    matchingInteractions
                );
                filtered.add(filteredSubscriber);
            }
        }
        return filtered;
    }

    private Boolean containsClaim(Object claimValues, String claimId) {
        for (Object claimValue : asList(claimValues)) {
            if (claimMatches(claimValue, claimId)) {
                return true;
            }
        }
        return false;
    }

    private Boolean claimMatches(Object claimValue, String claimId) {
        if (claimValue == null) return false;

        Map<String, Object> claim = asMap(claimValue);
        if (claim != null) {
            return claimId.equalsIgnoreCase(String.valueOf(claim.get('id'))) ||
                claimId.equalsIgnoreCase(String.valueOf(claim.get('text')));
        }

        return claimId.equalsIgnoreCase(String.valueOf(claimValue));
    }

    private List<Object> asList(Object value) {
        try {
            return (List<Object>) value;
        } catch (Exception ignored) {
            return new List<Object>();
        }
    }

    private Map<String, Object> asMap(Object value) {
        try {
            return (Map<String, Object>) value;
        } catch (Exception ignored) {
            return null;
        }
    }

    private Boolean valuesMatch(Object expected, Object actual) {
        if (expected == null) return actual == null;
        if (actual == null) return false;
        return expected.equals(actual);
    }
}
