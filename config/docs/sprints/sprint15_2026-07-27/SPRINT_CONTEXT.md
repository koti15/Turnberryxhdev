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
| CS-1347 | Related pre-migration cases for a Claim | Unified legacy contract verified in dev org | [Implementation record](../../CS-1347_IMPLEMENTATION_RECORD.md) |

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
- `DRTransformPremigrationcasesCompatible` performs the flattening in the
  team-compatible older designer format.
- `Claims_PreMigrationCaseLookup` returns matching cases or a typed empty
  array.
- `DRTransformPremigrationcasesCompatible` now emits the agreed unified field
  names in the compatible older-designer format.
- The IP uses the original simple lookup, DataRaptor, response structure with no
  new Apex transformation actions.
- Multiple, one, no-match, and lookup regression checks pass in `myProdOrg`.
- DataRaptor-only collection-shape and singleton-array limitations are
  documented for review.

## Sprint references

- [Call and review notes](CALL_REVIEW_NOTES.md)
- [Daily standup](DAILY_STANDUP.md)
- [Sprint handoff](SPRINT_HANDOFF.md)

## Open sprint questions

Add unresolved cross-story questions here. Story-specific questions should be
recorded in the call/review notes and linked to the story.

- Confirm richer claim/note metadata with the live-service owners.
- Confirm Salesforce and FlexCard/consolidation use the same `cases[]` contract.
