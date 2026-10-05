# IPCreateCase v15 evidence review

Reviewed the two screenshots added in commit `4e50b23`.

## Captured configuration

- Integration Procedure name: `IPCreateCase`; Type: `intakeWizard`; Version: `15`; Active: `Yes`.
- Visible structure includes `setInputs`, `provideraccountIdNeeded` with `providerId`, and `isHostMemberNeeded` with `GetHostMemberRecordType`.
- Following actions shown are `BuildHostMemberData`, `CreateHostMember` (appears greyed out; disabled status is not verified), `UpsertHostMember` (Remote Action), `DRPersonContactId`, `BuildCaseData`, and `CreateCase`.
- The visible procedure description references `DRLoadHostMember` and Case creation via `DRLoadCase`. Actual action properties and referenced configurations have not been captured.

## Interpretation and limits

The Host Member construction/upsert actions are candidates for the Account LOB assignment. `BuildCaseData` and the Case load mapping are candidates for the Case LOB assignment. The screenshots show structure, not their formulas, conditions, or mappings; they do not prove which action assigns either value or whether these actions ran in the supplied transaction.

## Next captures

1. `isHostMemberNeeded`: complete execution condition.
2. `BuildHostMemberData`: complete assignments/formulas and output mappings.
3. `UpsertHostMember`: remote class, method, additional input, and input/output mappings.
4. `BuildCaseData`: complete mappings/formulas, especially the Case LOB input path.
5. `CreateCase`: referenced Data Mapper and input/output mappings; then that mapper's `LOB__c` mapping/default.

If `UpsertHostMember` invokes Apex, capture that method's source next. Do not change or deploy this configuration based only on the action names.

## Seven additional screenshots reviewed (commit 5e65b5c)

- `isHostMemberNeeded` visibly tests that `memberAuth:accountId` is blank, `setInputs:membersearchenabled` is true, and `memberAuth:lastName` is not blank. The exact formula should be exported before implementation.
- `DRTransformToHostModel` maps input `lob` to output `hostMemberData:Line_of_Business__pc`. This is a direct mapping, not a visible constant assignment to Host.
- `UpsertHostMember` uses Remote Class `BCBSMNGateway`, Remote Method `upsertHost`.
- Its Additional Input shows `approach = flow`, `resultKey = memberData`, `HostMember = %BuildHostMemberData:hostMemberData%`, and `flowName = CreateOrUpdateHostMember`.
- `GetHostMemberRecordType` references `DRGetHostMemberRecordType`. That mapper extracts RecordType using DeveloperName and SobjectType input filters and outputs the Id to `HostRT:recordTypeId`. The screenshots do not show the filter input values.
- Existing repository reference example `BRIAN_GATEWAY_PATTERN_ORG_ENVIRONMENT_EXAMPLE.md` registers `upsertHost` to `invokeFlowAction`. It corroborates the routing pattern but is example code, not verified VDI runtime source.
- A read-only query found no `BCBSMNGateway` Apex class in connected `myProdOrg`; the VDI flow implementation cannot be inferred from that org.

### Narrowed investigation

The captured action is configured to pass Host Member data to flow `CreateOrUpdateHostMember`. The Account field receives its value from input `lob` through `DRTransformToHostModel`, unless downstream flow logic overrides it. These screenshots do not yet identify who sets `lob` to Host or who sets Case `LOB__c` to ITS Host.

Next capture: `CreateOrUpdateHostMember` Flow Create/Update Records and assignments for `Line_of_Business__pc`; `BuildHostMemberData` properties/inputs (including the source of `lob`); and `BuildCaseData` plus the `CreateCase` mapper's `LOB__c` mapping. No implementation or deployment has been performed for this investigation.
