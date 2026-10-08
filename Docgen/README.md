# Docgen

## Brian’s DocGen spike walkthrough — October 8, 2026

[Supplied call transcript](transcripts/2026-10-08-Brian-DocGen-Spike-CS-1792.md) records the group walkthrough for CS-1792. Speech-recognition errors are preserved; it is not an audio-verified transcript or a replacement for the referenced developer guide. Relevant to CS-1474, CS-1831 and CS-1832. No org changes or deployment are recorded by saving this transcript.


## October 7 CS-1474 review

Template/token metadata, partial Apex default mapping, patient-demographics wiring and visible Set Values are captured in the [canonical specification](spec/send-communication.partial.json). See [review evidence](evidence/2026-10-07-CS-1474-review.md) and [story](stories/CS-1474.md). Root memberId/claimNumber, DOS/patient-account bindings and successful runtime generation/submission remain unresolved. CNCGetCaseInfo’s existing 32 outputs and 13 formulas are already captured; do not request them again. No Salesforce changes or deployment in this Git update. Earlier status sections are historical where superseded.


Track the verified Document Generation implementation, learning progress, story changes, and deployment evidence.

## Overall OmniScript tree

Start with [CODEX_HANDOFF.md](CODEX_HANDOFF.md) for the one-to-one reconstruction and recovery sequence. [spec/send-communication.partial.json](spec/send-communication.partial.json) is the canonical captured configuration. [OMNISCRIPT_TREE.md](OMNISCRIPT_TREE.md) records all 52 ordered outer elements. Elements 1–5 have saved evidence with gaps; IP-GetForms and Step1 have partial configuration; elements 8–52 remain pending detailed capture.

## Current status

Supported partial configuration has been deployed and verified in the existing inactive Docgen/SendCommunication/English v4 in myProdOrg. This is not a completed runnable reconstruction. See the verified checkpoint in [CODEX_HANDOFF.md](CODEX_HANDOFF.md) and [deployment/captured-verification.json](deployment/captured-verification.json).

[PENDING_WORK.md](PENDING_WORK.md) records the remaining evidence and implementation gaps. Latest development scope excludes LWC and MDT creation; these remain deferred dependencies. The photographed reference is CNC/SendCommunication/English v43; it is distinct from the inactive target draft.

Element labels and their visible types are evidence of structure, not proof of behavior. Do not infer behavior from names.

See [OMNISCRIPT_STATUS.md](OMNISCRIPT_STATUS.md) for the element-by-element inventory, every captured Set Values assignment, IP/DR dependencies, and saved/pending implementation status.

## Step-by-step discovery tracker

Complete each step using actual configuration, input/output JSON, or source code. Record missing evidence explicitly.

| Step | Scope | Status | Evidence needed |
| --- | --- | --- | --- |
| 1 | User journey from Case to generated output | Pending | Runtime screens, selections, sample output |
| 2 | IP-GETCaseDetails | Partially verified | CNC_GetCaseInformation and Default invoke mode confirmed; IP v3 calls CNCGetCaseInfo; Case filter, response node and 13 formula entries captured. 32 Output mapping paths captured; exact spelling/row details and full settings still needed; Preview deferred |
| 3 | SV-InitialMapping and SV-DefaultMapping | Partially captured | Owner comparison and 16 default assignments recorded; full list coverage/conditions unverified; Preview deferred |
| 4 | Material/channel, forms, POD and letter selection | Partially captured | Material/channel tooltips, Forms IP/Data Mappers and Step1/LWC properties captured; remaining fields/conditions and POD/letter details pending |
| 5 | Entity and address selection | Pending | Mappings, validation conditions, runtime JSON |
| 6 | IP-GETAPITokenData and patient demographics | Pending | Sources, IP elements, request/response and transformations |
| 7 | Paragraph selection and default token mapping | Pending | Data Mapper definition, Apex class/method, token configuration |
| 8 | AdditionalInformation and related Remote Actions | Pending | UI component configuration, manual values, final token assembly |
| 9 | Generation and review | Pending | IP definition, underlying generation call, template, final payload, sync/async conditions |
| 10 | File storage, delivery and confirmation | Pending | Actual class/methods, file links, responses, error handling |
| 11 | Practice development change | Pending | Requirement, affected components, implementation, validation |
| 12 | Deployment preparation | Partial configuration deployed | Supported in-place patch verified; remaining exact settings, dependencies and runtime validation pending |

## Evidence record for each component

- Component name and type:
- Org/environment, version and capture date:
- Source evidence:
- Confirmed purpose:
- Execution condition:
- Input JSON and mappings:
- Referenced IP, Data Mapper, class/method or template:
- Output JSON and mappings:
- Downstream consumers:
- Error handling:
- Unknowns and next evidence:
- Verified example:

## Repository layout

- Docgen/README.md: discovery tracker and evidence index.
- Docgen/AGENTS.md: instructions for Codex working on this scope.
- Docgen/stories/: one Markdown record per development story.
- Docgen/deployment/: deployment plans, dependency lists and validation results.
- Docgen/evidence/: sanitized configuration notes and approved supporting evidence.

Create the additional directories when they contain real files. Keep Salesforce source in the project's existing source layout. The root sfdx-project.json currently declares force-app as its default package directory. Do not duplicate executable metadata under Docgen just for tracking. Determine the actual OmniStudio metadata/DataPack format from the org and repository before deciding how to retrieve or deploy it.

## Working agreement

1. Inspect one component completely before moving to the next.
2. Separate confirmed facts, open questions and proposed changes.
3. For each story, trace the affected data from its source through token assembly to template output.
4. Commit actual metadata/code alongside the story record once available.
5. Record tests and output evidence before marking development complete.
6. Deploy only when requested to a specified, authenticated target org using the verified deployment method.
7. Notes and screenshots alone are not deployable metadata.

## Incremental build handoff (2026-10-01)

See [CODEX_HANDOFF.md](CODEX_HANDOFF.md) and [partial build specification](spec/send-communication.partial.json). The user requires launch from Case. This requirement has been recorded but not implemented or validated. Current commits contain tracking and a partial specification only, not a runnable OmniScript. Obtain the actual exports before building deployable source.

Latest evidence: [CNC_GetCaseInformation and CNCGetCaseInfo](evidence/CNC_GetCaseInformation.md). 32 Output mapping paths, Options and schema captured. Confirm Blueshield key spelling, exact formulas and row-level properties before executable build. Case launcher wiring remains unverified.

See [OmniScript Set Values](evidence/OmniScript_SetValues.md) for captured expressions and 16 default assignments. Preview is deferred by user instruction. Continue using the current stopping point and explicit gaps in CODEX_HANDOFF.md and the canonical specification.

## Single configuration record

Use spec/send-communication.partial.json as the canonical structured configuration. Update actions by elementName, Data Mappers by name, and mappings by their source/output pair; repeated screenshots must not append duplicates. Track status and link to the canonical record rather than repeating property tables across notes. Saved means evidence capture, not verified complete configuration or org implementation.

## Story-focused implementation review

Use [DOCGEN_IMPLEMENTATION.md](DOCGEN_IMPLEMENTATION.md) for the incremental review of a working provider Print letter and the changes required for CS-1831, CS-1832 and CS-1474. It tracks understanding and the next screenshot; exact configuration remains in the canonical specification and CODEX_HANDOFF.md.
