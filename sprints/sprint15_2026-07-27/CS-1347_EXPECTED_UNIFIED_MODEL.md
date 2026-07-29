# CS-1347 Expected Unified Case Model

This file captures the unified case response contract shared by Brian after the July 28, 2026 working session. It is the expected target shape for legacy pre-migration cases, Salesforce cases, consolidation, and the related-cases FlexCard.

## Contract rules

- The Integration Procedure returns one top-level object containing `cases`.
- `cases` is always an array, including when one or zero cases are returned.
- Each legacy `ServiceIntent` becomes one item in `cases[]`.
- Salesforce and legacy transforms must produce this same superset model.
- The FlexCard Result JSON Path must point to `cases`.
- A no-match result must be exactly:

```json
{
  "cases": []
}
```

## Expected JSON

```json
{
  "cases": [
    {
      "caseNumber": "cs123",
      "caseKey": "sfId or legacyId",
      "sourceSystem": "Salesforce",
      "subject": "Got a problem",
      "workBasket": "Joe Balder",
      "lastActivityDate": "2025-11-02",
      "status": "Open",
      "isClosed": false,
      "description": "a description",
      "memberId": "6543210",
      "provider": "NPI6584321",
      "legacyId": "Leg4555666",
      "mea": "Joe Balder",
      "interactionCreatedAt": "2026-01-12",
      "interactionClosedAt": "2026-01-13",
      "claims": [
        {
          "id": "9876654321",
          "claimSubtype": "Medical",
          "claimStatus": "Open",
          "claimReceivedDate": "2025-12-27"
        }
      ],
      "notes": [
        {
          "when": "2026-11-02",
          "author": "Brian the Weers",
          "text": "this is the text of a note for a claim or case or something"
        },
        {
          "when": "2026-11-02",
          "author": "Brian the Weers 2",
          "text": "this is the text of a note for a claim or case or something else"
        }
      ],
      "history": [
        {
          "when": "2025-05-25",
          "workBasket": "Claim Appeals",
          "owner": "Joe Balder"
        }
      ]
    }
  ]
}
```

## Legacy mapping expectations

Parent Interaction values must be repeated on every case created from its ServiceIntents.

| Legacy source | Unified output |
|---|---|
| `interactions:interactionId` | `cases:interactionId` only if retained in the final shared contract |
| `interactions:sourceSystem` | `cases:sourceSystem` |
| `interactions:createdAt` | `cases:interactionCreatedAt` |
| `interactions:closedAt` | `cases:interactionClosedAt` |
| `interactions:meaName` | `cases:mea` |
| `serviceIntents:legacyId` | `cases:legacyId` and/or `cases:caseKey` |
| `serviceIntents:subject` | `cases:subject` |
| `serviceIntents:workBasket` | `cases:workBasket` |
| `serviceIntents:lastActivityDate` | `cases:lastActivityDate` |
| `serviceIntents:status` | `cases:status` |
| derived from status | `cases:isClosed` |
| `serviceIntents:description` | `cases:description` |
| `serviceIntents:memberId` | `cases:memberId` |
| `serviceIntents:provider` | `cases:provider` |
| `serviceIntents:claims[]` | `cases:claims[]` |
| normalized parent and child notes | `cases:notes[]` |
| `serviceIntents:history[]` | `cases:history[]` |

## Notes normalization requirement

The legacy input currently has notes at two levels:

```text
Interaction note or notes
ServiceIntent notes[]
```

The final case must contain one consistently shaped collection:

```text
cases[].notes[]
  when
  author
  text
```

Directly mapping both source note paths to the same output path did not append them correctly. Implement one of these approaches:

1. Normalize notes in a first Data Mapper and map the normalized result in a second Data Mapper.
2. Use Integration Procedure preprocessing or Loop Blocks to create one notes collection before the final transform.
3. Use a small normalization utility only if OmniStudio cannot reliably merge the collections.

Do not add an empty note object when the Interaction note is blank.

## OmniStudio compatibility requirement

The working transform was created or edited in the managed-package/newer OmniStudio runtime. It must be recreated in the deployment-compatible standard/older designer. Use the current mappings and JSON samples as a reference rather than assuming an exported managed-runtime Data Mapper will remain compatible.

## July 29, 2026 implementation validation

### Turnberry Developer Edition reference implementation

The Turnberry Developer Edition Integration Procedure was used as the working reference for the detailed unified model. Validation with Claim ID `EOB001` showed:

- A top-level `cases` response.
- Core case fields including `status`, `memberId`, `caseKey`, `caseNumber`, `legacyId`, `sourceSystem`, `subject`, `workBasket`, `description`, `provider`, `mea`, and `isClosed`.
- Parent Interaction fields including `interactionId`, `interactionCreatedAt`, and `interactionClosedAt`.
- `claims[]` represented as objects with `id`, `claimSubtype`, `claimStatus`, and `claimReceivedDate`.
- `notes[]` represented as structured objects with `when`, `author`, and `text`.
- `history[]` present, even when empty.

This org remains the reference for the richer target contract and for validating detailed child-array shapes.

### XHDev1 current implementation

The compatible Data Mapper and Integration Procedure were validated in the main XHDev1 org with Claim ID `EOB006`. The response confirmed:

- A top-level `cases[]` array.
- Multiple related cases returned for a single Claim ID.
- One output case per matching ServiceIntent.
- Parent Interaction values repeated into each related case.
- Core unified fields populated, including `status`, `memberId`, `caseKey`, `legacyId`, `caseNumber`, `lastActivityDate`, `provider`, `interactionCreatedAt`, `interactionClosedAt`, `workBasket`, `description`, `mea`, `sourceSystem`, `subject`, and `interactionId`.
- The current XHDev1 `notes[]` output is a string array rather than the structured `{when, author, text}` object array shown in the richer Turnberry reference.

### Source-of-truth guidance

- Use **XHDev1** as the source of truth for the current deployment-compatible CS-1347 implementation.
- Use **Turnberry Developer Edition** as the reference implementation for the richer unified contract and detailed child-object mappings.
- Before final consolidation and FlexCard integration, confirm whether `notes[]` must remain a string array or be normalized to structured note objects across all sources.
- Validate `claims[]`, `history[]`, and the no-match response in XHDev1 separately if they are not covered by the current test payload.

## CS-1347 completion checks

- [x] Recreate the legacy Data Mapper in the compatible OmniStudio designer.
- [x] Confirm the Integration Procedure uses the root node `cases`.
- [x] Ensure each ServiceIntent creates one `cases[]` item.
- [x] Ensure parent Interaction fields are repeated on every related case.
- [x] Return multiple case objects for a Claim ID with multiple matching ServiceIntents.
- [x] Include the Interaction ID in the current legacy output.
- [ ] Confirm the FlexCard uses the root node `cases`.
- [ ] Finalize the common `notes[]` contract: string array versus structured `{when, author, text}` objects.
- [ ] Merge the Interaction-level note into each applicable case's `notes[]` according to the final common contract.
- [ ] Validate `claims[]` in XHDev1 using a payload that contains claim details.
- [ ] Validate `history[]` in XHDev1 using a payload that contains history details.
- [ ] Return exactly `{"cases":[]}` for no match.
- [ ] Document fields absent from the current mock payload and update mock data where appropriate.
- [ ] Do not refactor `FilteredLookupAction` as part of this closure unless separately requested; the generic path-based or strategy-pattern redesign is deferred.
