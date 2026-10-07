# DocGen implementation review

Updated: 2026-10-06, America/Chicago.

## Goal and working approach

Understand the existing Send Communication implementation one component at a time, then identify the exact changes needed for CS-1831, CS-1832 and CS-1474. Start with one working Provider → Other Communication → Print letter. Review its relevant dependencies rather than collecting all 52 OmniScript elements before starting story analysis.

This document is the review guide and continuation tracker. Exact captured configuration remains in [spec/send-communication.partial.json](spec/send-communication.partial.json); [CODEX_HANDOFF.md](CODEX_HANDOFF.md) remains the complete configuration handoff. Do not copy configuration tables into this file or confuse the original source implementation with the separately reconstructed target draft.

## Stories and review order

| Order | Story | Confirmed requirement from screenshots | Implementation status |
| --- | --- | --- | --- |
| 1 | [CS-1831](stories/CS-1831.md) | Medical Records Reimbursement letter; existing correspondence and Alfresco processing | Analysis pending |
| 2 | [CS-1832](stories/CS-1832.md) | Ancillary letter instructing provider to resubmit to the appropriate Blue Plan | Analysis pending |
| 3 | [CS-1474](stories/CS-1474.md) | Free Form letter, automatic merge fields, user-entered content and recipient/address edits | Analysis pending |

Confirmed: the visible acceptance criteria use Recipient=Provider, Material Type=Other Communication and Outbound Channel=Print.
Unknown: whether these are template-only changes, whether every token exists, and whether all required Free Form behavior is already supported.
Proposed: use a working fixed-content Print letter as the baseline, then compare the three new requirements against it.

## Review sequence

| Stage | What we inspect | What we establish | Status |
| --- | --- | --- | --- |
| 1 | Existing working letter selection screen and exact template name | One concrete baseline and its source environment | Pending; next capture |
| 2 | Baseline template in the designer and related registration/filter configuration | How the template is stored, selected and made available | Pending |
| 3 | Referenced token-building IP/Data Mapper or Apex and token definitions | Exact token names, sources and required mappings | Pending |
| 4 | Generation action and its referenced component | Template identifier, token input and generated output | Pending |
| 5 | Review/address handling, print submission and storage actions | Edits, success/error behavior and existing integration reuse | Pending |
| 6 | New story Word template compared with baseline | Content, token and configuration differences | Pending |
| 7 | Story change plan, tests and deployment components | Evidence-based scope and estimate | Pending |

At each stage: identify the actual component first; inspect only that component's properties and dependencies next. Expand the review when an observed dependency requires it.

## Capture protocol

1. Send one screen or a small related set at a time, keeping the component/template name visible.
2. Include environment and active version when visible. Exact action names matter more than a screenshot of the full tree.
3. Use sanitized screenshots and sample output; exclude member/patient details, credentials and session information.
4. Explain the observed behavior in plain language and relate it to the current story.
5. Merge newly observed exact settings into the canonical configuration by identity. Refresh the handoff and update this tracker with evidence references and the next capture.
6. Do not request details already captured; first check the canonical record. Earlier reconstruction capture does not establish a working original letter-generation path.
7. Keep Confirmed, Unknown and Proposed separate. Mark development, validation and deployment complete only with corresponding evidence.

## Completed and pending

Completed:
- Reviewed the supplied requirement screenshots for the three stories.
- Identified the shared Provider / Other Communication / Print route.
- Established the incremental review order and tracking document.

Pending:
- Identify and inspect a working original Print letter.
- Inspect actual Word template contents and merge placeholders.
- Trace registration, token assembly, generation, submission and storage.
- Determine required changes per story, then ask the architect only about remaining gaps.
- Confirm the CS-1792 dependency outcome. CS-1831's screenshot shows this blocker.
- Clarify CS-1832's Details section referencing the Medical Records Reimbursement template despite its Ancillary title and acceptance criteria.
- Implementation, testing and deployment of the new stories.

Estimates remain provisional until reuse and required changes are established. Story points follow the team's scale; five points per story is not a verified commitment.

## Launch review checkpoint — 2026-10-06, 10:33 PM CT

Confirmed: the Case button and source quick action/LWC wiring are captured. The launcher checks ownership and Account presence before passing the Case ID to the OmniScript. Exact settings and screenshot references: canonical caseIntegration and the generated handoff supplement.

Story relationship: all three use this shared entry point. CS-1474 explicitly requires an owned case, which matches the visible launcher check. CS-1831/1832 mention MEA/Supervisor/Leader, but do not establish a non-owner exception; role bypass is not shown. This is a requirement comparison to revisit after the existing flow is understood, not proof a launcher change is needed.

Still unknown: first runtime screen after launch, active source OmniScript version, working template selection and generation path. Button visibility alone does not prove ITS Host restrictions inside the flow. Target recreation remains separate.

## First runtime screen captured — 2026-10-06, 10:37 PM CT

Confirmed: the original Case launch reaches Material and Outbound Channel Selection. Both fields show required indicators; Other Communication and Print are visible choices. No Recipient control or selected values are visible. Exact display observations and evidence reference are in canonical runtimeReview and the handoff supplement.

Relation to the stories: all three require Other Communication / Print. The Provider recipient handling and template eligibility are still to be traced after these selections. This screen confirms launch only; template-only scope and generation are not established.

## Select Letter captured — 2026-10-06, 10:39 PM CT

Confirmed: Other Communication / Print leads to Select Letter. A visible row displays HOSTProviderFreeformLetter under Service / ITS Host. The screen also offers an upload section described as PDF documents only, if applicable. No letter is visibly selected yet.

Story relationship: an existing free-form letter is now the concrete candidate baseline. We should follow it first even though the initial proposed story order began with CS-1831. This may reveal reusable behavior for CS-1474 and a generation path for CS-1831/1832. The matching label does not establish that CS-1474 is complete. Registration, token mapping, editable content, recipient handling and successful generation remain unverified.

Exact screen observations and evidence references remain in canonical runtimeReview and the handoff supplement. No deployment or print submission.

## Communication Address captured — 2026-10-06, 10:42 PM CT

Confirmed: the runtime journey now displays Communication Address, a checked One time Communication Address checkbox, blank addressee/address inputs and an Addressee Name required error. Exact labels, required indicators and runtime state are recorded in canonical runtimeReview and the generated handoff. No address input or successful navigation is yet captured.

Story relationship: this establishes an existing address-entry screen relevant to CS-1474's recipient/address requirement. It does not yet prove Provider-specific prepopulation, edits on the later review screen or persistence behavior. Those mappings and conditions remain unknown; no new address component can be declared necessary or unnecessary yet.

## Additional Information, Review and failure — 2026-10-06, 10:46 PM CT

Confirmed: after test address entry, the flow displays additional letter inputs, including provider/address fields, patient name, claim/authorization number and Free Form Text. Review and Submit then displays HOSTProviderFreeformLetter with a View link and attachment/return-envelope checkboxes. Confirmation displays an unable-to-send message. Exact observations are in canonical runtimeReview and the generated handoff; entered test values are omitted.

Story relationship: CS-1474 already has a candidate manual-content/address UI to inspect for reuse. The screen does not establish the Brief Description token, all automatic merge fields, final Word/PDF content or address editing at review. CS-1831/1832 may reuse the downstream generation/delivery route, but successful processing is not verified. The failure message corresponds closely to the story's failure scenario; its cause and retry behavior remain unknown.

Do not diagnose the failure from test address values alone. The failing generation/storage/delivery action and its request/response are not yet captured. A row in the review table is not proof of a valid generated PDF.

## AdditionalInformation designer checkpoint — 2026-10-06, 10:50 PM CT

Confirmed: AdditionalInformation hosts EnterAdditionalInformation with visible custom component cncSendCommunicationAdditionalInfo. The designer contains multiple headings for letter, cover letter, email and subscription; their conditions remain uncaptured. Exact Step observations are in the canonical specification and generated handoff.

Story relationship: inspect this existing custom component for the Free Form Text/manual token behavior relevant to CS-1474. The designer identity alone does not prove token-driven rendering or establish a required code change. Input parameters, JSON updates and source are the next dependency to trace.

## AdditionalInfo LWC source checkpoint — 2026-10-06, 10:53 PM CT

Confirmed: the custom LWC reads selectedTemplate and tokenInputs from OmniScript JSON. When template identity changes it clears local token state and calls getTokenDetails. Otherwise it reuses tokenInputs and, when isRefreshTokens is set, refreshes mapped values from JSON before clearing the flag. The component also handles Email/POD paths. Several alternate initialization/subscription sections are commented out; these are not active behavior.

Story relationship: existing token-state handling is a reuse candidate for CS-1474. The captured getTokenDetails section shows only the active Email To/Subject fields, not the Print branch that supplies provider/free-form fields. No template-only conclusion or API/manual token classification is yet established. Canonical lwcSourceEvidence records exact observations, including email logic without conflating it with Print.

## Manual token mechanism confirmed — 2026-10-06, 10:56 PM CT

Confirmed: getTokenDetails consumes selectedTemplate.tokens and selects names ending in _manual or _apimanual, case-insensitively. mappingName supplies initial values from OmniScript JSON. Token flags govern required/read-only state. RTB_ names choose rich-text controls and set isAsyncLetterGeneration=false; other selected tokens choose textarea controls. User edits update tokenInputs; Next validates inputs, builds tokenMapping, updates OmniScript JSON and advances. Exact rules remain in canonical lwcSourceEvidence and the generated handoff.

Story relationship: CS-1474 has an existing generic manual-input mechanism to reuse if its template defines suitable Brief Description and Free Form Content tokens. These actual definitions remain unseen, so template-only scope is still provisional. Automatic API tokens excluded from manual input filtering need separate data/generation tracing. The observed generation-mode flag also needs its downstream consumer verified.

The Preview here method navigates to the selected template's existing ContentDocumentId. This does not by itself prove personalized document preview or successful generation. Current runtime failure remains undiagnosed.

## Free-form template checkpoint — 2026-10-06, 11:01 PM CT

The template designer confirms a Microsoft Word template using JSON token mapping through the custom class CNC_CustomTokenDataExtractor and ClientSide generation. Exact settings and the 13 visible token keys are recorded once in canonical documentTemplateEvidence and reproduced in the generated handoff.

CS-1474 relationship: Free_Form_Text_apimanual is present and matches the existing LWC's manual-input suffix rule. No Brief Description token appears in this displayed list. Inspect the actual Word content and extractor mapping before deciding whether to add a token or change code. Empty Token JSON strings do not establish missing runtime data. Required/read-only flags and mappingName are not shown here.

This confirms an existing template and custom mapping dependency, but does not verify all automatic merge fields or resolve the observed send failure. Successful generation, print processing, case association and storage remain unverified.

## Custom extractor checkpoint — 2026-10-06, 11:05 PM CT

CNC_CustomTokenDataExtractor copies input.tokenMapping into output.tokenMap. No automatic field retrieval or IP call appears in the displayed class. The declared IP-name constants are unused in the visible methods. Exact contract and dispatch details are stored in canonical apexSourceEvidence and the generated handoff.

The LWC's tokenMapping output matches this extractor's input key, establishing a compatible contract; the actual generation call and automatic-token enrichment still need tracing. CS-1474's manual content has an existing path to reuse, but the full set of merge values is not yet verified.

The getTokenData helper initializes and returns false; invokeMethod ignores that return and returns true unless an exception is caught. Record this behavior without treating it as the cause of the observed send failure.

## Selected forms action checkpoint — 2026-10-06, 11:08 PM CT

RA-InsertSelectedForms calls CNC_SendCommunication.createAttachments with selectedForms and the Case ContextId. Its displayed condition is Forms OR Documents, excluding our Other Communication selection. Exact configuration is stored in canonical confirmedActions and reproduced in the generated handoff. The method source and response transformations remain unreviewed.

For CS-1474/1831/1832's Other Communication / Print path, this action is not currently a required implementation dependency based on the displayed condition. The visible tree continues through IP-DeleteLetterData and IP-GenerateLetterinAsync, followed by generation options and review; their names alone do not prove behavior.

## Async generation checkpoint — 2026-10-06, 11:10 PM CT

IP-GenerateLetterinAsync passes selected template ID, Case ContextId and tokenMapping as tokenDataMap to CNC_AsyncLetterGeneration. PDF output is requested. The active version 3 IP contains parameter setup, an omnistudio.DocumentServiceGateway.generateDocumentWithTokenData remote action and a JSON response exposing jobId and asyncErrorMessage. Exact readable mappings are in the canonical specification and generated handoff.

This provides a generation mechanism that may be reusable across the three stories. It does not establish that the observed runtime used this route. The template has ClientSide configuration while this IP describes server-side generation; inspect the outer condition and synchronous branch before concluding which route applies. No automatic merge-field lookup appears in the supplied internal configuration.

The parameter formulas and output formulas are clipped. Their defaults and success/error logic remain unknown. The actual runtime response, job completion, personalized PDF, print delivery and storage are still unverified.

## Next item to send

Stay on the OmniScript IP-GenerateLetterinAsync action and send Conditional View plus Send/Response Transformations. This tells us whether the current free-form letter uses this branch and where its result is stored. After that, use Edit as JSON for the IP's clipped parameter/output formulas and remote action transformations if needed; no need to resend the already captured payload.
