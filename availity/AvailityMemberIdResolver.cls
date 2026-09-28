public with sharing class AvailityMemberIdResolver {
    @TestVisible
    private static Map<String, Object> mockIpOutput;

    public with sharing class DirectMemberIdResolver implements IMemberContactResolver {
        @TestVisible private ContactSelector selector = new ContactSelector();

        public void resolve(MemberResolutionContext ctx) {
            if (ctx.isResolved() || ctx.hasError()) return;
            List<Contact> matches = selector.findByMemberId(ctx.memberId);
            if (matches.size() == 1) {
                ctx.resolvedContactId = matches[0].Id;
                ctx.resolvedMemberId = ctx.memberId;
            } else if (matches.size() > 1) {
                ctx.error = 'Multiple contact references for a matching patient Id were found in Salesforce database.';
            } else if (matches.size() == 0) {
                ctx.softMemberId = ctx.memberId;
            }
        }
        public String getResolverName() { return 'DirectMemberIdResolver'; }
    }

    public with sharing class ClaimNumberIpResolver implements IMemberContactResolver {
        private final String MEMBER_LOOKUP_IP='CNC_ClaimDetails';
        private final String IP_IN_CLAIM_KEY='claimNumber';
        private final String IP_OUT_MEMBER_KEY='memberId';
        @TestVisible private ContactSelector selector = new ContactSelector();

        public void resolve(MemberResolutionContext ctx) {
            if (ctx.isResolved() || ctx.hasError()) return;
            if (String.isBlank(ctx.claimNumber)) return;
            String firstClaim=ctx.claimNumber.split(',')[0].trim();
            if (String.isBlank(firstClaim)) return;
            String memberIdFromApi=callMemberLookupIp(firstClaim,ctx);
            if (String.isBlank(memberIdFromApi)) return;
            List<Contact> matches=selector.findByMemberId(memberIdFromApi);
            if (matches.size()==1) {
                ctx.resolvedContactId=matches[0].Id;
                ctx.resolvedMemberId=memberIdFromApi;
            } else if (matches.size()>1) {
                ctx.error='Multiple contact references found for the member Id returned by the claim lookup ('+memberIdFromApi+').';
            }
        }

        private String callMemberLookupIp(String claimNumber,MemberResolutionContext ctx) {
            Map<String,Object> input=new Map<String,Object>{IP_IN_CLAIM_KEY=>claimNumber};
            Map<String,Object> ipOutput=(mockIpOutput!=null)?mockIpOutput:OmniStudioService.callIP(MEMBER_LOOKUP_IP,input);
            Map<String,Object> output=MemberResolutionContext.getMap(ipOutput,'IPResult');
            Map<String,Object> responsedata=MemberResolutionContext.getMap(output,'responsedata');
            Map<String,Object> claimHeader=MemberResolutionContext.getMap(responsedata,'claimHeader');
            String memberId=MemberResolutionContext.getString(claimHeader,IP_OUT_MEMBER_KEY);
            return (memberId==null)?null:String.valueOf(memberId);
        }
        public String getResolverName(){ return 'ClaimNumberIpResolver'; }
    }

    public with sharing class ContactSelector {
        public List<Contact> findByMemberId(String memberId) {
            if (String.isBlank(memberId)) return new List<Contact>();
            return [SELECT Id, AccountId FROM Contact WHERE Member_Id__c=:memberId OR AGP_ID__c=:memberId];
        }
    }
}