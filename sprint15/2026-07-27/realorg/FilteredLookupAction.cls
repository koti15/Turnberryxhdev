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

        Boolean noFilter = String.isBlank(matchField);

        List<Map<String, Object>> hits = new List<Map<String, Object>>();
        for (Map<String, Object> record : loader.load(source)) {
            if (noFilter || valuesMatch(matchValue, record.get(matchField))) {
                hits.add(record);
            }
        }

        return new Map<String, Object>{ resultKey => hits };
    }

    private Boolean valuesMatch(Object expected, Object actual) {
        if (expected == null) return actual == null;
        if (actual == null) return false;
        return expected.equals(actual);
    }
}
