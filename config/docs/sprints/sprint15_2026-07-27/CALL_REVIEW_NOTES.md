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
