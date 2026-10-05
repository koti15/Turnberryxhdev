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
