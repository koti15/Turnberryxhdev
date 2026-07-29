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

## 2026-07-28 — CS-1347 — Reuse existing compatible mapper

### Decision

- Update `DRTransformPremigrationcasesCompatible` instead of connecting the
  separately named unified mapper.
- Keep the normalized input node because it supplies the structured claims,
  merged notes, derived closed flag, and initialized history collection.

### Completed

- Replaced the existing compatible mapper's earlier fields with all 19 unified
  mappings.
- Kept the mapper in the older compatible designer format.
- Reconnected `liftCases` to `DRTransformPremigrationcasesCompatible`.
- Rebuilt, deployed, and activated the Integration Procedure.
- Verified the direct transform, one result, multiple results, merged notes,
  and exact empty-array response.

## 2026-07-28 — CS-1347 — Simplified no-new-Apex decision

### Decision

- Restore the original IP structure and avoid new Apex transformation actions.
- Use `DRTransformPremigrationcasesCompatible` directly with
  `legacyCaseData`.
- Keep DataRaptor-only collection limitations visible for Brian's review.

### Completed

- Removed `normalizeLegacyCases` and `ensureCasesArray` from the IP.
- Removed their Apex classes, tests, and gateway registrations from the org.
- Rebuilt, deployed, and activated the simplified IP.
- Verified two cases for `EOB006`, one case for `EOB001`, exact empty output
  for no match, and four passing lookup regression tests.

### Known limitations

- Claims and notes remain string arrays with current mock data.
- Parent Interaction notes are not merged.
- A one-case transform collapses `cases` to an object in the older runtime.
- `isClosed` and absent history cannot be synthesized by these direct mappings.

## 2026-07-28 — CS-1347 — Normalize mock for expected Preview

### Decision

- Assume the live service will eventually provide the complete collection
  contract.
- Make current unavailable mock metadata null and unavailable collections
  empty.
- Preserve scalar `claims[]` for lookup filtering and provide
  `normalizedClaims[]` for DataRaptor output.

### Completed

- Converted claim output to objects with null subtype, status, and received
  date.
- Converted notes to `{when, author, text}` objects.
- Copied nonblank Interaction notes into each applicable ServiceIntent.
- Added `isClosed` and `history: []` to every ServiceIntent.
- Added the `isClosed` DataRaptor mapping.
- Verified EOB006 structured output and the EOB004 parent note.
- No Apex classes or new IP elements were added.

### Remaining runtime behavior

- A singleton transform is still emitted as an object by the older DataRaptor.
- Null provider values are omitted by the DataRaptor serializer.

## 2026-07-29 — CS-1347 — User-created DataRaptor retrieval

- Retrieved active `DRTransformPremigrationcasesv1` from the shared org.
- Confirmed it uses the compatible older designer.
- Compared all 19 mappings with `DRTransformPremigrationcasesCompatible`; no
  input/output mapping differences were found.
- Stored it separately under `datapacks/CS-1347-user-transform`.
- No IP connection or org modification was made during retrieval.

## 2026-07-29 — CS-1347 — LegacyTransformCasesV2 correction

- Confirmed the intended user-created mapper was `LegacyTransformCasesV2`.
- Retrieved it exactly from the shared org; it is currently inactive.
- Export reported malformed Expected Output JSON because of a trailing comma
  in the notes array.
- Mapping review found the wrong input root, duplicate mappings, incorrect
  legacy/key mapping, and missing unified fields.
- Stored the raw artifact under `datapacks/CS-1347-legacy-transform-v2`.
- Did not deploy, activate, or connect it to the working IP.

## 2026-07-29 — CS-1347 — Adopt LegacyTransformCasesV2

- Corrected the invalid Expected Output JSON and input root.
- Removed duplicate and incorrect mappings.
- Added the complete validated 19-field unified mapping set.
- Mapped normalized ServiceIntent notes directly, preserving the Interaction
  note already included by normalized mock data.
- Activated `LegacyTransformCasesV2`.
- Connected active IP version 15 `liftCases` to V2.
- Verified EOB006, EOB001, EOB004 merged notes, and no-match output.
- Re-exported and redeployed the exact corrected artifact successfully.
- `FilteredLookupActionTest`: 4 passed, 0 failed.

## 2026-07-29 — CS-1347 — Final DataRaptor name

- `DRTransformPremigrationcasesv1` already existed.
- Created unique `DRTransformPremigrationcasesv2` from the validated corrected
  V2 mappings.
- Active IP version 16 now uses `DRTransformPremigrationcasesv2`.
- Existing ServiceIntent notes and appended Interaction notes remain in the
  direct `cases:notes` mapping.
- Exact exported artifact redeployed successfully.
- EOB006, EOB001, EOB004, no-match, and four regression tests pass.
