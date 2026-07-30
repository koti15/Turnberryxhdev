# CS-1347 Implementation Record

This is the technical source of truth for CS-1347.

## Latest status after Brian review - July 29, 2026

This section supersedes the earlier notes below that referenced restoring the
mock to purely scalar/raw claim and history values.

Current active flow:

```text
getLegacyCasesMock
→ FilteredLookupAction getCases
→ liftCases (LegacyTransformCasesV2)
→ BuildMatchedResponse
```

Brian's latest direction allowed the mock payload to represent the expected
live-service contract for the missing case details. `MockData.LegacyCases` now
keeps the same subscriber / Interaction / ServiceIntent structure, but each
ServiceIntent now includes:

- `claims[]` as objects with `id`, `claimSubtype`, `claimStatus`, and
  `claimReceivedDate`.
- `history[]` as objects with `when`, `owner`, and `workBasket`.

The history values are derived from existing mock fields:

- `history.when` = ServiceIntent `lastActivityDate`
- `history.owner` = Interaction `meaName`
- `history.workBasket` = ServiceIntent `workBasket`

Notes were not over-faked. The existing ServiceIntent `notes[]` strings remain
as-is; Brian's note-merge discussion remains a follow-up if the final consumer
requires Interaction-level notes and ServiceIntent notes to be merged into a
single normalized note-object array.

`FilteredLookupAction.getCases` was updated only for lookup compatibility after
`claims[]` became object-shaped. It still matches the older scalar claim strings
and now also matches claim objects by `id` or `text`. This is not an Apex
transformation step.

`LegacyTransformCasesV2` is called by active IP version 19 with:

- `sendJSONPath: getLegacyCasesMock:legacyCaseData`
- `sendJSONNode: legacyCases`

The Data Mapper maps `legacyCases:interactions:serviceIntents:history`
directly to `cases:history`. The earlier `LIST()` default workaround is no
longer the current target because history now exists in mockdata.

Validated in `turnberryProd`:

- `EOB006` returns two cases.
- `EOB001` and `EOB004` return matched cases.
- Unknown claim returns exactly `{"cases":[]}`.
- `EOB004` includes object-shaped `claims[]`, `history[]`, and existing
  `notes.when`, `notes.author`, `notes.text`.

## Current decision

Keep the implementation simple and aligned with Brian's preference:

```text
getLegacyCasesMock
→ liftCases (DRTransformPremigrationcasesv2)
→ BuildMatchedResponse
```

The previously added `NormalizeLegacyCasesAction` and
`EnsureCasesArrayAction` were removed from the IP, Apex, gateway registry, and
repository on July 28, 2026.

On July 29, 2026, `MockData.LegacyCases` was restored to the original raw
API-style payload from git commit `865ec61`. The implementation no longer
depends on changing the mock JSON to make the DataRaptor output look complete.

## What the existing DataRaptor now does

`DRTransformPremigrationcasesv2` reads
`legacyCaseData:interactions:serviceIntents` directly. Each matching
ServiceIntent becomes a case and parent Interaction scalars are repeated.

Mapped output fields:

```text
caseNumber, caseKey, sourceSystem, subject, workBasket,
lastActivityDate, status, isClosed, description, memberId, provider, legacyId,
mea, interactionId, interactionCreatedAt, interactionClosedAt,
claims, notes, history
```

`caseNumber`, `caseKey`, and `legacyId` use the ServiceIntent legacy ID.
The mapper is active and uses the compatible older designer
(`IsManagedUsingStdDesigner = false`).

## Verified output with original mock payload

- `EOB006`: two cases (`SI-ENCP-2201001`, `SI-CSD-3317001`)
- `EOB001`: one matching ServiceIntent
- `EOB004`: one matching ServiceIntent
- unknown claim: exactly `{"cases":[]}`
- Parent Interaction scalar fields repeat on each matched case.
- Raw ServiceIntent `claims[]` is preserved so claim IDs are not lost.

## Original mock contract

The LegacyCases mock now matches the first/source API-style payload:

- `claims[]` is a scalar string array used by `FilteredLookupAction`.
- `notes[]` is a scalar string array at both Interaction and ServiceIntent
  levels.
- `isClosed`, `history`, `normalizedClaims`, and note object fields are not
  present in the raw mock.

## Remaining older-runtime behavior

- One transformed case is returned as a `cases` object; multiple cases are an
  array. Guaranteeing a singleton array still requires IP processing or code.
- The older DataRaptor preserves raw `claims[]` and `notes[]` arrays, but it
  does not reliably convert each string into the unified object shape.
- Parent Interaction notes are not appended into each ServiceIntent's
  `notes[]` collection by direct mapping.
- `isClosed` and empty `history[]` are absent because the raw mock does not
  provide those fields and the simplified IP has no preprocessing step.
- These behaviors are not hidden behind unapproved Apex or altered mockdata.

## Components to promote

1. Existing `FilteredLookupAction.cls` and test
2. Existing `MockIntegrationGateway.cls` without normalization registrations
3. Active DataRaptor `DRTransformPremigrationcasesv2`
4. Simplified Integration Procedure `Claims_PreMigrationCaseLookup`
5. Original/raw `LegacyCases` mock Custom Metadata

## Repository references

```text
datapacks/CS-1347-compatible-transform
datapacks/CS-1347-expanded/IntegrationProcedure/Claims_PreMigrationCaseLookup
datapacks/CS-1347/Claims_PreMigrationCaseLookup.json
scripts/verify-cs1347-simple-ip.apex
datapacks/CS-1347-user-transform
datapacks/CS-1347-premigration-v2
```

## User-created transform reference

`DRTransformPremigrationcasesv1`, modified in the shared org on July 29, 2026,
was exported to `datapacks/CS-1347-user-transform`. It is active, uses the
compatible older designer, and its 19 input/output mappings are identical to
`DRTransformPremigrationcasesCompatible`. It is retained as a separate
reference and is not connected to the IP by this retrieval.

`LegacyTransformCasesV2`, also modified in the shared org on July 29, was
exported separately to `datapacks/CS-1347-legacy-transform-v2`. Initial
inspection found:

- malformed Expected Output JSON caused by a trailing comma in `notes[]`;
- input root `legacyCases` instead of the IP's `legacyCaseData`;
- duplicate `caseNumber` and `notes:text` mappings;
- `interactionId` incorrectly mapped to `legacyId`;
- output `sfKey` instead of the agreed `caseKey`;
- missing provider, interaction closed date, and direct normalized-collection
  mappings.

Those issues were corrected on July 29. V2 now contains the validated 19
unified mappings, uses `legacyCaseData`, has valid sample/expected JSON, is
active, and is connected to `liftCases` in active IP version 15.

The corrected mapper was then copied to the unique final name
`DRTransformPremigrationcasesv2` because `DRTransformPremigrationcasesv1`
already existed. Active IP version 16 uses the final v2 name. The inactive
`LegacyTransformCasesV2` remains only as rollback/reference.

## Outside CS-1347

- Quaser's inactive consolidation IP
- Salesforce Case-source transformation
- FlexCard modification
- Live legacy-service integration
- Generic filtered-lookup refactoring

## July 29 runtime validation after DR Preview comparison

Validated `DRTransformPremigrationcases` through Apex with two input shapes:

- Runtime mock/IP input uses scalar arrays:
  - `claims: ["EOB004"]`
  - `notes: ["..."]`
- DR Preview/sample input uses object arrays:
  - `claims: [{ "text": "EOB001" }]`
  - `notes: [{ "text": "..." }]`

Result:

- With preview-shaped object notes, `DRTransformPremigrationcases` emits
  `notes` objects with `when`, `author`, and `text`.
- With runtime scalar string notes, `DRTransformPremigrationcases` emits raw
  string notes. The Data Mapper does not dynamically wrap each string into a
  `{ text }` object by direct mappings.

Deployed org change:

- Active IP `Claims_PreMigrationCaseLookup` response action
  `BuildMatchedResponse` was changed from:
  - `legacycases: %liftCases:cases%`
- to:
  - `cases: %liftCases:cases%`

Validation:

- Apex validation confirmed the active IP now returns root `cases`.
- Apex validation also confirmed the remaining difference from DR Preview is
  the source input shape before `liftCases`, not the final response node.

## July 29 LegacyTransformCasesV2 missing-field fix

After the user imported active IP version 19, `Claims_PreMigrationCaseLookup`
started using `LegacyTransformCasesV2` with:

- `sendJSONPath: getLegacyCasesMock:legacyCaseData`
- `sendJSONNode: legacyCases`

The IP-to-DR wiring worked, but Apex validation showed missing/misaligned fields:

- `caseKey` was missing because the mapper had duplicate `caseNumber` rows.
- `legacyId` incorrectly came from Interaction `interactionId`.
- `claims` was missing because the mapper expected `claims:text`, while runtime
  mock data has scalar `claims[]`.
- `notes.text` was missing because the mapper expected `notes:text`, while
  runtime mock data has scalar `notes[]`.
- `history` was missing because runtime mock data has no history node.

Applied mapper-only changes to `LegacyTransformCasesV2`:

- Changed one duplicate `caseNumber` output to `cases:caseKey`.
- Changed `cases:legacyId` input from Interaction `interactionId` to
  ServiceIntent `legacyId`.
- Changed claims mapping from `claims:text -> cases:claims:id` to
  `claims -> cases:claims`.
- Changed one notes mapping from `notes:text -> cases:notes:text` to
  `notes -> cases:notes:text`.
- Added default `[]` on the `cases:history` mapping.

Validated result from active IP version 19 for `EOB004`:

- `caseKey` is present.
- `legacyId` is corrected to `SI-ENCP-1102001`.
- `claims` is present.
- `notes.when`, `notes.author`, and `notes.text` are present.
- `history` is present as the default string value `"[]"`.
- Follow-up changed `history` to a true empty JSON array by using a Data Mapper
  formula:
  - `FormulaExpression: LIST()`
  - `FormulaResultPath: historyDefault`
  - `InputFieldName: historyDefault`
  - `OutputFieldName: cases:history`
  - `OutputFieldFormat: List<Map>`

Known remaining OmniStudio shape caveat:

- Because runtime `notes[]` and `claims[]` are scalar string arrays, the mapper
  emits `notes.text` as an array under one note object and `claims` as a raw
  string array. Producing one object per note/claim still requires an
  object-shaped source node before the mapper or a preprocessing step.
