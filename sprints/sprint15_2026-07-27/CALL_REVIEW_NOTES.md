# Sprint 15 Call and Review Notes

This is an append-only record for transcripts, reviewer comments, decisions,
questions, screenshots, and follow-ups across all Sprint 15 stories.

## 2026-07-28 — CS-1347 — Brian review and unified case model discussion

### Source

- Live working-session transcript with Brian, Sekhar, Kaiser, and team.
- Review covered `FilteredLookupAction`, `Claims_PreMigrationCaseLookup`,
  `DRTransformPremigrationcases`, the related-cases FlexCard, loop design,
  unified JSON structure, notes handling, and mock-only behavior.

### What was demonstrated

- CS-1347 currently accepts a Claim ID, calls
  `MockIntegrationGateway.getCases`, filters the nested legacy mock payload, and
  transforms the result into a `cases` array.
- `FilteredLookupAction` contains a dedicated `getCases` branch that reads
  `claimId`, traverses `interactions[] -> serviceIntents[] -> claims[]`, keeps
  only matching ServiceIntents, removes empty parent Interactions, and preserves
  the nested shape for the Data Mapper.
- Existing generic filtered-lookup behavior was not changed for other actions.
- `Claims_PreMigrationCaseLookup` version 4 was demonstrated in Preview.
- Matching input returned multiple related cases; no-match input returned an
  empty array through a separate response path.
- `liftCases` is a Data Mapper Transform Action using
  `DRTransformPremigrationcases`.

### Unified data model direction

Brian's primary architectural direction was that Salesforce cases, legacy
pre-migration cases, the consolidation layer, and the FlexCard must all use one
shared case contract. The exact model may be adjusted, but all producers and
consumers must agree on the same field names and nested collections.

The target model discussed includes fields such as:

- case number or legacy identifier
- source system
- subject or category
- status
- description
- member ID
- provider
- work basket
- MEA
- interaction created and closed dates
- interaction ID
- `claims[]`
- `notes[]`
- `history[]`

The Data Mapper output must match the FlexCard input contract exactly. Duplicate
or inconsistent fields, such as multiple member-ID definitions or differing
case field names, must be resolved before finalizing the mapping.

### Nested payload and transformation behavior

The legacy source is array-based and nested:

```text
legacyCaseData
  interactions[]
    serviceIntents[]
      claims[]
      notes[]
```

The transformation must create a self-contained case object for each matching
ServiceIntent and include the required parent Interaction fields. The team
considered nested Loop Blocks:

```text
iterateInteractions
  iterateIntents
```

The outer loop would expose the current Interaction and its ServiceIntents. The
inner loop would process each ServiceIntent while retaining access to the parent
Interaction through Additional Loop Output.

During the review, the current Data Mapper was shown to map parent Interaction
fields, such as `createdAt` and `meaName`, together with ServiceIntent fields.
Because the mapper can already flatten these source paths into the output array,
Brian concluded that an explicit loop implementation may not be necessary for
the current transform. Loop Blocks remain a possible pattern if the final model
requires more complex per-item enrichment.

### Notes handling

The source contains two note forms:

- Interaction-level note: a single value or single note object.
- ServiceIntent-level notes: an array.

The final unified case contract expects `notes[]`. Therefore, when an
Interaction-level note exists, it must be added to the notes collection for each
related ServiceIntent case.

The final live-service note contract is not confirmed. Two possibilities were
discussed:

1. The service returns complete note objects with fields such as text, author,
   and date.
2. The service returns note strings, in which case the transform must synthesize
   the required note objects using available Interaction or ServiceIntent
   metadata.

### Transform input contract concern

Brian questioned why the Data Mapper receives a wrapper several levels above
the actual data being transformed. Passing the entire IP-shaped wrapper tightly
couples the transform to the current Integration Procedure structure.

The transform should ideally receive only the smallest stable source node it
requires. This keeps the Data Mapper reusable and prevents unrelated IP changes
from changing its input contract.

### Designer compatibility

- The working implementation was shown in Integration Procedure version 4.
- The Data Mapper was created or edited using the newer OmniStudio designer.
- Brian could not edit it from the older interface used by other team members.
- Sekhar agreed to recreate or clone the Data Mapper in the team's compatible
  designer rather than switching the org-wide UI setting.
- Data Mappers do not use IP-style numbered versions; a new mapper is created by
  cloning when a separate editable copy is required.

### Empty response behavior

The IP uses separate matched and unmatched response paths:

- Match: return the transformed `cases` array.
- No match: return a typed empty array, `{"cases":[]}`.

Brian confirmed that returning an empty array is the correct behavior.

### Mock-data gaps

The current mock data does not clearly include every field in the proposed
unified model, including some claim subtype and claim status values. The initial
approach is to update the mock data to represent the expected live-service
contract. If the actual API contract differs, the mappings will be adjusted.

### `FilteredLookupAction` design review

Brian accepted the current implementation for immediate story completion, but
raised an object-oriented design concern.

Before CS-1347, `FilteredLookupAction` was generic and data-model agnostic. The
new `getCases` condition and private legacy-case traversal methods introduce a
specific use case into that generic class. Repeating this pattern for future
use cases would create multiple `if/else` branches and private methods, reducing
single responsibility, extensibility, and parallel development.

Brian outlined two possible future refactoring directions:

1. **Generic path-based filtering**
   - Replace a simple `matchField` concept with configurable paths such as
     `matchPath`, `returnPath`, and target or map path.
   - Allow the generic engine to traverse arrays and nested objects, select
     matching records, and return the required subtree without hard-coding the
     legacy case model.
   - Brian referred to a FireNav-like or pivot-by-reference pattern that can
     iterate a source list and select nested records based on path expressions.

2. **Strategy pattern**
   - Keep `FilteredLookupAction` as the generic coordinator.
   - Move model-specific filtering into individual strategy classes registered
     by action or filter type.
   - New filter types could then be developed independently without modifying
     the base class.

Brian prefers the generic path-based approach if it can support the required
nested-array selection without writing a separate selector class for every data
model. No refactor is required immediately; the current implementation may
remain while the team completes the remaining sprint work.

### Decisions

- **Confirmed:** Use one unified case model across Salesforce, legacy data,
  consolidation, and FlexCard layers.
- **Confirmed:** `cases` is an array because one Claim ID may return multiple
  related cases.
- **Confirmed:** No-match behavior must return an empty array, not an error or
  string value.
- **Confirmed:** The current `getCases` implementation can remain for now.
- **Confirmed:** Existing generic lookup behavior must remain unchanged.
- **Confirmed:** Interaction-level notes must eventually be incorporated into
  the final case `notes[]` collection.
- **Confirmed:** Recreate the Data Mapper in the compatible OmniStudio designer
  rather than changing the designer setting for the whole team.
- **Deferred:** Refactor `FilteredLookupAction` back to a fully generic design.
- **Deferred:** Final note-object contract pending live-service/API confirmation.

### Follow-up actions

- [ ] Sekhar — recreate or clone `DRTransformPremigrationcases` using the
      compatible OmniStudio designer and reconnect the IP if the bundle name
      changes.
- [ ] Sekhar — update the transform so an Interaction-level note is added to
      the corresponding ServiceIntent case `notes[]` output.
- [ ] Sekhar — add or confirm `interactionId` and all required parent
      Interaction fields in each final case object.
- [ ] Sekhar and Kaiser — compare Data Mapper output, FlexCard fields, and
      Brian's unified-case JSON; agree on exact names and nested structures.
- [ ] Team — remove duplicate fields and ensure all source-specific transforms
      expose the same common contract.
- [ ] Team — update the legacy mock payload with missing unified-model fields,
      including claim subtype/status where required.
- [ ] Brian/team — confirm the live-service structure for notes and whether
      note objects must be synthesized.
- [ ] Team — later evaluate generic path-based filtering versus a strategy
      pattern for `FilteredLookupAction`.

### Source-of-truth impact

- Update the CS-1347 implementation record after the compatible Data Mapper and
  note aggregation are completed and verified.
- Treat the unified case contract as a cross-story Sprint 15 decision that also
  affects the related-cases FlexCard and consolidation stories.

## 2026-07-28 — NICE package installation follow-up

### What was said

- The package installation URL in Sekhar's local copy of the NICE document used
  an incorrect or outdated package ID.
- Brian located the working package identifier and confirmed the corrected URL
  opened successfully.
- Sekhar's document is a local copy originally provided by Tracy rather than a
  centrally maintained Drive document.

### Follow-up

- [ ] Sekhar — update the local NICE installation document with the corrected
      package ID/URL.
- [ ] Team — locate or create a centrally maintained copy so future package
      updates are not lost in local documents.

## 2026-07-28 — CS-1347 — Unified model follow-up and closure criteria

### Source

- Follow-up working session with Brian, Sekhar, Kaiser, Graham, Quaser, and team.
- Discussion continued from the earlier CS-1347 review and focused on the final
  FlexCard contract, legacy-note aggregation, Salesforce alignment, Data Mapper
  behavior, and OmniStudio runtime compatibility.

### Unified response contract

- The Integration Procedure should return one top-level object containing a
  single array property, currently named `cases`.
- Each element in `cases[]` represents one unified case row for the FlexCard.
- The root property name may only change if the FlexCard Result JSON Path changes
  with it. The producer and consumer must use the same name.
- Brian clarified that `cases` is a neutral JSON property name in this contract;
  it should not be interpreted as meaning only Salesforce `Case` records.
- One interaction may contain multiple ServiceIntents, so the output must remain
  an array even when the test input returns only one case.

The unified item shape reviewed in the session includes:

```text
caseNumber
caseKey
sourceSystem
subject
workBasket
lastActivityDate
status
isClosed
description
memberId
provider
legacyId
mea
interactionCreatedAt
interactionClosedAt
claims[]
notes[]
history[]
```

- `caseKey` is the source-specific stable key: Salesforce record ID for
  Salesforce cases or the agreed legacy identifier for pre-migration cases.
- Both Claim Related Cases and Member Related Cases must expose this same superset
  model. A consumer may ignore fields that are not relevant to a particular view.
- Any new or renamed field must be communicated across the team before one source
  transform or FlexCard begins using it.

### Legacy transformation behavior

- The legacy source shape remains:

```text
interactions[]
  serviceIntents[]
    claims[]
    notes[]
```

- Each ServiceIntent should become one item in `cases[]`.
- Parent Interaction fields such as `sourceSystem`, `createdAt`, `closedAt`,
  `meaName`, and `interactionId` must be repeated on each resulting case where
  those fields are part of the unified contract.
- Brian confirmed that the Data Mapper can already repeat parent Interaction
  fields while expanding ServiceIntents into the output array. Because of this,
  nested Loop Blocks are not required for the basic flattening step.
- Loop Blocks or a preprocessing step may still be needed for true collection
  enrichment, especially note aggregation.

### Note aggregation result

- The team tested mapping both Interaction-level notes and ServiceIntent-level
  notes directly to `cases:notes`.
- The Data Mapper did not combine them into one clean note array. It generated
  separate or split structures rather than appending the Interaction note to the
  ServiceIntent note collection.
- The source mismatch is the key issue:
  - Interaction-level note is a single value or single object.
  - ServiceIntent-level notes are an array.
  - The target requires one `notes[]` array of consistently shaped note objects.
- Brian concluded that this likely requires two transformation stages or a
  preprocessing step:
  1. normalize the parent Interaction note and child notes into one collection;
  2. map the normalized case into the final unified model.
- An IP Loop Block and Set Values approach is also acceptable if it can reliably
  append the parent note to each ServiceIntent's note array.
- The final note object is expected to contain fields such as `text`, `author`,
  and `when`. If the live API returns only text, the missing metadata may need to
  be synthesized from Interaction or ServiceIntent values.

### Salesforce alignment

- The Salesforce transform must produce the same `cases[]` shape as the legacy
  transform.
- Expected source mappings discussed include:
  - `CaseNumber` to `caseNumber`
  - Salesforce record ID to `caseKey`
  - constant `Salesforce` to `sourceSystem`
  - `Subject` to `subject`
  - owner or queue to `workBasket`
  - status and a formula-derived closed flag to `status` and `isClosed`
  - `Description` to `description`
  - member and provider references to their unified fields
  - related claims to `claims[]`
  - Case Comments, Notes, or the selected related-note source to `notes[]`
  - history records to `history[]`
- The exact Salesforce note source still requires confirmation, but the output
  contract must not differ from the legacy contract.

### FlexCard and consolidation behavior

- The FlexCard Table Data and Result JSON Path must point to the exact array node
  returned by the consolidation or lookup IP.
- Once the Salesforce and legacy transforms each return compatible `cases[]`
  lists, the consolidation layer can combine the lists and pass the result to the
  FlexCard without source-specific UI logic.
- Fields may be present in the unified contract even when a particular view does
  not display them. The UI should select the required fields rather than forcing
  every source to use a different model.

### OmniStudio runtime compatibility

- The demonstrated Data Mapper was created or modified while the managed-package
  OmniStudio designer/runtime was enabled.
- Switching the org setting back does not convert that existing Data Mapper into
  a standard-runtime-compatible component.
- The team observed that the existing mapper could not be reliably edited or
  reused after switching interfaces.
- The agreed action is to recreate the transform in the correct standard or older
  OmniStudio designer used by the target deployment path.
- Exporting the managed-runtime mapper and importing it as-is may not solve the
  compatibility issue. The current mappings and JSON samples should be used as a
  reference while rebuilding.

### Additional review of the IP

- `BuildMatchedResponse` should return the mapped `cases[]` collection.
- `BuildEmptyResponse` should return a real empty array, not `null`, an empty
  string, or a serialized array value.
- Brian confirmed the two-response-path design is acceptable.
- The current filtered mock result and Data Mapper output were shown to return
  multiple related cases for a matching Claim ID.

### Decisions

- **Confirmed:** Use one top-level `cases[]` collection as the current unified
  FlexCard contract.
- **Confirmed:** Every legacy ServiceIntent produces one unified case item.
- **Confirmed:** Parent Interaction scalar fields can be mapped directly into
  each case by the Data Mapper; loops are not required solely for those fields.
- **Confirmed:** Interaction and ServiceIntent notes must become one consistent
  `notes[]` collection per case.
- **Confirmed:** Directly mapping both note sources to the same target path did
  not produce the required merged result.
- **Confirmed:** Rebuild the Data Mapper in the deployment-compatible OmniStudio
  runtime/designer.
- **Confirmed:** Salesforce and legacy paths must produce the same superset model.
- **Deferred:** The exact note-enrichment implementation until the team chooses
  between two-stage mapping, IP preprocessing, or another normalization utility.
- **Deferred:** Final Salesforce note source and final live-service note schema.

### Closure criteria for CS-1347

Before CS-1347 is considered ready to close, verify all of the following:

- [ ] Recreate `DRTransformPremigrationcases` in the compatible OmniStudio
      designer/runtime.
- [ ] Ensure the output root and FlexCard Result JSON Path consistently use
      `cases`.
- [ ] Align the legacy output to the approved unified field names, including
      `caseNumber`, `caseKey`, `sourceSystem`, `subject`, `workBasket`,
      `lastActivityDate`, `status`, `isClosed`, `description`, `memberId`,
      `provider`, `legacyId`, `mea`, `interactionCreatedAt`,
      `interactionClosedAt`, `claims`, `notes`, and `history` as applicable.
- [ ] Confirm parent Interaction values are present on each output case.
- [ ] Implement and verify Interaction-note aggregation into each case's
      `notes[]` collection.
- [ ] Verify a Claim ID returning multiple ServiceIntents produces multiple
      `cases[]` items.
- [ ] Verify a no-match request returns exactly `{"cases":[]}`.
- [ ] Compare the output against the Claim Related Cases and Member Related Cases
      FlexCard model with Kaiser and the Salesforce-transform owners.
- [ ] Document any source field unavailable in current mock data and update the
      mock payload or mapping assumption.

### Follow-up actions

- [ ] Sekhar — rebuild the legacy Data Mapper in the compatible designer and
      reconnect `liftCases` if the Data Mapper name changes.
- [ ] Sekhar — implement or prototype the two-step or preprocessing solution for
      combining Interaction and ServiceIntent notes.
- [ ] Sekhar — run Preview tests for one result, multiple results, no match, and
      mixed parent/child notes.
- [ ] Sekhar and Kaiser — validate that the FlexCard expects the same root node and
      field names as the Data Mapper output.
- [ ] Salesforce case owner(s) — produce the same unified model and confirm the
      source for Salesforce notes and history.
- [ ] Team — communicate any unified-model change before modifying a mapper,
      consolidation IP, or FlexCard independently.

### Source-of-truth impact

- Update the CS-1347 implementation record after the compatible mapper and note
  aggregation are completed and end-to-end verified.
- Add the final unified contract to the Sprint 15 context once all participating
  stories agree on the exact field names and nested object shapes.
