public with sharing class MemberContactResolutionService {
    @TestVisible private List<IMemberContactResolver> resolvers;

    public MemberContactResolutionService() {
        this.resolvers=buildResolvers();
    }

    @TestVisible
    private MemberContactResolutionService(List<IMemberContactResolver> customResolvers) {
        this.resolvers=customResolvers;
    }

    public MemberResolutionContext resolve(MemberResolutionContext ctx) {
        for (IMemberContactResolver resolver:resolvers) {
            if (ctx.isResolved() || ctx.hasError()) break;
            System.debug(LoggingLevel.INFO,'[MemberResolution] Trying: '+resolver.getResolverName());
            resolver.resolve(ctx);
        }
        return ctx;
    }

    private List<IMemberContactResolver> buildResolvers() {
        return new List<IMemberContactResolver>{
            new AvailityMemberIdResolver.DirectMemberIdResolver(),
            new AvailityMemberIdResolver.ClaimNumberIpResolver()
        };
    }
}