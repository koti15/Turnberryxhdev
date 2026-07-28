# CS-1347 Implementation Record

This is the technical source of truth for CS-1347. Update this file when the
design, implementation, deployment state, or verified behavior changes.

For meeting transcripts, decisions, and follow-up questions, use the sprint
[`CALL_REVIEW_NOTES.md`](sprints/sprint15_2026-07-27/CALL_REVIEW_NOTES.md).
For the short daily update, use the sprint
[`DAILY_STANDUP.md`](sprints/sprint15_2026-07-27/DAILY_STANDUP.md).

## Story objective

Given a Claim ID, retrieve related pre-migration cases from the nested legacy
mock payload and return a normalized `cases` array.

## Final status

Verified working end to end on July 28, 2026, in the Salesforce Developer
Edition configured locally as both `myProdOrg` and `turnberryProd`.

- A matching claim returns all related transformed cases.
- A nonmatching or missing claim returns `{"cases":[]}`.
- Existing generic users of `FilteredLookupAction` retain their original
  behavior.
- Four focused Apex regression tests pass.

## Final request flow

```text
Claims_PreMigrationCaseLookup
  getLegacyCasesMock
    MockIntegrationGateway.getCases
      FilteredLookupAction
        MockDataCmtLoader
          MockData__mdt.LegacyCases
  HasLegacyCaseData
    liftCases
      DRTransformPremigrationcasesCompatible
    BuildMatchedResponse
  emptyCases
  BuildEmptyResponse
```

## Why the generic lookup was insufficient

The original generic lookup compares one field directly on each top-level
record:

```text
expected.equals(record.get(matchField))
```

The requested claim is not a top-level scalar field. It is nested here:

```text
subscriber
  interactions[]
    serviceIntents[]
      claims[]
```

A scalar claim such as `EOB006` also cannot be directly equal to a list such as
`["EOB006", "EOB007", "EOB008"]`. The implementation therefore adds an isolated
`getCases` path instead of changing the generic comparison behavior.

## FilteredLookupAction change

Only requests with `_action = getCases` use the new nested-filtering path.
`MockIntegrationGateway` supplies `_action` when it routes the `getCases`
method.

The new path:

1. Reads `claimId`, with `matchValue` retained as a compatibility fallback.
2. Loads the requested mock-data source.
3. Traverses `interactions`, `serviceIntents`, and each intent's `claims` list.
4. Keeps only ServiceIntents containing the requested claim.
5. Keeps only Interactions that still contain a matching ServiceIntent.
6. Keeps the original subscriber/interaction/service-intent structure for the
   Data Mapper.
7. Returns an empty list when the claim is blank or has no matches.

The class deliberately does not flatten or transform the response. All calls
other than `getCases` continue through the original generic lookup path, and
the original exact-equality `valuesMatch` behavior is unchanged.

## Data Mapper

| Setting | Value |
|---|---|
| Name | `DRTransformPremigrationcasesCompatible` |
| Type | Transform |
| Input | JSON |
| Output | JSON |
| Active | Yes |
| Team-compatible designer | Yes (`IsManagedUsingStdDesigner = false`) |

The Data Mapper converts the filtered nested payload into the final flat
`cases` contract. It contains these ten mappings:

| Input | Output |
|---|---|
| `legacyCaseData:interactions:serviceIntents:legacyId` | `cases:case` |
| `legacyCaseData:interactions:serviceIntents:sourceSystem` | `cases:system` |
| `legacyCaseData:interactions:createdAt` | `cases:opened` |
| `legacyCaseData:interactions:serviceIntents:status` | `cases:status` |
| `legacyCaseData:interactions:serviceIntents:name` | `cases:category` |
| `legacyCaseData:interactions:serviceIntents:memberId` | `cases:memberId` |
| `legacyCaseData:interactions:meaName` | `cases:mea` |
| `legacyCaseData:interactions:serviceIntents:description` | `cases:description` |
| `legacyCaseData:interactions:serviceIntents:claims` | `cases:claims` |
| `legacyCaseData:interactions:serviceIntents:notes` | `cases:notes` |
| `legacyCaseData:interactions:interactionId` | `cases:interactionId` |

This mapper is a separate compatible clone. The previous
`DRTransformPremigrationcases` mapper remains unchanged.

Brian's July 28 review also requested that an Interaction-level note be added
to the final `notes[]` collection. That enrichment is not marked complete
because the final live-service note-object contract remains unconfirmed.

## Integration Procedure

| Setting | Value |
|---|---|
| Type | `Claims` |
| SubType | `PreMigrationCaseLookup` |
| Name | `PreMigrationCaseLookup` |
| Key | `Claims_PreMigrationCaseLookup` |
| Input | `claimId` |
| Output | `cases` array |

### getLegacyCasesMock

```text
Remote Class: MockIntegrationGateway
Remote Method: getCases
Send Only Additional Input: true
```

```json
{
  "source": "LegacyCases",
  "claimId": "%claimId%",
  "resultKey": "legacyCaseData"
}
```

### liftCases

`liftCases` is a DataRaptor Transform Action, not a Set Values element.

```text
bundle = DRTransformPremigrationcasesCompatible
legacyCaseData = =%getLegacyCasesMock:legacyCaseData%
Send Only Additional Input = true
```

### Responses

Matched response:

```text
cases = %liftCases:cases%
```

No-match response:

```json
{
  "cases": []
}
```

The final OmniStudio DataPack must be rebuilt and deployed after an element
configuration changes. Direct record edits alone may not refresh the compiled
Integration Procedure metadata.

## Verified results

Input:

```json
{
  "claimId": "EOB006"
}
```

Verified case identifiers:

```text
SI-ENCP-2201001
SI-CSD-3317001
```

No-match input:

```json
{
  "claimId": "EOB-NOT-FOUND"
}
```

Verified response:

```json
{
  "cases": []
}
```

## Regression coverage

`FilteredLookupActionTest` verifies:

1. Existing generic scalar and no-filter behavior is preserved.
2. Existing generic exact-equality behavior is preserved.
3. `getCases` keeps only matching nested ServiceIntents.
4. No-match and missing-input requests return an empty list.

Final result: 4 tests run, 4 passed.

The compatible-transform verification additionally asserts the two expected
case identifiers and both parent `interactionId` values.

The end-to-end verification script also asserts both expected case IDs and the
typed empty array:

```text
scripts/verify-cs1347-ip.apex
```

## Components to deploy to another org

1. `FilteredLookupAction.cls`
2. `FilteredLookupActionTest.cls`
3. DataRaptor `DRTransformPremigrationcasesCompatible`
4. Integration Procedure `Claims_PreMigrationCaseLookup`
5. Required `LegacyCases` mock Custom Metadata, if it is not already present

No additional Apex implementation class is required for the transformation.

## Repository references

```text
force-app/main/default/classes/FilteredLookupAction.cls
force-app/main/default/classes/FilteredLookupActionTest.cls
datapacks/CS-1347-expanded/IntegrationProcedure/Claims_PreMigrationCaseLookup
datapacks/CS-1347/Claims_PreMigrationCaseLookup.json
datapacks/CS-1347/deploy.yaml
datapacks/CS-1347-compatible-transform
scripts/verify-cs1347-getcases.apex
scripts/verify-cs1347-transform.apex
scripts/verify-cs1347-compatible-transform.apex
scripts/verify-cs1347-ip.apex
```

## Out of scope

- Quaser's inactive consolidation Integration Procedure
- `DRTransformRelatedCases`
- Salesforce Case consolidation
- FlexCard changes
- Live legacy-service integration
- Changes to existing generic filtered-lookup semantics
