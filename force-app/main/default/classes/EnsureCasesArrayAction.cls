/**
 * Enforces the unified response contract when DataRaptor collapses a
 * single-row output object instead of returning a one-item array.
 */
public with sharing class EnsureCasesArrayAction implements ICallableAction {

    public Object execute(Map<String, Object> args) {
        Object value = args == null ? null : args.get('cases');
        List<Object> cases = new List<Object>();
        if (value instanceof List<Object>) {
            cases.addAll((List<Object>) value);
        } else if (value != null && String.valueOf(value) != '') {
            cases.add(value);
        }
        return new Map<String, Object>{ 'cases' => cases };
    }
}
