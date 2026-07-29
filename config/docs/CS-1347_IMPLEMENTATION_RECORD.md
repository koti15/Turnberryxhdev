# CS-1347 Implementation Record

This is the technical source of truth for CS-1347.

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

## Verified output

- `EOB006`: two cases (`SI-ENCP-2201001`, `SI-CSD-3317001`)
- `EOB001`: one case
- `EOB004`: structured child notes plus the Interaction note
- unknown claim: exactly `{"cases":[]}`
- `FilteredLookupActionTest`: 4 passed, 0 failed
- DataRaptor and IP DataPacks: deployed and activated successfully

## Normalized mock contract

The LegacyCases mock now supplies the collection shapes that the older
DataRaptor cannot manufacture:

- `claims[]` remains the scalar search index used by `FilteredLookupAction`.
- `normalizedClaims[]` contains `{id, claimSubtype, claimStatus,
  claimReceivedDate}` with unavailable metadata set to null.
- `notes[]` contains `{when, author, text}`.
- A nonblank Interaction note is copied into each applicable ServiceIntent's
  notes collection.
- `isClosed` is supplied from the mock status.
- `history` is supplied as an empty array when unavailable.
- Missing provider objects contain null placeholders.

The mock normalization script is idempotent and compacts the embedded JSON so
it remains within the Custom Metadata text-field size.

## Remaining older-runtime behavior

- One transformed case is returned as a `cases` object; multiple cases are an
  array. Guaranteeing a singleton array still requires IP processing or code.
- The DataRaptor omits a null provider rather than serializing
  `"provider": null`.
- These behaviors are not hidden behind unapproved Apex.

## Components to promote

1. Existing `FilteredLookupAction.cls` and test
2. Existing `MockIntegrationGateway.cls` without normalization registrations
3. Active DataRaptor `DRTransformPremigrationcasesv2`
4. Simplified Integration Procedure `Claims_PreMigrationCaseLookup`
5. Normalized `LegacyCases` mock Custom Metadata

## Repository references

```text
datapacks/CS-1347-compatible-transform
datapacks/CS-1347-expanded/IntegrationProcedure/Claims_PreMigrationCaseLookup
datapacks/CS-1347/Claims_PreMigrationCaseLookup.json
scripts/verify-cs1347-simple-ip.apex
scripts/normalize-legacy-cases-mock.js
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
