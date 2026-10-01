# Case-based DocGen build handoff

## User request

Build and commit a reproducible Send Communication OmniScript incrementally, using verified configuration only. It must launch in the context of the Case object. Support a separate Codex session working from this repository.

## Current deliverable

Docgen/spec/send-communication.partial.json records screenshot-confirmed values and missing configuration. It is a build specification, not an importable OmniStudio DataPack or Salesforce metadata file. No runnable OmniScript or Case launch component has been built.

Confirmed first action:
- Element name and field label: IP-GETCaseDetails.
- Element type: Integration Procedure Action.
- Integration Procedure: CNC_GetCaseInformation.
- Invoke Mode: Default.

Case is a confirmed user requirement, not a verified existing launcher. Do not treat the open Case tab in the screenshot as proof of record context wiring.

Repository inspection on 2026-10-01 found existing Apex source and unrelated DataPacks, but no exported Send Communication OmniScript, CNC_GetCaseInformation, Case quick action, or Lightning record page. The complete recursive tree was inspected; it was not truncated.

## Next implementation steps

1. Read Docgen/AGENTS.md and README.md.
2. If the user's Codex environment already has authorized Salesforce access, retrieve the actual Send Communication OmniScript and CNC_GetCaseInformation with their dependencies. Confirm Type/SubType, runtime and export format first. Otherwise ask for the exports.
3. Inspect all properties of IP-GETCaseDetails. Record exact Case input and output mappings; do not assume ContextId, recordId or caseId is the input key.
4. Commit retrieved source in the established project layout and document its exact paths here. Keep baseline source separate from development changes.
5. Inspect or build the Case launcher using the verified runtime and OmniScript identity. Choose the launch mechanism with the user if none exists. Do not modify a guessed Case page or layout.
6. Implement incrementally on a dedicated working branch; record each completed component and tests.
7. Do not activate, send email, upload files, or deploy until the user requests the relevant operation and the target is known.

## Case integration acceptance criteria

- Launch from a Case record.
- The current Case record identifier reaches the OmniScript and CNC_GetCaseInformation through the verified mapping.
- Two different Cases produce their own corresponding data, without stale context.
- Missing or invalid context is handled visibly without generating or delivering a document.
- Validate as the intended agent user, not only as administrator.
- Identify where generated files link to the Case and verify it.
- Keep launch/access metadata and all dependencies in the deployment scope.

## Immediate evidence request

Either provide the exported Send Communication OmniScript plus CNC_GetCaseInformation, or send the lower sections of IP-GETCaseDetails properties showing input/output settings and execution conditions. Full exports are preferable for a faithful runnable build.
