public with sharing class MemberResolutionContext {
    public String memberId;
    public String claimNumber;
    public Id resolvedContactId;
    public String resolvedMemberId;
    public String error;
    public String softMemberId;

    public Boolean isResolved() { return resolvedContactId != null; }
    public Boolean hasError() { return String.isNotBlank(error); }

    public static Map<String,Object> getMap(Map<String,Object> m,String key) {
        if (m==null || !m.containsKey(key)) return null;
        Object val=m.get(key);
        return (val instanceof Map<String,Object>) ? (Map<String,Object>)val : null;
    }

    public static String getString(Map<String,Object> m,String key) {
        return m!=null && m.containsKey(key) ? String.valueOf(m.get(key)) : null;
    }
}