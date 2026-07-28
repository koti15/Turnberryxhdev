# Sprint 15 Call and Review Notes

This is an append-only record for transcripts, reviewer comments, decisions,
questions, screenshots, and follow-ups across all Sprint 15 stories.

## Entry template

```markdown
## YYYY-MM-DD — Story — Call or reviewer

### Source

- Transcript, screenshot, meeting, PR comment, or message:
- Link or repository path:

### What was said

- Exact relevant wording or faithful summary:

### What we think it means

- Interpretation:
- Components possibly affected:

### Questions to confirm

- [ ] Question

### Decision

- Status: Proposed / Confirmed / Rejected
- Decision:
- Confirmed by:
- Date:

### Follow-up

- [ ] Owner — action

### Source-of-truth impact

- Sprint context:
- Story implementation record:
- Code or metadata:
```

## Working rules

- Include a story number in every entry.
- Keep exact statements separate from interpretation.
- Identify the speaker and date.
- Reference uploaded transcripts or screenshots by repository path.
- Do not treat a suggestion as confirmed until the decision section says so.
- Copy confirmed technical facts into the story implementation record.
- Do not store credentials, tokens, or sensitive customer information.

## 2026-07-27 — CS-1347 — Consolidated review context

### Confirmed direction

- Filtering nested claim references is required because claims are stored under
  `interactions → serviceIntents → claims`.
- Transformation belongs in a Salesforce Data Mapper rather than an Apex
  transformation class.
- The active Data Mapper is `DRTransformPremigrationcases`.
- `liftCases` is a DataRaptor Transform Action.
- Existing generic behavior in `FilteredLookupAction` must remain unchanged.
- Quaser's inactive consolidation work is not part of CS-1347.

### Result

- The final filter, Data Mapper, and Integration Procedure flow were verified
  together.
- Later reviewer feedback must be added as a new dated entry and reconciled
  with the CS-1347 implementation record after confirmation.

## 2026-07-28 — CS-1347 — Brian review implementation follow-up

### Source

- Brian review notes uploaded to
  `sprints/sprint15_2026-07-27/CALL_REVIEW_NOTES.md`.

### Confirmed actions completed

- Created `DRTransformPremigrationcasesCompatible` as a separate DataRaptor
  using the team-compatible older designer format.
- Preserved the existing `DRTransformPremigrationcases` mapper unchanged.
- Copied the ten previously verified mappings.
- Added `interactions:interactionId → cases:interactionId`.
- Reconnected `liftCases` to the compatible DataRaptor.
- Rebuilt, deployed, and activated the Integration Procedure.
- Verified two related cases for `EOB006`, both interaction IDs, and a typed
  empty array for a nonmatching claim.

### Deferred

- Interaction-level note aggregation remains deferred until the team confirms
  the final live-service note-object contract.
- The final unified case model still requires agreement across the transform,
  Salesforce response, consolidation layer, and FlexCard.

### Environment clarification

- The aliases `myProdOrg` and `turnberryProd` both authenticate the same
  Salesforce Developer Edition org. No separate production org was involved.

## 2026-07-28 — CS-1347 — Unified-contract closure

### Source

- Brian review transcript:
  `sprints/sprint15_2026-07-27/CALL_REVIEW_NOTES.md`
- Expected contract:
  `sprints/sprint15_2026-07-27/CS-1347_EXPECTED_UNIFIED_MODEL.md`

### Confirmed interpretation

- Every matching ServiceIntent becomes one unified case.
- Root `cases` must always be an array.
- Parent Interaction scalars repeat on each case.
- Parent and child notes become one consistently shaped collection.
- The mapper must use the compatible older/standard designer.
- A small normalization utility is acceptable because direct Data Mapper
  mappings did not merge the two note collections correctly.
- Generic filtered-lookup redesign remains deferred.

### Completed

- Added compatible `DRTransformPremigrationUnifiedCases`.
- Added preprocessing to normalize claims/notes and append a nonblank parent
  note to each applicable child case.
- Added a guard for the older runtime's one-row object collapse.
- Rebuilt, deployed, and activated `Claims_PreMigrationCaseLookup`.
- Verified one case, multiple cases, no match, and mixed parent/child notes.
- Preserved `FilteredLookupAction` and the older Data Mappers in this closure.

### Remaining coordination

- Salesforce-case owners must emit the same unified contract.
- FlexCard/consolidation owners must confirm Result JSON Path is `cases`.
- Live API owners must confirm richer claim/note metadata.
