# Sprint 15 Daily Standup

Keep this file short. Add the newest update first and retain older entries only
when they remain useful.

## 2026-07-29 - Brian-aligned mockdata and active IP validation

- Updated `MockData.LegacyCases` in `turnberryProd` so ServiceIntent
  `claims[]` is object-shaped and ServiceIntent `history[]` contains
  `when`, `owner`, and `workBasket`.
- Changed `LegacyTransformCasesV2` history mapping from the temporary
  `LIST()` default to direct `serviceIntents:history -> cases:history`.
- Updated `FilteredLookupAction.getCases` to keep old scalar claim matching
  and also match claim objects by `id` or `text`.
- Validated active IP version 19: `EOB006` returns two cases, `EOB001` and
  `EOB004` return matched cases, and no-match returns `{"cases":[]}`.
- Notes remain intentionally not over-faked; note aggregation remains a
  follow-up only if the consuming team requires merged Interaction and
  ServiceIntent notes.

## 2026-07-29 - LegacyTransformCasesV2 missing fields added

- Updated `LegacyTransformCasesV2` mapper rows used by active
  `PreMigrationCaseLookup` version 19.
- Added/fixed `caseKey`, `legacyId`, `claims`, `notes.text`, and default
  `history`.
- Validated active IP output for `EOB004`; the output now includes
  `notes.when`, `notes.author`, `notes.text`, `claims`, `history`, and
  `caseKey`.
- Updated `history` from the string `"[]"` to a real empty array `[]` using a
  Data Mapper formula `LIST()` mapped to `cases:history` with output format
  `List<Map>`.
- Remaining caveat: scalar source arrays still produce scalar/list-shaped values
  inside the mapped objects, not one object per source string.

## 2026-07-29 - DR Preview vs IP runtime validation

- Exported the live active IP and `DRTransformPremigrationcases` from the
  shared org.
- Changed `BuildMatchedResponse` to return `cases` instead of `legacycases`.
- Deployed and activated the IP/DataRaptor package successfully.
- Validated by Apex that active IP now returns root `cases`.
- Confirmed the remaining preview difference is caused by runtime scalar
  `notes[]`/`claims[]` input versus preview object-array input.
- To get preview-style `notes[{when, author, text}]` from IP, the data before
  `liftCases` must be object-shaped; direct DR mappings do not wrap scalar
  string arrays into object arrays.

## 2026-07-29 - Restored original mock payload

- Restored `MockData.LegacyCases` to the original raw API-style JSON.
- Removed the mock-normalization helper from the repo.
- Updated active `DRTransformPremigrationcasesv2` so raw `claims[]` is returned
  instead of depending on `normalizedClaims[]`.
- Validated the simplified IP with the restored mock. Filtering, flattening,
  and no-match behavior work; full object-shaped claims/notes remain a known
  OmniStudio transformation limitation without preprocessing.

## 2026-07-29 — Retrieved user DataRaptor

- Exported `DRTransformPremigrationcasesv1` from the shared org.
- Confirmed its 19 mappings match the existing compatible mapper exactly.
- Stored it separately for reference; the IP connection was not changed.

## 2026-07-29 — Retrieved LegacyTransformCasesV2

- Exported the intended inactive mapper exactly as created.
- Found invalid target JSON, wrong input root, duplicates, and missing/incorrect
  unified mappings.
- Preserved it for review without connecting it to the IP.

## 2026-07-29 — Activated LegacyTransformCasesV2

- Corrected V2 to the validated unified contract.
- Activated and connected it to IP version 15.
- Structured claims, notes, Interaction note, closed flag, and history pass.
- Four lookup regression tests pass.

## 2026-07-29 — Final mapper name

- Added unique `DRTransformPremigrationcasesv2`; v1 already existed.
- Active IP version 16 now uses v2.
- Intent notes and appended Interaction notes remain verified.

## 2026-07-28 — Expected mock JSON

- Normalized claims, notes, Interaction notes, `isClosed`, and empty history in
  LegacyCases mock data.
- Kept scalar claim IDs for the unchanged lookup filter.
- Updated and redeployed the existing compatible DataRaptor only.
- EOB006, EOB004, EOB001, no-match, and four lookup tests pass.

## 2026-07-28 — Simplified IP

- Removed both added Apex transformation actions.
- Restored `getLegacyCasesMock → liftCases → BuildMatchedResponse`.
- Existing compatible DataRaptor now reads the filtered legacy result directly.
- Multiple, one, and no-match Preview-equivalent calls work; four regression
  tests pass.

## 2026-07-28 — Existing mapper correction

- Updated `DRTransformPremigrationcasesCompatible` with the unified mappings.
- Reconnected and activated the IP using that existing mapper.
- Direct, one-case, multiple-case, mixed-note, and no-match checks pass.

## 2026-07-28 — Unified-contract closure

### Completed

- Built and deployed the compatible unified legacy Data Mapper.
- Normalized claims and merged parent/child notes before final mapping.
- Guaranteed `cases` is an array for zero, one, or multiple results.
- Passed one, multiple, no-match, and mixed-note IP scenarios.
- Exported the exact active Data Mapper into the Git deployment package.

### Remaining

- Salesforce and FlexCard owners must align to the same contract.
- A separate final org requires its authenticated alias before promotion.

### One-line update

CS-1347's legacy path now returns the full unified `cases[]` contract and passes
all closure scenarios in the shared Developer Edition.

## 2026-07-28 — Compatible DataRaptor follow-up

### Completed

- Recreated the pre-migration transform in the team-compatible older designer.
- Added `interactionId` to the unified case output.
- Reconnected and redeployed the Integration Procedure.
- Verified matching and no-match responses end to end.
- Exported the compatible DataRaptor as a deployable Git DataPack.
- Redeployed the exact exported DataPack with zero errors and reran the direct
  transform, full IP, and four Apex regression tests successfully.

### Remaining

- Confirm the final interaction-note object contract before adding
  Interaction-level notes to `notes[]`.
- Authenticate a separate production org if deployment outside the Developer
  Edition is required.

### One-line update

The compatible CS-1347 DataRaptor is active and verified in the shared
Developer Edition; the unresolved live note contract remains deferred.

## 2026-07-28

### Yesterday

- Completed CS-1347 nested claim filtering while preserving generic behavior.
- Reused `DRTransformPremigrationcases` for response transformation.
- Rebuilt, deployed, and activated `Claims_PreMigrationCaseLookup`.
- Verified two cases for `EOB006`, an empty array for no match, and four passing
  focused Apex tests.

### Today

- Prepare the final review and deployment handoff.
- Record new call/reviewer feedback before changing implementation.
- Add additional Sprint 15 stories to `SPRINT_CONTEXT.md`.

### Blockers

- None for the verified CS-1347 dev-org implementation.

### One-line update

CS-1347 works end to end in the configured dev org; filtering, transformation,
matched response, no-match response, and regression tests are verified.
