# Sprint 15 Context

Sprint start: July 27, 2026

Expected cadence: two weeks

Status: Current

## Purpose

This file is the sprint-level source of truth. It indexes stories and captures
confirmed decisions that affect more than one story. Detailed implementation
belongs in each story's implementation record.

## Story index

| Story | Summary | Status | Technical record |
|---|---|---|---|
| CS-1347 | Related pre-migration cases for a Claim | Verified in dev org | [Implementation record](../../CS-1347_IMPLEMENTATION_RECORD.md) |

Add every sprint story here, even when no code change is required.

## Confirmed sprint decisions

- Preserve existing behavior unless a story explicitly requires changing it.
- Keep transformation logic in Salesforce Data Mappers when that is the agreed
  OmniStudio design.
- Keep raw call statements separate from interpretation.
- Treat inactive experimental components as out of scope unless explicitly
  adopted.
- Rebuild and deploy OmniStudio DataPacks after IP element configuration
  changes so compiled metadata is refreshed.

## Current technical state

### CS-1347

- Nested claim filtering is isolated to
  `FilteredLookupAction.getCases`.
- Generic filtered-lookup behavior is preserved.
- `DRTransformPremigrationcases` performs the flattening.
- `Claims_PreMigrationCaseLookup` returns matching cases or a typed empty
  array.
- Focused tests and end-to-end assertions pass in the org configured locally as
  `myProdOrg`.

## Sprint references

- [Call and review notes](CALL_REVIEW_NOTES.md)
- [Daily standup](DAILY_STANDUP.md)
- [Sprint handoff](SPRINT_HANDOFF.md)

## Open sprint questions

Add unresolved cross-story questions here. Story-specific questions should be
recorded in the call/review notes and linked to the story.

- None currently recorded.
