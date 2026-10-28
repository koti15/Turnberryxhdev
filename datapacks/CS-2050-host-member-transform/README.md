# CS-2050 Host Member transform

Draft component: `DRTransformHostMemberResponse`, version 1, standard OmniStudio Transform DataPack. Built using the repository's existing OmniDataTransform/OmniDataTransformItem format. Not imported, previewed, or deployed in Salesforce.

## Contract and integration

This mapper accepts ONE object containing submitted and/or adjudicated, and emits ONE flat object with 17 fields. Preserve the API array at the Integration Procedure layer: loop over each response item, pass the current item as the mapper input, and collect each output into the FlexCard list. Do not pass the entire bare array directly to this single-item mapper. This explicit item boundary prevents values from different members being paired.

Intended consumer from the supplied story: intakeWizard/MembrLookup. Current target IP name/version, response node and FlexCard bindings must be inspected before wiring. No existing IP or FlexCard is modified.

Both sets of values remain separate; there is no adjudicated-over-submitted fallback, comparison, deduplication or filtering. Field names are proposed until confirmed with the FlexCard owner. Missing/null fields have no explicit default; IsNullInputsIncludedInOutput is false. Exact omitted/null serialization must be verified in Preview. Boolean false must remain a boolean.

## Import and validate

1. Import the DataRaptor folder using the project's established DataPack tooling into DEV. Verify the target org supports the standard object schema used here; actual org release is unknown.
2. Open DRTransformHostMemberResponse and preview with the supplied synthetic SampleInputJson. Compare with TargetOutJson; these are reference fixtures, not runtime test results.
3. Preview submitted-only, adjudicated-only, missing/null fields, false and true booleans, and empty objects. Confirm required behavior with CS-2048.
4. Configure a draft IP loop and mapper action after the API response. Validate a two-member array using distinct subscriber IDs, plus an empty array, and ensure one output row per input item with no cross-member mixing.
5. Confirm final FlexCard bindings and list node, then test both mock and live paths where available. Activate only after DEV validation.

All sample values are synthetic. No screenshot member values or internal attachments are included.

## Existing CS-2050 handoff alignment

See [existing handoff](../../CallIntake/References/CS-2050-Host-Member-Transform-Codex-Handoff.md). The mapper includes subscriberId, firstName, lastName and dob display aliases from submitted (provisional precedence), submittedDob/adjudicatedDob, and a rowKey passthrough, for 17 mappings total. Six values from each side are retained. The IP MUST supply a unique deterministic rowKey per item, such as a lookup key plus the original 1-based array index; never use subscriberId or mockKey alone. The mapper does not generate row keys. Collect outputs under members, including an explicit empty members array for no matches. The existing memberSearchMockTransform is not overwritten.

The handoff's IP wiring, rowKey generation, mock/live orchestration and selected modal checks are integration work still pending an authorized org export. This isolated mapper draft does not claim those acceptance checks pass.


## 2026-10-28 supersession: tested canonical-array implementation

The original single-member draft above is retained as historical evidence. The working development-org implementation uses `memberSearchMockTransform` and the existing `intakeWizard/MemberLookup` pattern. Its sanitized deployment package, Apex tests and test record are in `datapacks/CS-2050-host-member-transform/verified-2026-10-28/`.

Verified in Turnberry5 Developer Edition: two flat member rows, one adjudicated-only row retained as an array, no-match empty array, both submitted/adjudicated names, true/false values, and 2/2 Apex test methods. Member IP remains inactive. The imported live branch is empty; live API and selected FlexCard modal integration remain unverified. Full story closure and production deployment are **not** claimed.
