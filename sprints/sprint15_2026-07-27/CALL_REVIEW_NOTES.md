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
