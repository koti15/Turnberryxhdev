# Docgen

Track the verified Document Generation implementation, learning progress, story changes, and deployment evidence.

## Overall OmniScript tree

[OMNISCRIPT_TREE.md](OMNISCRIPT_TREE.md) records the ordered visible elements. Elements 1–5: Saved evidence. Elements 6–52: Pending configuration capture. Next: IP-GetForms.

## Current status

Discovery in progress. No deployable DocGen changes have been created or validated.
The supplied screenshots show the Send Communication OmniScript designer, English, version 43, Active true. This is screenshot evidence only; the current org configuration has not been retrieved.
Element labels and their visible types are evidence of structure, not proof of behavior. Do not infer behavior from names.

See [OMNISCRIPT_STATUS.md](OMNISCRIPT_STATUS.md) for the element-by-element inventory, every captured Set Values assignment, IP/DR dependencies, and saved/pending implementation status.

## Step-by-step discovery tracker

Complete each step using actual configuration, input/output JSON, or source code. Record missing evidence explicitly.

| Step | Scope | Status | Evidence needed |
| --- | --- | --- | --- |
| 1 | User journey from Case to generated output | Pending | Runtime screens, selections, sample output |
| 2 | IP-GETCaseDetails | Partially verified | CNC_GetCaseInformation and Default invoke mode confirmed; IP v3 calls CNCGetCaseInfo; Case filter, response node and 13 formula entries captured. 32 Output mapping paths captured; exact spelling/row details and full settings still needed; Preview deferred |
| 3 | SV-InitialMapping and SV-DefaultMapping | Partially captured | Owner comparison and 16 default assignments recorded; full list coverage/conditions unverified; Preview deferred |
| 4 | Material/channel, forms, POD and letter selection | Pending | Step contents, conditions, referenced IPs/Data Mappers |
| 5 | Entity and address selection | Pending | Mappings, validation conditions, runtime JSON |
| 6 | IP-GETAPITokenData and patient demographics | Pending | Sources, IP elements, request/response and transformations |
| 7 | Paragraph selection and default token mapping | Pending | Data Mapper definition, Apex class/method, token configuration |
| 8 | AdditionalInformation and related Remote Actions | Pending | UI component configuration, manual values, final token assembly |
| 9 | Generation and review | Pending | IP definition, underlying generation call, template, final payload, sync/async conditions |
| 10 | File storage, delivery and confirmation | Pending | Actual class/methods, file links, responses, error handling |
| 11 | Practice development change | Pending | Requirement, affected components, implementation, validation |
| 12 | Deployment preparation | Pending | Exact source/export files, dependencies, target org, validation evidence |

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

See [OmniScript Set Values](evidence/OmniScript_SetValues.md) for captured expressions and 16 default assignments. Preview is deferred by user instruction. Next: material/channel properties and OmniScript IP action input/response properties.

## Single configuration record

Use spec/send-communication.partial.json as the canonical structured configuration. Update actions by elementName, Data Mappers by name, and mappings by their source/output pair; repeated screenshots must not append duplicates. Track status and link to the canonical record rather than repeating property tables across notes. Saved means evidence capture, not verified complete configuration or org implementation.
