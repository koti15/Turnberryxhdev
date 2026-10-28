# CS-2050 — Host Member API response transformation

Captured 2026-10-28 from user-provided Jira screenshots. Exact full Jira title is not visible. Status: draft implementation saved; not org tested or deployed.

Objective: prepare Host Member API data for the Host Member FlexCard experience. Acceptance criteria: transform the Integration Procedure's response into the FlexCard-required structure and support as-submitted and as-adjudicated responses. The solution note explicitly requests flattening submitted and adjudicated into a flat row.

Draft artifact: [DataPack and setup](../../datapacks/CS-2050-host-member-transform/README.md). Proposed new component: DRTransformHostMemberResponse v1. All 6 visible fields from each segment are retained with submitted/adjudicated prefixes. One mapper call per API item is the implementation choice, not an explicit Jira requirement.

Dependencies: CS-2048 response handling; current intakeWizard/MembrLookup IP/version; FlexCard field contract; current org Data Mapper schema. Actual org version and runtime response wrapper remain unknown. Existing CS-1446 references document a different observed IP path; do not assume it is the target for this change.

Open questions: final UI field names, absent-segment behavior, final list node, current target IP. Validation checklist and import guidance are in the linked README. JSON shape and mapping consistency were checked during generation; Salesforce import, Preview, array orchestration and end-to-end acceptance tests remain pending.

Change history: 2026-10-28 — additive draft and synthetic fixtures created from supplied requirements and existing repository DataPack conventions. No source evidence overwritten.

Existing source: [CS-2050 handoff](CS-2050-Host-Member-Transform-Codex-Handoff.md). Display aliases and Dob suffixes follow that proposed contract; rowKey is passed through from IP input. IP generation of row keys and members-list collection remain pending.


## 2026-10-28 supersession: tested canonical-array implementation

The original single-member draft above is retained as historical evidence. The working development-org implementation uses `memberSearchMockTransform` and the existing `intakeWizard/MemberLookup` pattern. Its sanitized deployment package, Apex tests and test record are in `datapacks/CS-2050-host-member-transform/verified-2026-10-28/`.

Verified in Turnberry5 Developer Edition: two flat member rows, one adjudicated-only row retained as an array, no-match empty array, both submitted/adjudicated names, true/false values, and 2/2 Apex test methods. Member IP remains inactive. The imported live branch is empty; live API and selected FlexCard modal integration remain unverified. Full story closure and production deployment are **not** claimed.
