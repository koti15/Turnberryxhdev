# CS-2050 verified transform implementation — 2026-10-28

Supersedes the earlier single-member DRTransformHostMemberResponse draft for the authorized mock-path implementation. Org: Turnberry5 Developer Edition. IP intakeWizard/MemberLookup v1 remains inactive; shared CC/FeatureToggles v4 was Preview-tested and activated in this development org.

## Implemented and tested
- Existing GetCanonicalAPI -> MockIntegrationGateway.getDatabySource -> HostMemberSearchV2 -> memberSearchMockTransform -> conditional response pattern.
- Seventeen repeating mappings and four per-member fallback formulas. One flat row per person contains both submitted and adjudicated versions. No IP loop.
- Display fields prefer submitted, falling back to adjudicated. This is an implementation choice awaiting business/UI confirmation.
- Native LIST normalization keeps one and multiple members as arrays. A separately conditioned response returns {"members":[]} for no matches.
- Duplicate mock keys retain separate rows through supplied unique rowKey. This mapper preserves rowKey; it does not manufacture a globally unique identifier for live responses that omit one.
- Real org Preview verified TEST001 (2 rows), TEST002 (1 adjudicated-only row), NO_MATCH (empty array); booleans and both names preserved. FeatureToggleEvalActionTest: 2/2 methods passed.

## Package and provenance
MultiPack is derived from the actual org export. Org-specific IDs, saved preview payloads and disabled legacy GetMember/MockMemberData steps are removed from this sanitized deployment copy. Removing these disabled steps does not change the tested execution path. This sanitized import has not been re-imported into a second org.

New FeatureToggleEvalAction is a compatible **Dark Launch-only development implementation**, not Brian's original Apex source. Unknown or unsupported toggles fail closed. Non-production means Organization.IsSandbox or Developer Edition. It returns the toggles map needed by this IP; other optional wrapper outputs are not implemented. Only the three fields needed by this path are recreated, not the optional release/permission/setting schema from the screenshots.

## Dependencies / deployment order
1. Existing ICallableAction, AbstractCallableGateway, FeatureGateway (checkToggles -> FeatureToggleEvalAction), MockData__mdt, MockDataCmtLoader, MockDataException, IMockDataLoader, FilteredLookupAction and MockIntegrationGateway.
2. Deploy Feature_Toggle__mdt and the three included fields; deploy evaluator and test class. Create included usememberMockdata metadata record.
3. Seed MockData__mdt.HostMemberSearchV2 with tests/canonical-members.json as DataBody__c, ObjectType__c Member, Type Integration. No real member data.
4. Ensure MockIntegrationGateway registry has getDatabySource -> FilteredLookupAction. Keep existing mappings.
5. Import MultiPack, run Apex and Preview tests, activate tested CC_FeatureToggles wrapper as appropriate. Do not activate member IP until remaining integration checks below pass.

## Remaining story integration checks
The imported UseLiveResponse block is empty. No approved live API endpoint/action or credentials were supplied, so live retrieval and toggle-off behavior are not implemented or claimed tested. FlexCard selection/modal integration is not yet verified. Member IP remains inactive for those reasons. This is verified transformation and mock-path work, not full-story closure or production deployment.
