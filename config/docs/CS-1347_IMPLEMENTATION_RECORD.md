# CS-1347 Implementation Record

This is the technical source of truth for CS-1347.

## Current decision

Keep the implementation simple and aligned with Brian's preference:

```text
getLegacyCasesMock
→ liftCases (DRTransformPremigrationcasesCompatible)
→ BuildMatchedResponse
```

The previously added `NormalizeLegacyCasesAction` and
`EnsureCasesArrayAction` were removed from the IP, Apex, gateway registry, and
repository on July 28, 2026.

## What the existing DataRaptor now does

`DRTransformPremigrationcasesCompatible` reads
`legacyCaseData:interactions:serviceIntents` directly. Each matching
ServiceIntent becomes a case and parent Interaction scalars are repeated.

Mapped output fields:

```text
caseNumber, caseKey, sourceSystem, subject, workBasket,
lastActivityDate, status, description, memberId, provider, legacyId,
mea, interactionId, interactionCreatedAt, interactionClosedAt,
claims, notes, history
```

`caseNumber`, `caseKey`, and `legacyId` use the ServiceIntent legacy ID.
The mapper remains active and uses the compatible older designer
(`IsManagedUsingStdDesigner = false`).

## Verified output

- `EOB006`: two cases (`SI-ENCP-2201001`, `SI-CSD-3317001`)
- `EOB001`: one case
- unknown claim: exactly `{"cases":[]}`
- `FilteredLookupActionTest`: 4 passed, 0 failed
- DataRaptor and IP DataPacks: deployed and activated successfully

## Confirmed DataRaptor-only limitations

The current mock source stores claims and notes as string arrays. With only the
older DataRaptor:

- `claims` remains a string array.
- `notes` remains a string array.
- the parent Interaction note is not appended to child notes.
- `isClosed` is not derived.
- absent `history` is not synthesized as an empty array.
- one transformed case is returned as a `cases` object, while multiple cases
  are returned as a `cases` array.

Testing nested outputs such as `claims:id` and `notes:text` produced objects
containing arrays, not arrays of objects, so those incorrect mappings were not
retained.

These limitations require either richer source JSON, IP collection processing,
or an approved normalization utility. They are intentionally documented rather
than hidden behind unapproved Apex.

## Components to promote

1. Existing `FilteredLookupAction.cls` and test
2. Existing `MockIntegrationGateway.cls` without normalization registrations
3. Updated DataRaptor `DRTransformPremigrationcasesCompatible`
4. Simplified Integration Procedure `Claims_PreMigrationCaseLookup`
5. Required `LegacyCases` mock Custom Metadata where applicable

## Repository references

```text
datapacks/CS-1347-compatible-transform
datapacks/CS-1347-expanded/IntegrationProcedure/Claims_PreMigrationCaseLookup
datapacks/CS-1347/Claims_PreMigrationCaseLookup.json
scripts/verify-cs1347-simple-ip.apex
```

## Outside CS-1347

- Quaser's inactive consolidation IP
- Salesforce Case-source transformation
- FlexCard modification
- Live legacy-service integration
- Generic filtered-lookup refactoring
