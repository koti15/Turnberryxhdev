# CS-1347 Implementation Record

This is the technical source of truth for CS-1347. Call statements and reviewer
decisions are recorded in the sprint `CALL_REVIEW_NOTES.md`; daily status is in
`DAILY_STANDUP.md`.

## Objective and status

Given a Claim ID, return every matching legacy ServiceIntent as one item in a
unified top-level `cases[]` array.

The final legacy path was deployed and verified on July 28, 2026 in the shared
Developer Edition configured as `myProdOrg`. One-result, multiple-result,
no-match, and mixed parent/child-note scenarios pass.

## Final flow

```text
Claims_PreMigrationCaseLookup
  getLegacyCasesMock
    MockIntegrationGateway.getCases
      FilteredLookupAction.getCases
  normalizeLegacyCases
    NormalizeLegacyCasesAction
  liftCases
    DRTransformPremigrationcasesCompatible
  ensureCasesArray
    EnsureCasesArrayAction
  BuildMatchedResponse
```

The existing empty response path returns exactly `{"cases":[]}`.

## Unified output

Every item contains the agreed superset fields:

```text
caseNumber, caseKey, sourceSystem, subject, workBasket,
lastActivityDate, status, isClosed, description, memberId, provider,
legacyId, mea, interactionCreatedAt, interactionClosedAt,
claims[], notes[], history[]
```

- Each matching ServiceIntent becomes one case.
- Parent Interaction scalar values are repeated on its child cases.
- `caseNumber`, `caseKey`, and `legacyId` use the legacy ServiceIntent ID.
- `isClosed` is derived case-insensitively from `status == "Closed"`.
- Legacy scalar claim IDs become claim objects. Fields unavailable in current
  mock data (`claimSubtype`, `claimStatus`, `claimReceivedDate`) are null.
- Child notes and a nonblank parent Interaction note are merged into one
  `{when, author, text}` collection.
- `history` is an empty array when absent from the mock source.
- `provider` is the provider ID when present; otherwise it is null.

## Why a small normalization action is present

The compatible Data Mapper correctly expands ServiceIntents and repeats parent
scalars, but direct mappings of parent and child notes do not append into one
clean array. Brian's review allowed preprocessing, two stages, or a small
normalization utility when OmniStudio could not reliably merge collections.

`NormalizeLegacyCasesAction` performs only that collection-shape work. The Data
Mapper remains responsible for final field mapping. `EnsureCasesArrayAction`
handles the older runtime's single-row collapse so `cases` is always an array.

No transformation logic was added to `FilteredLookupAction`, and its existing
generic behavior was not changed in this closure.

## Data Mapper

| Setting | Value |
|---|---|
| Name | `DRTransformPremigrationcasesCompatible` |
| Type | Transform |
| Active | Yes |
| Compatible designer | Yes (`IsManagedUsingStdDesigner = false`) |
| Input node | `normalizedLegacyCaseData` |
| Output node | `cases` |

The existing compatible mapper was updated in place with 19 unified
scalar/collection mappings. The exact active artifact exported from the org is
under `datapacks/CS-1347-compatible-transform`.

`DRTransformPremigrationcases` remains unchanged. The separately created
`DRTransformPremigrationUnifiedCases` is no longer referenced by this
Integration Procedure.

## Verified behavior

| Scenario | Result |
|---|---|
| `EOB006` | Two unified cases (`SI-ENCP-2201001`, `SI-CSD-3317001`) |
| `EOB001` | One case and `cases` remains an array |
| `EOB004` | Child notes plus parent Interaction note in one ordered array |
| Unknown claim | Exactly `{"cases":[]}` |

The latest focused deployment ran 10 tests with 0 failures. Final anonymous
Apex Integration Procedure checks compiled and executed successfully.

## Components to promote

1. `MockIntegrationGateway.cls` (two new routing registrations only)
2. `NormalizeLegacyCasesAction.cls` and its test
3. `EnsureCasesArrayAction.cls` and its test
4. DataRaptor `DRTransformPremigrationcasesCompatible`
5. Integration Procedure `Claims_PreMigrationCaseLookup`
6. Required `LegacyCases` mock Custom Metadata where applicable

Deploy the exported DataPack and rebuilt Integration Procedure; do not manually
copy only individual Data Mapper lines because compiled metadata must align.

## Repository references

```text
force-app/main/default/classes/NormalizeLegacyCasesAction.cls
force-app/main/default/classes/EnsureCasesArrayAction.cls
force-app/main/default/classes/MockIntegrationGateway.cls
datapacks/CS-1347-compatible-transform
datapacks/CS-1347-expanded/IntegrationProcedure/Claims_PreMigrationCaseLookup
datapacks/CS-1347/Claims_PreMigrationCaseLookup.json
scripts/verify-cs1347-unified-transform.apex
scripts/verify-cs1347-unified-scenarios.apex
scripts/verify-cs1347-ip.apex
scripts/update-cs1347-compatible-transform.apex
```

## Still outside CS-1347

- Quaser's inactive consolidation Integration Procedure
- Salesforce Case-source transformation
- FlexCard modification
- Live legacy-service integration
- Refactoring the generic filtered-lookup strategy
