# MemberLookupAction — observed XHDev1 implementation (2026-10-26)

**Source:** user-provided screenshots of Salesforce Developer Console, ApexClass `MemberLookupAction.cls`, v670, Active, in XHDev1. This is a **transcription of visible code**, not an exported class and not evidence that the source exists in Git. Do not deploy this reconstructed excerpt.

## Observed code
```apex
public with sharing class MemberLookupAction implements ICallableAction {
    @TestVisible private static final String CLASS_NAME = 'MemberLookupAction';

    private final IMockDataLoader loader;

    @TestVisible
    public MemberLookupAction() {
        this.loader = new MockDataCmtLoader();
    }

    @TestVisible
    MemberLookupAction(IMockDataLoader loader) {
        this.loader = loader;
    }

    public Object execute(Map<String, Object> args) {
        // Mock path: filters MockData__mdt payload by MemberId, returns all members with that subscriberId
        // Implement member lookup logic here
        String memberId = (String) args.get('memberId');
        String source = (String) args.get('source'); // e.g. "BCBSMNMemberLookup"

        List<Map<String,Object>> family = new List<Map<String,Object>>();
        List<Map<String,Object>> all = loader.load(source);

        for (Map<String,Object> row : all) {
            if ((String) row.get('subscriberId') == memberId) {
                family.add(row);
            }
        }

        return new Map<String,Object> { 'members' => family };
    }
}
```

## Verified execution path (cross-checked with Git)
```
IPMemberLookup (XHDev1, active v1)
  GetMember Remote Action
    Remote Class = MockIntegrationGateway
    Remote Method = memberLookup
    Additional Input: memberId = %memberId%
    Additional Input: source = BCBSMNMemberLookup
  MockIntegrationGateway.getActionRegistry()
    memberLookup -> MemberLookupAction
  AbstractCallableGateway.invokeMethod()
    resolves MemberLookupAction and calls handler.execute(input)
    merges returned Map into output
  MemberLookupAction.execute()
    MockDataCmtLoader.load(source)
    filters rows by row.subscriberId == memberId
    returns { "members": [matching rows] }
  ResponseAction1 Send JSON Path = GetMember
```

## CS-1446 gap analysis
- **Verified current behavior:** subscriberId-only equality filter; source is existing `BCBSMNMemberLookup`. No first/last/DOB search visible.
- **Documented requirement (not implemented in observed code):** canonical Host response `submitted` and optional `adjudicated`; `HostMemberSearchV2` custom metadata; `mockKey` matching for member ID or demographics; mock/live routing.
- **Potential compatibility issue:** existing handler returns `members` array of flat rows, whereas canonical response entries contain nested segments. Existing downstream consumers must be checked before replacing shape.
- **Unknown:** `MockDataCmtLoader` implementation, exact metadata type/record values, downstream consumers, feature toggle, and whether other IP/version handles the new requirement.
- **Do not assume:** Jira's proposed `getDatabySource` is currently registered on `MockIntegrationGateway`; the Git registry currently lists `getFhirResource`, `memberLookup`, `claimLookup`, `getCases`.

## Next inspection
1. Read `MockDataCmtLoader` and `IMockDataLoader` from org or Git.
2. Inspect metadata `BCBSMNMemberLookup` and target `HostMemberSearchV2`.
3. Inspect downstream response consumption and any newer IP version.
4. Agree the compatibility/migration design before modifying handler or IP.

## Evidence and limitations
- Screenshots captured top and bottom of the class in Salesforce Developer Console on 2026-10-26.
- Only the visible code was transcribed; no source file was exported or deployed.
- This documentation is safe for future technical lookup but is not a substitute for current org verification.
