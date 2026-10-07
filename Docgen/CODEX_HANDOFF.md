# Send Communication: single-file working record

## Latest source review — October 7, 2026, 6:03 PM CT

CS-1474 investigation progressed through template selection, token metadata, Apex default mapping and patient demographics. CNCGetCaseInfo already has 32 captured output rows; review those before requesting more screenshots. Next trace root memberId/claimNumber and final tokenMapping. Root memberId/claimNumber and DOS/patient-account bindings remain unresolved. This supersedes earlier paused-at-RA continuation points. No org changes or deployment in this capture. See [latest evidence](evidence/2026-10-07-CS-1474-review.md).


Updated 2026-10-01. This file contains the reconstruction instructions, completed capture work, pending gaps and all structured configuration recorded so far. Codex can start and continue from this file.


## Case launch path captured — 2026-10-06, 10:33 PM CT

Confirmed from source screenshots: Case quick action and dynamic visibility, launcher ownership/Account checks, OmniStudio wrapper target and Case ID navigation input. Exact configuration is in canonical caseIntegration. This resolves the previously wholly unknown source launch mechanism; full metadata/source and target deployment remain unverified. No post-click runtime screen or successful letter generation captured. Next: click the existing Case action and capture its first screen. Prior launcher-gap statements below are historical where superseded.

## Seven-element visual review ? 2026-10-01

Created preview/first-seven-layout.html to show captured outer order and user-facing Material/Step1 labels. Explicit visual review only; not Salesforce execution, not a deployable exact replica. Uncaptured message content/types, headings/visibility, stored values/defaults and radio identities remain unresolved; no Salesforce configuration changed in this operation. The visual includes those gaps visibly rather than inventing their settings. Use it to review supplied text/order without treating it as completed implementation.


## Visible-tree implementation failure confirmed ? 2026-10-01

User reports visible OmniScript still does not match supplied reference. Direct org hierarchy audit confirms MaterialAndCommunicationChannel has ZERO child elements; Step1 has only CustomLWC4 and CustomLWC2 out of 11 captured layout items. Existing Step1 LWC parents/orders 6 and 9 and exact input mappings are correct. Both Steps and LWC children enabled, script inactive. Dependency deployments, formula storage and parent Description updates do not solve the missing visible tree and must not be presented as seven-step completion. See deployment/visible-tree-audit.json.

Canonical Step records still have null names/types for headings/guidance and messaging/line-break types, null radio identities, unverified stored option values/defaults and condition types. These are actual capture gaps, not deployment errors. No further configuration writes made in this audit because no exact new evidence arrived; no invented components or destructive removal of prior backlog placeholders. Remaining blocker for visible reconstruction is original Step child definitions/export or exact evidence for these specific properties. Preserve all already captured layout labels, choices, tooltip text and LWC mappings; do not request them again.


## Latest seven-step updates and timestamp verification ? 2026-10-01, 8:24 PM CT

Pulled main 7bb80c3 and read the newer completed Documents relationship and nine Header record definitions. Deployed all nine Headers (Forms/Documents/Letters Department, Group, Name) and Documents Master reference. Metadata job 0Afbm00000hrcw1CAA Succeeded, 10/10 components, zero errors. Independently compared all nine fields for each Header and confirmed Documents Master DeveloperName Send_Communication. All 16 captured Documents values are now deployed; prior Master-reference-missing statements below are historical. Header record values supplied in this batch must not be requested again.

Applied the already-captured 13 exact CNCGetCaseInfo formula expressions/result paths/order and User extract filter $Vlocity.UserId to existing mapper 0jIbm000000MlGPEA0 using idempotent scripts/docgen/apply_case_formulas.apex. Created 13 missing formula rows and one User extraction row; existing output rows preserved. New rows remain IsDisabled=true because dependent Account/Case fields/extraction validation remains unresolved; stored configuration is not executable completion. Script remains inactive. Initial Apex transaction rolled back on Description length, corrected to under 255 chars and successfully applied.

User reported seeing parent Last Modified at 4:18 PM. Direct query confirmed previous parent timestamp 2026-10-01T21:18:39Z (4:18 PM CT). Prior child/LWC/MDT updates did not modify that parent record. Updated the actual draft Description to reflect deployed scope and remaining gaps; parent LastModifiedDate now 2026-10-02T01:24:22Z (October 1, 8:24 PM CT). Same existing Docgen/SendCommunication/English v4 ID 0jNbm000000gie9EAA; no new script/version created. Independent verification, IDs and exact stored formulas: deployment/latest-seven-step-verification.json. This timestamp update is a status-description update, not proof all seven steps are complete. Step tree/control gaps remain as previously audited, runtime Preview deferred, no upload/generation/delivery.



## Master Entity Type captured — 2026-10-01, 8:24 PM CT

Latest screenshot confirms CNC_Master_Attributes__mdt.Send_Communication → Entity_Type__c = Member. The prior statement that all Master custom values were off-screen is superseded. Master schema/field count remains unverified; do not assume additional fields or ask to repeat this value. Forms/Documents/Letters Line values and nine Header records remain capture-complete. This checkpoint records evidence, not deployment.

## Documents 15 captured values deployed ? 2026-10-01

Applied latest 8eb3c22 evidence to the same Documents record. Deployment 0Afbm00000hr02kCAA Succeeded; independently verified all 15 captured scalar values. Only CNC_Master_Attribute__c portable reference remains uncaptured. Prior seven-value/nine-missing checkpoint is superseded. Other Header/Button/Search record values and uncaptured schema/full original LWC dependencies remain pending. Both scoped Step1 LWCs deployed and enabled; script inactive.


## Documents partial record deployed ? 2026-10-01

Merged latest Documents evidence (main 4d31ba9). Created CNC_Line_Attributes.Send_Communication_Documents with seven captured values only; independently verified all seven. Job 0Afbm00000hrWDtCAM Succeeded, record ID m07bm00001Km1sXAAR. Nine fields remain uncaptured, including portable Master reference, selectable/UI type and display flags; no Forms/Letters settings copied into Documents. This is partial configuration and does not unblock the full chain. See deployment/mdt-documents-deployment.json. Prior statements that no Documents values are available are historical and superseded for those seven values.


## Forms/Letters all captured values deployed ? 2026-10-01

Applied user-confirmed Is_Selectable__c=true and Record_Limit_Per_Page__c=50 to both records, deployment 0Afbm00000hrVuXCAU Succeeded, 2/2, zero errors. Independently queried both values and retained prior 14-value verification: all 16 captured custom values now verified. Forms ID m07bm00001KldNeAAJ; Letters ID m07bm00001KldNfAAJ. Prior two-field-missing statements below are historical and superseded; do not request these values again. Result: deployment/mdt-forms-letters-completion.json. Documents and Header/Button/Search record values, Search four remaining fields, Website schema/records, full original Master schema and Header Type_Attribute_Target__c mismatch remain pending. Script inactive; both scoped Step1 LWCs enabled. Full original LWC integrations remain pending.


## Forms/Letters metadata deployment follow-up ? 2026-10-01

Concurrent main updates through 88f985c merged without losing source/deployment work. Newly captured Forms/Letters values allowed deployment of the remaining five fields: both Master relationships and three Line picklists. Also created CNC_Master_Attributes__mdt and its Send_Communication identity record to satisfy the known captured reference; full Master custom schema/record properties remain uncaptured. Picklists contain captured FlexCards, Check Box/Radio, Datatable values only, restricted as required by Salesforce, no default. Master labels/visibility and technical reverse relationships are development choices, not complete original schema.

Created Send_Communication_Forms and Send_Communication_Letters with the 14 captured values each. Is_Selectable__c and Record_Limit_Per_Page__c were omitted, remain unresolved, and must not be treated as captured defaults. Documents record custom values remain unavailable. Across Button/Header/Line/Search, 34 field definitions are now deployed (Button 7/7, Header 9/9, Line 16/16, Search 2/6); prior five-field-pending checkpoint below is superseded. Records remain partial, not fully functional Forms configuration.

Metadata deployment 0Afbm00000hqeS2CAI Succeeded. Report and IDs: deployment/mdt-forms-letters-deployment.json. Independent SOQL comparison verified all 14 captured values on both records and Master DeveloperName association: deployment/mdt-forms-letters-verification.json. Earlier attempts failed and rolled back due to unsupported non-restricted MDT picklists and reference serialization; fixed both. Initial broad customMetadata selection included an unrelated existing MockData file in a rolled-back attempt; successful deployment used only three explicit CNC record paths. CLI locale Finalizing error occurred after submission; queried actual job to confirm success rather than redeploying. No unrelated successful metadata changes.

Both scoped Step1 LWCs remain deployed and enabled with original input mappings; v4 script stays inactive. Broader original LWC integrations are missing and explicitly not implemented. Remaining MDT needs: two Forms/Letters fields, Documents record values, Header/Button/Search record field values, other four Search fields, Website schema/records, original Master schema/values and Header Type_Attribute_Target__c mismatch. No empty executable dependency substitutions, no Preview, file upload, generation or delivery performed.

## LWC and MDT implementation checkpoint ? 2026-10-01

Latest user instruction supersedes prior LWC/MDT deferral. Source located directly in target org: cncDynamicTableSections and cncattachments had commented HTML and JS. Retrieved both, extracted source, and preserved full originals in evidence/lwc-original/. Target names are cncDynamicTableSections and cncAttachmentsUploadSection. Full-source deployments failed and rolled back: missing CNC_AttachEntitiesController, ClaimLoadTimeController, FeatureToggleController, CNCAttachmentsUploadSectionController, cncAttachCaseModal and cncUpdateDocumentProperties. External-document labels/schema/services are also not supplied. No fake controllers or empty integrations were introduced.

Implemented and deployed an explicitly scoped development adaptation for the captured Step1 path: forms table consumes Columns/responsedata, supports filter/sort/pagination/preselection and preserves SelectForms selectedForms/isFormSelected/isFormshasAttachments/preSelectedForms output behavior. PDF upload uses currentrecordid/uploadforms, single upload, native Salesforce files, 4MB ContentSize verification via UI API, and accepted uploadedDocumentIds/isDocumentUploaded outputs. File-size validation occurs after native upload; oversized files remain Salesforce files but are not added to communication output. Broader claims/POD/entity/modal/Alfresco functions from original source are NOT implemented. Original production source must be restored with its real dependencies for those use cases.

LWC deployment 0Afbm00000hqy2aCAA Succeeded, 2/2 components. IDs: cncDynamicTableSections 0Rbbm000005l0uXCAQ; cncAttachmentsUploadSection 0Rbbm000005l1iXCAQ. Enabled existing CustomLWC4 0kEbm000002YXXVEA4 and CustomLWC2 0kEbm000002YXXWEA4 in the same v4 draft using scripts/docgen/enable_step1_lwcs.apex, preserving exact captured mappings. Independently queried children enabled and script 0jNbm000000gie9EAA inactive. Local behavior checks passed selection across pages/deselection/filtering and upload-size boundary/output handling; no actual upload or runtime Preview. See deployment/lwc-deployment-result.json and step1-lwc-verification.json.

MDT deployment 0Afbm00000hrTO5CAM Succeeded: 29 captured field definitions across existing Button/Header/Line/Search types, 33/33 components including types, zero errors. Initial attempt failed and rolled back because one generated reverse relationship exceeded 40 characters; shortened technical relationship names and redeployed successfully. See deployment/mdt-captured-source.json and mdt-deployment-result.json for exact fields/IDs. Development choices: DeveloperControlled (unmanaged equivalent; capture Upgradable is managed-package terminology), checkbox false defaults and generated relationship names. Five field definitions remain pending: two Master metadata relationships (target type identity/schema unavailable), three Line picklists (values unavailable). Search inventory is still 2/6; Internal/External Website schema not captured; Header Type_Attribute_Target__c source mismatch unresolved. Record name inventories have null fieldValues: NO metadata configuration records created from names alone. Forms IP execution remains blocked by missing record values and schema gaps. Field access issue from prior checkpoint remains unresolved; previous permission-set action was rejected by automatic approval review.

Historical absent-LWC/MDT-shell statements are superseded only for the above deployed scope. Captured CNCGetCaseInfo formulas and other seven-element gaps remain separate pending implementation; no completed runnable OmniScript claim.


## Forms/Letters record values complete — user confirmation, 2026-10-01

The user confirmed the final two queried values for both Forms and Letters. All 16 custom field values for these two records are now captured in the canonical specification. Do not request their record values again. Documents record values and other previously recorded dependency gaps remain pending. Capture completion does not establish deployment or runtime verification.


## Documents record capture — 2026-10-01, 8:02 PM CT

Seven of sixteen Documents custom field values are captured from IMG_CC79B120-66C2-42C0-B5ED-BF2E4CC418D7.jpeg and IMG_280CA63E-6012-4FF6-AA7D-BCF3533D27CA.jpeg. See canonical recordInventories and generated configuration below. Nine fields remain unresolved, including the portable Master DeveloperName and clipped Selectable_Type__c. Forms and Letters remain 16/16 complete. No deployment.


## Documents remaining columns captured — 2026-10-01, 8:03 PM CT

IMG_78BFB5BB-59D1-4320-ADE7-4E874E9BB1A6.jpeg resolves eight more Documents field values in the canonical record. Documents is now 15/16; only CNC_Master_Attribute__c referenced DeveloperName remains pending. Do not request the other fifteen values again. Forms and Letters remain complete. No deployment.


## Forms, Letters and Documents record values complete — 2026-10-01, 8:05 PM CT

IMG_1DEB262E-FB1F-4515-9017-91CB1384832F.jpeg confirms Documents references CNC_Master_Attributes__mdt.Send_Communication. All sixteen custom field values for each of Forms, Letters and Documents are now captured. This supersedes earlier pending lists for these three records. Do not request these values again. Remaining MDT work includes linked Header/Button/Search records, Master record settings/schema, missing Search and Website schema details and required field editor settings. No deployment claimed.


## Header records and empty Button/Search results — 2026-10-01, 8:11 PM CT

Nine Header records (three each for Forms/Documents/Letters) are captured from the Excel result screenshot. Six have all nine custom fields captured; three Department records have clipped Response_Label__c text and only that value remains unresolved. Button and Search relationship-filtered queries each returned zero rows; those scoped results are captured, not missing evidence. Master-level Buttons and the Master record settings are not resolved by these zero results. No deployment claimed.


## Department query mismatch and Master identity — 2026-10-01, 8:14 PM CT

New Header screenshots used CNC_Line_Attributes__r.DeveloperName IN ('Documents_Department','Forms_Department','Letters_Department'), rather than filtering Header DeveloperName directly. Six different Header identities returned; their relationship cells are blank, and they do not resolve the three pending Department labels. Preserve the scoped observation in canonical queryResults; do not apply these rows to Forms/Documents/Letters. Correct query: SELECT DeveloperName, Response_Label__c FROM CNC_Header_Attribute__mdt WHERE DeveloperName IN ('Documents_Department','Forms_Department','Letters_Department'). Master query confirms Send_Communication identity, label Send Communication, en_US and blank namespace; custom fields remain off-screen. Continue by scrolling its result right. No deployment.


## All nine section Header records complete — 2026-10-01, 8:19 PM CT

IMG_E72A1B8D-3153-4D59-AE16-CA98F13660EB.jpeg directly queries Header DeveloperName and confirms Response_Label__c=Department for Documents_Department, Forms_Department and Letters_Department. All nine Header records linked to Forms/Documents/Letters now have all nine custom field values captured. Prior clipped-label and incorrect-filter checkpoints are superseded for these labels. Do not request these values again. Forms/Documents/Letters Line records remain 16/16 complete; scoped Button/Search zero results remain captured. Next: Master Send_Communication custom settings, still off-screen. No deployment claimed.

## Evidence reconciliation — 2026-10-01, 7:14 PM CT

The prior pending lists mixed uncaptured evidence with implementation work. Exact CNCGetCaseInfo formulas 1–13 and the User filter were already supplied in PENDING_WORK.md but had not been copied into the canonical specification. They are now reconciled in the canonical record and the complete configuration below. The 32 Output mapping paths, Options and prior zero-row Preview observation were already captured; do not request them again. Case Sub Entity and development Member Plan deployment checkpoints above remain valid; formula implementation is separate pending work.

Historical statements below that all formula expressions are null or User filter quoting is missing describe the earlier checkpoint and are superseded by this reconciliation. Before any further screenshot request, audit existing evidence and name the exact absent property. Do not mark captured-but-unimplemented work as missing evidence.

## Audit of all seven requested areas — 2026-10-01, 7:16 PM CT

Checked canonical JSON, PENDING_WORK.md, CODEX_HANDOFF.md, OMNISCRIPT_STATUS.md and OmniScript_SetValues.md. This audit concerns existing recorded evidence, not a claim of complete screenshot coverage or runtime behavior.

| # | Area | Already captured; do not request again | Specific remaining evidence / work |
| --- | --- | --- | --- |
| 1 | IP-GETCaseDetails | Action name/label, CNC_GetCaseInformation reference, Default invoke mode; IP DR action's caseId input and response node | OmniScript action input/response wiring and execution condition are still null. IP DR response settings do not establish OmniScript action settings. Case launcher also unresolved. |
| 2 | SV-InitialMapping | Owner-comparison assignment, exact expression and Use Expression=true | Assignment is recorded as configured. No specific missing assignment identified. Verify implementation from source; only element-level conditions/list coverage remain unverified. Do not request the assignment again. |
| 3 | MaterialAndCommunicationChannel | Title, display choices, both Email/Print rows and four condition tooltip texts | Child control names/types, option stored values/defaults, condition types and blank first comparison value of guidance remain unverified. Message condition is captured; message content/enforcement is not. Request only the absent properties, not all choices/conditions again. |
| 4 | SV-DefaultMapping | All 16 assignment names/displayed values; seven have captured mode settings and are recorded as configured | Nine summary-only assignments still have useExpression=null; verify their editor modes, not their values again. Runtime type of literal false and subscription token source verification are separate gaps. |
| 5 | MMR email | Action/mapper names, DeveloperName input, displayed MMR_EMAIL_TEMPLATE literal; EmailTemplate extraction and HtmlValue/Subject output paths | Actual template content, exact literal interpretation, action response/conditions and mapper options remain uncaptured. Do not request already captured output paths. |
| 6 | Forms dependencies | IP four-element order, action settings/response, Header mapper 11 formulas/46 mappings/Options, links eight mappings and displayed filter sequence | Profile source step, details/purpose of two blank-source output rows and links OR/AND grouping/false literal semantics remain unresolved. MDT/LWC implementation deferred. |
| 7 | Step1 | Eleven visible layout items, known child names, Step basic settings, both LWC names and captured input properties | Unnamed headings/guidance identities/types, messaging/line-break properties, remaining Step settings and conditions remain absent. LWC inputs must not be requested again; source/dependencies are deferred. |

CNCGetCaseInfo formulas 1–13, User filter, 32 Output mappings and Options are captured and reconciled. Formula implementation is separate pending work. Case Sub Entity and development Member Plan have recorded successful deployment checkpoints. Neither should be requested again as missing captures.

Before requesting images, name the absent field and its existing evidence path. Generic "complete=false", unvalidated behavior or historical blockers alone do not justify another capture request.

## Custom Metadata capture — 2026-10-01, 7:36 PM CT

New screenshots establish complete field inventories for CNC_Button_Attribute__mdt (7/7), CNC_Header_Attribute__mdt (9/9) and CNC_Line_Attributes__mdt (16/16), and 2/6 fields for CNC_Search_Attributes__mdt. Exact API names, visible types/lengths, indexed flags and metadata relationship targets are merged into the canonical JSON and the generated configuration below. This is captured evidence, not deployment.

Partial Manage Records inventories contain 12 Button record identities and 54 Header record identities, deduplicated by DeveloperName. No record detail values are shown; none of these names alone proves that it belongs to Send Communication. Do not request these same field-list captures again.

Remaining MDT evidence: Search's other four fields; Internal/External Website field inventory; CNC_Master_Attributes__mdt relationship-target schema; field editor details/defaults/picklist values where required; and actual values for the records used by Forms/Documents. Preserve the Header mismatch: its captured 9-field list has no Type_Attribute_Target__c, while the recorded mapper references that field. Verify rather than inventing it.

No LWC source is supplied in this batch. LWC/MDT implementation remains deferred under the existing scope.

## Send Communication Line record identities — 2026-10-01, 7:48 PM CT

Two Inspector result screenshots identify 11 Send Communication Line records, including exact DeveloperNames Send_Communication_Forms and Send_Communication_Documents. These identities are now recorded under canonical customMetadataEvidence.recordInventories. Visible language is en_US and namespace column is blank. Custom configuration columns are off-screen, so fieldValues remain null. This batch does not resolve record settings or deploy records. Next query can restrict DeveloperName to those two records and capture custom fields without repeating the unrelated rows.

## Forms and Letters Line values — 2026-10-01, 7:51 PM CT

New Inspector screenshots query Send_Communication_Forms and Send_Communication_Letters, not Documents. Nine custom fields per record are now captured in the canonical record. Forms uses Selectable_Type__c="Check Box"; Letters uses "Radio"; both show Filter By and Pagination=true, Row Number/Search/ViewAll=false, UI_Type__c="Datatable", isAccordian__c=false and matching Section_Name__c values. Seven other custom fields remain off-screen or clipped. Record_Limit_Per_Page__c's trailing visible 0 must not be treated as its complete value. Documents custom values are still uncaptured. No records are deployed by this update.

## Unassigned Line query observation — 2026-10-01, 7:53 PM CT

IMG_FF76DE60-C085-4B1E-BEB0-9F7A9707D0C3.jpeg shows two rows with Component_Name__c and Query_Clause__c blank, Component_Type__c=FlexCards and Order__c=1. Both share a Master reference. DeveloperName is omitted and WHERE clause is cropped, so do not merge these values into specific records yet. Next capture must include DeveloperName plus Is_Selectable__c, Record_Limit_Per_Page__c and the Master's DeveloperName. Observation preserved in canonical customMetadataEvidence.unassignedQueryObservations; no deployment.

## Forms/Letters Master and component settings resolved — 2026-10-01, 7:55 PM CT

IMG_54F0625D-D0F5-4CF5-8FB0-87CAA9385FAE.jpeg shows the Forms/Letters WHERE filter and identical values in both rows: blank Component_Name__c, Component_Type__c=FlexCards, Order__c=1, blank Query_Clause__c and Master DeveloperName=Send_Communication. These are merged into both canonical records, resolving the earlier unassigned query observation without relying on row order or org IDs. Capture now covers 14/16 custom fields per record. Only Is_Selectable__c and Record_Limit_Per_Page__c remain absent for Forms/Letters. Documents still pending. No deployment.

## Current user instruction: build and deploy the captured portion

On 2026-10-01 the user explicitly instructed: "Give then what ever you had so codex will deploy to my org".
This authorizes development and deployment of the captured portion in the user's connected target org. Earlier no-deploy wording in this document and historical safety.deploy=false in the evidence snapshot are superseded for this requested operation. Activation and real document/email delivery remain unrequested.

1. Pull the latest main branch in koti15/Turnberryxhdev. Read this entire file and applicable repository instructions.
2. Resolve the target org from the existing Codex session's explicit org selection. Verify authentication, identity and installed OmniStudio runtime/namespace without exposing credentials. If there is no unambiguous target, request only the target alias/selection; do not choose an org from screenshots.
3. Inspect the existing partial draft and source/export format. Reuse and correct it, preserving unrelated work and the photographed reference. Retrieve existing referenced components when available.
4. Develop real OmniScript elements in the captured outer order: IP-GETCaseDetails, SV-InitialMapping, MaterialAndCommunicationChannel, SV-DefaultMapping, ExtractEmailBodyForMMR, IP-GetForms, Step1. Apply all recorded properties and child configuration below.
5. Include the dependency chains:
   - IP-GETCaseDetails → CNC_GetCaseInformation → DR-E-GetCaseInfo → CNCGetCaseInfo.
   - ExtractEmailBodyForMMR → GetMMREmailTemplate.
   - IP-GetForms → CNC_GetEmailFormsDetails → its ordered SV-DefaultMapping, DR-E-GetHeaderAttributes, DR-E-GetForms, ResponseAction; mapper references CNCGetHeaderAttributes and CNCGetInternalAndExternalLinks.
   - Step1 → existing verified cncDynamicTableSections and cncAttachmentsUploadSection, with the recorded input properties.
6. Convert recorded configuration into the actual supported metadata/DataPack format. These notes and the partial JSON are not deployable source. Do not invent exact expressions from behavior-only descriptions, radio stored values, action mappings, Case wiring or custom LWC source.
7. Resolve missing exact settings from existing authorized org/source where possible. A specific unresolved setting must not stop independent confirmed development. Deploy only components that pass the required schema/dependency checks. Do not substitute empty executable actions or report partial components as exact replicas.
8. Validate and deploy the resulting supported source using the verified runtime's deployment method. Keep the new script inactive. Inspect deployed configuration and dependency references; Preview remains deferred.
9. Commit actual deployable source, the deployment result/identifier, target identity, actual deployed component identifiers and remaining blockers. Update this same MD with configured, deployed, partial and pending statuses. A documentation commit or validation-only result is not deployment success.

## Immediate implementation requirement

The user rejected a draft described as "Partial reconstruction from supplied evidence. Inactive, incomplete actions ..." with only the outer Step/Set Values structure visible. Creating labels or empty Steps does not satisfy this request.

The requested deliverable is actual configured OmniStudio components in the existing new draft, matching the captured reference portion. Do not stop at another tracker, skeleton, plan or documentation commit.

1. Retrieve/inspect the existing draft and its committed source in the connected Codex environment. Reuse that draft; do not create another copy.
2. Expand each of the first seven captured outer elements and compare its actual nested contents and properties against the detailed configuration below. Do not assume a collapsed step is empty; inspect it.
3. Implement every confirmed setting that can be implemented from this evidence. Include Set Values assignments, Integration Procedure/Data Mapper definitions and mappings, material/channel controls and captured conditions, and the Step1 custom LWC references/input properties. Use available existing custom components where their source and identity are verified.
4. Missing fields block only the specific affected configuration. Continue independent confirmed implementation. Do not substitute empty actions or invented defaults for unresolved fields.
5. For outer elements 8–52, the tree inventory is a reference backlog. An empty Step or action bearing its name is not a completed component. Do not create additional placeholder elements merely to reproduce the tree.
6. Check the actual draft after writes: expand MaterialAndCommunicationChannel and Step1 and inspect the child controls/properties; inspect each captured action's referenced IP/mapper and input/response settings. Report real component identifiers, source paths and confirmed property matches. This is configuration verification; user-deferred Preview remains deferred.
7. Mark each component separately: configured from evidence, partially configured with named blockers, or not implemented. Do not describe an inactive draft as a completed runnable replica. Do not activate or perform delivery operations.

The Case launcher and uncaptured settings still need actual source or exact evidence. They do not justify omitting already captured fields, mappings or Step children.

## Member Plan dependency deployment ? 2026-10-01

User explicitly requested creating the missing Member Plan target and lookup. No existing EntityDefinition with label Member Plan was found in myProdOrg. Created development object Member_Plan__c (ID 01Ibm00000DBOltEAH) and Case_Sub_Entity__c.Member_Plan__c Lookup(Member_Plan__c) (ID 00Nbm00003WwMozEAF), preserving captured reverse relationship Case_Sub_Entity and label Case Sub Entity. Development choices: new target API name, Text name field, ReadWrite sharing, optional SetNull lookup. Original target schema remains uncaptured; this is a development dependency, not a verified complete Member Plan replica. Deployment 0Afbm00000hr962CAA Succeeded, 2/2 components, zero errors. Result: deployment/member-plan-deployment.json. Case Sub Entity now has 27 deployed custom fields. Prior Member Plan missing/deferred notes are superseded. Existing connected-user field access issue, mapper formula implementation and other OmniScript gaps remain pending. Script remains inactive; no LWC/MDT or runtime execution.

## Case Sub Entity deployment result ? 2026-10-01

Explicit user deployment request completed: Metadata API job 0Afbm00000hoDJ4CAM, Succeeded, 27/27 components, zero errors, source commit 807f5a8, target myProdOrg (00Dbm00000phCerEAE). Created Case_Sub_Entity__c object ID 01Ibm00000DBOdpEAH and 26 custom fields. Component IDs recorded in deployment/case-sub-entity-deployment.json. Deployment report verifies creation; object describe confirms object exists but connected user sees only standard fields. Field access remains unresolved. Attempt to create/deploy a permission set was blocked by automatic approval review without a specific reason; no permission set created or assigned. Runtime not validated; OmniScript remains inactive. Historical NOT deployed checkpoints below are superseded for these 27 components only. Member_Plan__c remains pending, no LWC/MDT deployed. CNCGetCaseInfo formula deployment is separate pending work, not established by this object deployment.

## Additional Case Sub Entity field evidence ? 2026-10-01

Pulled main 0ad9f07. Added source for Entity_Type__c (Picklist: Claim, Prior Authorization, Member, Provider, Plan, Referral, Claim Line), Entity_Value__c (Text 255) and URLText__c (captured CASE formula). Exact formula and values are in the field metadata source; do not duplicate independently edited configuration tables. Picklist restriction/default were not captured: development source uses unrestricted, captured order, no default. URLText__c is the newly captured API spelling; older URIText__c transcription remains unverified and no alias field was invented. Member_Plan__c target label, child relationship and lack of lookup filter are captured, but target object API name remains unknown. Total prepared custom fields: 26. XML parsed; NOT deployed. Previous automatic deployment rejection remains recorded; no deployment retried in this update. Claims_Details_Page navigation dependency is unverified.

## Case Sub Entity source checkpoint ? 2026-10-01

User explicitly requested creation of missing dependencies. Prepared CustomObject source and captured supported fields under force-app/main/default/objects/Case_Sub_Entity__c. Development defaults: CSE-{000000} auto-number, ReadWrite sharing, false checkbox default, optional SetNull lookups with generated reverse relationship names. These defaults are not claimed as captured reference configuration. Member_Plan__c remains pending exact target identity; URIText__c formula and Entity_Type__c definition remain unknown. See deployment/case-sub-entity-source.json. Source XML parsed successfully. NOT deployed: combined creation/deployment command rejected by automatic approval review without a specific reason. Formula 1 dependency remains absent from the org until successful deployment. No LWC or MDT changes.

## Latest scope and pending work ? 2026-10-01

The user authorized continued implementation of missing components **except LWC and MDT**, then requested that all remaining items be recorded in Git as pending. LWC source and MDT fields/records remain deferred dependencies, not completed work. Exact missing settings must still come from source or supplied evidence; authorization to create components does not establish their unknown configuration.

[PENDING_WORK.md](PENDING_WORK.md) tracks the non-LWC/non-MDT gaps, nine unresolved default assignments, missing field definitions, deferred dependencies, and the requested MDT record/field-definition screenshots. [deployment/captured-audit.json](deployment/captured-audit.json) retains the detailed verified blockers. No new implementation or deployment occurred in this tracking update. Existing v4 remains inactive and partially configured.

## Capture progress versus implementation

### Verified deployment checkpoint — 2026-10-01

Latest main used: c28071334a02a28306df0bc0a9a32b7c4a9291d6, fetched into isolated branch docgen/captured-development. The primary checkout contains unrelated staged work and was preserved. Full handoff and canonical configuration read before implementation.

Connected target: myProdOrg, verified org 00Dbm00000phCerEAE (displayed alias turnberryProd). Runtime/data model: standard OmniProcess/OmniProcessElement and OmniDataTransform/OmniDataTransformItem. Reference CNC/SendCommunication is absent in this target. Corrected the existing Docgen/SendCommunication/English v4, Id 0jNbm000000gie9EAA, without creating a new skeleton or version. The deliberate Type difference is retained. Script and both selected IPs remain inactive.

Deployment source commit: 9995ad51494a39343e7a520a1f05eac76eb7f137. Source: datapacks/docgen-captured-patch/; builder and deploy/verification scripts: scripts/docgen/. Method: existing-record SObject updates through three anonymous Apex transactions. All three compiled and succeeded; 113 records / 219 written fields independently compared with org queries. This method does not issue a Metadata API deployment job ID; batch identifiers are deploy-1.apex, deploy-2.apex, deploy-3.apex and the exact source commit. Initial over-size anonymous script was rejected before any write and corrected into bounded batches. Result: deployment/captured-deployment-result.json; verification: deployment/captured-verification.json; detailed audit: deployment/captured-audit.json.

| Captured element | Deployed element ID | Actual supported configuration / remaining gap |
| --- | --- | --- |
| IP-GETCaseDetails | 0kEbm000002YXWfEAO | Procedure reference configured. Case input/response mapping and execution condition still unknown; action remains disabled. |
| SV-InitialMapping | 0kEbm000002YXWqEAO | Exact captured owner-comparison expression configured; full list coverage/conditions and navigation behavior unverified. |
| MaterialAndCommunicationChannel | 0kEbm000002YXX1EAO | Captured Step title stored. Controls NOT implemented: identity/type, stored values/defaults and condition types missing; no genuine source in target/repository to resolve them. Empty existing Step is not completion. |
| SV-DefaultMapping | 0kEbm000002YXXCEA4 | Seven assignments configured: six captured expressions including exact subscription casing, and literal text false for isDocumentUploaded. Nine summary-only mode/type gaps remain; do not claim all 16 implemented. Subscription input token verification and literal runtime typing remain pending. |
| ExtractEmailBodyForMMR | 0kEbm000002YXXNEA4 | Mapper reference configured; existing input row preserved. Literal quoting, response transformation/conditions and template definition unresolved; disabled. |
| IP-GetForms | 0kEbm000002YXXTEA4 | Captured reference, extra payload, extra-only flag, formsdata response node, remote booleans, transformations and Forms/Documents OR rule configured. Full action/dependency validation incomplete; disabled. |
| Step1 | 0kEbm000002YXXUEA4 | Captured blank labels/instruction, save-for-later and button labels configured. Both existing LWC child input mappings stored exactly; components absent, children disabled. Remaining child identities/types/conditions cannot be inferred. |

Dependency component IDs (existing records corrected): CNC_GetCaseInformation 0jNbm000000giavEAA; CNC_GetEmailFormsDetails 0jNbm000000gicXEAQ; CNCGetCaseInfo 0jIbm000000MlGPEA0; GetMMREmailTemplate 0jIbm000000MlGSEA0; CNCGetHeaderAttributes 0jIbm000000MlGQEA0; CNCGetInternalAndExternalLinks 0jIbm000000MlGREA0. The Forms IP has its four captured elements in order; Case IP has DR-E-GetCaseInfo. Corrected 87 recorded output paths and 11 Header Attributes formula texts in existing mapper items; execution gating preserved because source schema/extraction settings are incomplete. Configuration records exist, but these dependency chains are not executable replicas.

Specific blockers: all 13 CNCGetCaseInfo formulaEvidence.expression values are null; User filter quoting and Blueshield output spelling unresolved; required Account/Case custom fields absent; metadata types are prior-created shells without field/record definitions; Header Attributes profile extraction and two blank-source output rows unresolved; links OR/AND grouping and quoted false semantics unresolved; EmailTemplate filter literal/options and template content unresolved; radio identities/stored values/defaults/types absent; both named LWCs absent from target and source. Nine omitted defaults: selectedEntity, preSelectedLetterTemplate, preSelectedCaseEntity, preSelectedForms, addresseeCommName, mailingAddress, isFormshasAttachments, hasMaximumPOD, isLetterReviewRequired. Case launcher and end-to-end Case context unverified.

No new placeholder elements, guessed field definitions, metadata record values, radio choices or custom LWC implementations created in this operation. Earlier scaffold defaults and backlog placeholders are not validated reference behavior. No Preview, activation, document generation, upload or delivery performed. Continue with CustomLWC4 lower properties/Conditional View, CustomLWC2 Conditional View, and exact earlier configuration gaps. New evidence updates this same record and the canonical JSON; captured evidence is not completed implementation.

| Scope | Completed capture | Pending work |
| --- | --- | --- |
| Overall structure | All 52 visible outer element names/types/order; reference identity | Remaining expanded children and detailed properties |
| Outer elements 1–5 | Captured action/value/layout evidence, with explicit gaps | Complete properties, exact exports and validation |
| IP-GetForms and dependencies | Action settings; four IP elements; mapper extracts, formulas/output evidence and response settings | Remaining settings, filter grouping, source dependencies and exact exports |
| Step1 | Visible child layout, basic Step settings and two LWC input panels | Remaining Step/button settings, child identities/conditions, CustomLWC4 lower properties and LWC source |
| Outer elements 8–52 | Tree inventory; isolated RA-updateLinks condition evidence | Detailed action/Step configuration and dependencies |
| Salesforce implementation | Supported in-place configuration patch deployed and fields verified; see checkpoint above | Controls, exact extraction settings/schema, full assignments, LWC source, Case launch wiring and runtime validation remain incomplete |
| Activation/deployment | Three configuration-update batches succeeded in myProdOrg; draft remains inactive | Activation/delivery unrequested; Preview deferred |

## How this file stays current

After each new image batch:
1. Identify the exact parent, element or Data Mapper. Merge evidence into its existing canonical record; do not append duplicates.
2. Preserve captured values and distinguish blanks, absent settings and unresolved values. Record screenshot filenames and exact missing properties.
3. Update capture progress without claiming an org build.
4. Refresh the complete captured-configuration section below from spec/send-communication.partial.json, retaining the reconstruction instructions.
5. Update the continuation point and commit both files. Do not maintain separately edited copies of configuration tables in other notes.

The detailed section is a generated view of the canonical JSON, not a second independently maintained source. If it ever differs from the JSON, refresh it before continuing. The user needs only this MD to read the current work.

## Reconstruction instructions

## Start here

User goal: recreate the supplied Send Communication OmniScript faithfully as a new draft, preserving the observed structure, names, expressions, mappings, conditions and component properties. Work incrementally. Do not redesign the process or fill missing configuration with plausible defaults.

Repository: koti15/Turnberryxhdev. Evidence captured through 2026-10-01.
Reference OmniScript: CNC / SendCommunication / English; displayed name Send Communication; observed version 43, Active true; description MMR- email go live prep.
These describe the photographed reference. They are not instructions to activate a new script or overwrite the reference.

## Authority and reading order

1. Read applicable repository AGENTS.md files and [Docgen instructions](AGENTS.md).
2. Read this handoff for scope and execution order.
3. Read [canonical configuration](spec/send-communication.partial.json) for exact captured properties.
4. Read [ordered outer tree](OMNISCRIPT_TREE.md) for all 52 observed outer elements.
5. Use evidence notes only for supporting transcription context. Older notes/status summaries must not override the canonical specification.

The JSON is an evidence-based partial build specification, not an importable DataPack. It explicitly has deployable=false. A committed specification does not mean Salesforce components were created.
Saved means screenshot evidence recorded; it does not mean every property is known or implementation is complete.

## One-to-one reconstruction sequence

Use the following sequence for the captured portion. Paths below identify records inside the canonical JSON; do not maintain a second copy of their configuration here.

| Order | Reference outer element | Canonical record to follow | Dependency and exact work |
| --- | --- | --- | --- |
| 1 | IP-GETCaseDetails | confirmedActions, elementName IP-GETCaseDetails | Reproduce captured action properties. Follow integrationProcedures key CNC_GetCaseInformation, then its DR-E-GetCaseInfo and dataMappers name CNCGetCaseInfo. Preserve extract steps, formula evidence and output paths. Action input/response mapping gaps remain unresolved. |
| 2 | SV-InitialMapping | setValuesElements, elementName SV-InitialMapping | Reproduce the one captured owner-comparison assignment and its Use Expression mode. Do not infer that the flag blocks navigation. |
| 3 | MaterialAndCommunicationChannel | stepElements, elementName MaterialAndCommunicationChannel | Reproduce the captured title, Material Type choices, two channel rows and guidance. Follow all four conditionalViewEvidence entries. Exact radio identities, stored values/defaults and condition types remain missing. The guidance tooltip has a blank first comparison value; do not silently translate it into an empty-string expression. |
| 4 | SV-DefaultMapping | setValuesElements, elementName SV-DefaultMapping | Reproduce all 16 captured assignments. Preserve token casing and the recorded expression modes. Summary-only values with useExpression=null or runtime type unverified remain unresolved; do not assume text false equals Boolean false or =null establishes expression mode. |
| 5 | ExtractEmailBodyForMMR | confirmedActions, elementName ExtractEmailBodyForMMR | Follow dataMappers name GetMMREmailTemplate, its extract/filter evidence and output mappings. Preserve captured action inputs. Remaining transforms, conditions and messages are unknown. |
| 6 | IP-GetForms | confirmedActions, elementName IP-GetForms | Reproduce captured invoke mode, remote settings, extra payload, extra-only setting, response node and conditional evidence. Follow integrationProcedures key CNC_GetEmailFormsDetails, in its recorded visibleElements order. |
| 7 | Step1 | stepElements, elementName Step1 | Reproduce captured Step settings and visibleLayoutItems in order. For CustomLWC4 and CustomLWC2 use their exact component names and propertyMappings. Preserve the visible labels even when they differ from Step1. Remaining child identities/properties/conditions and component source are missing. |
| 8–52 | Remaining outer elements | outerTree.elements ordered by order | Names/types/order are recorded. Detailed configurations are pending. Preserve the inventory, but do not invent executable actions, dependencies or child layouts from labels. The RA-updateLinks tooltip in OMNISCRIPT_TREE.md is isolated condition evidence, not a complete action definition. |

### Order inside the Forms Integration Procedure

Under integrationProcedures key CNC_GetEmailFormsDetails, follow this order:
1. SV-DefaultMapping: two recorded assignments, with their exact expressions and visible properties.
2. DR-E-GetHeaderAttributes: recorded action properties and dataMappers name CNCGetHeaderAttributes.
3. DR-E-GetForms: recorded action properties and dataMappers name CNCGetInternalAndExternalLinks.
4. ResponseAction: recorded JSON response, transformations and Additional Output Response.

The IP SV-DefaultMapping is a separate element from the OmniScript SV-DefaultMapping. Do not merge them by name across parents.
CNCGetHeaderAttributes has 11 captured formula entries and 46 captured mapping pairs plus separately recorded blank-source rows. Preserve recorded source/target spelling and casing; unresolved profile source and row-level settings remain gaps.
CNCGetInternalAndExternalLinks has eight captured mapping pairs. User confirmed no formulas and no configured options for this mapper. This does not remove formulas/options from other mappers, or establish every platform default. Preserve the recorded OR/AND filter sequence; grouping and false-literal semantics remain unverified.

## How to recover an incorrect Codex implementation

1. Inspect the existing branch and working changes before editing. Report changed files and mismatches against the canonical specification. Do not erase unrelated work or use a destructive reset.
2. Establish which files are genuine exported Salesforce source and which are generated scaffolding. Confirm the runtime and export format from actual source or authorized org retrieval.
3. Produce a comparison table for each affected reference element: canonical record, actual source path, match/mismatch, missing evidence.
4. Correct confirmed mismatches only. Preserve exact source tokens, capitalization, empty strings and displayed values; do not normalize names or improve formulas.
5. Create/reuse one draft reconstruction on a working branch. If a new Type/SubType or developer name is required to avoid replacing the reference, record that deliberate identity difference separately. Never duplicate a draft on each pass.
6. Map every source element back to its parent and canonical record. Upsert by parent plus element identity; Data Mappers by name; output mappings by source/target pair.
7. Keep unavailable settings explicitly unresolved in the tracking specification. Do not write JSON null blindly into Salesforce metadata; unresolved fields are evidence gaps, not deployable defaults.
8. Work through the seven captured outer elements in order. If an unknown blocks a faithful element, report the exact missing property and source/export needed. Continue independent verified work; do not fabricate the blocked configuration.
9. At each checkpoint report actual source files changed, evidence matched, remaining gaps and validation performed. Claim a faithful runnable build only after the complete exported source and dependencies are available and checked.

## Case context and operation limits

Launch from Case is a user requirement. Existing launch mechanism and Case-ID input wiring are unverified; an open Case tab does not establish them.
Inspect the actual launcher/action and IP input before choosing ContextId, recordId or caseId. A component property referencing %ContextId% does not by itself prove end-to-end Case wiring.
Do not invent a Case page, quick action, Apex method, document template, token map, API request or delivery behavior.
Preview is deferred by the user. Do not claim runtime validation. Source/schema checks may be recorded honestly.
Deployment of the captured portion is now explicitly requested under Current user instruction above. Do not activate, generate/send real documents or email, or upload files without the relevant user instruction.

## Current stopping point and next evidence

The captured sequence reaches Step1 and the two visible custom LWC property panels. Additional MaterialAndCommunicationChannel tooltips were supplied afterward and merged into its existing record.
Next Step1 capture: CustomLWC4 lower properties and Conditional View, then CustomLWC2 Conditional View. Remaining Step/button and messaging/heading properties are also missing.
Other earlier gaps remain tracked in canonical complete=false, missing, verification and null fields. Resolve these before claiming a same-to-same runnable copy.
Full exports of the reference OmniScript, referenced IPs, Data Mappers and custom component source are the most reliable route to a complete copy.

## Prompt to give Codex

Read Docgen/AGENTS.md and Docgen/CODEX_HANDOFF.md first. Use Docgen/spec/send-communication.partial.json as the sole canonical captured configuration and Docgen/OMNISCRIPT_TREE.md for outer order. Audit your existing changes against these files, then reconstruct the verified portion one-to-one in the documented order on a working branch. Preserve exact names, tokens, expressions, mappings and parent scope. Do not guess missing properties, duplicate components, redesign the flow, overwrite the reference, or mark notes as a completed build. Report the mismatch audit and exact blockers. Preview remains deferred; keep the draft inactive and follow the current authorized deployment instructions above.

## Complete captured configuration

Generated from [canonical specification](spec/send-communication.partial.json). Unknown properties remain null; capture is not deployment.

```json
{
  "artifactKind": "evidence-based-build-specification",
  "deployable": false,
  "status": "partial-configuration",
  "source": {
    "kind": "user-supplied-designer-screenshots",
    "capturedDate": "2026-10-01",
    "latestScreenshot": "IMG_54F0625D-D0F5-4CF5-8FB0-87CAA9385FAE.jpeg"
  },
  "omniScript": {
    "displayName": "Send Communication",
    "language": "English",
    "observedVersion": 43,
    "observedActive": true,
    "type": "CNC",
    "subType": "SendCommunication",
    "description": "MMR- email go live prep"
  },
  "caseIntegration": {
    "requiredByUser": true,
    "objectApiName": "Case",
    "launchMechanism": "Case.Send_Communication Lightning Web Component quick action \u2192 cncSendCommunicationQuickAction \u2192 OmniStudio wrapper",
    "recordIdInputMapping": {
      "source": "this.recordId",
      "navigationStateKey": "c__ContextId"
    },
    "status": "source-launch-wiring-captured-target-implementation-unverified",
    "sourceEvidence": {
      "captureDate": "2026-10-06",
      "environment": "xhdev1 sandbox",
      "screenshots": [
        "IMG_463D7F0B-DDB8-42EC-B51F-6A364F21F1B0.jpeg",
        "IMG_119C859F-5BA9-4428-B26D-DAE4AE4E2E7A.jpeg",
        "IMG_45A5CA2A-6D1E-4A06-B39E-BB1AF7C4ACAC.jpeg",
        "IMG_80733F3B-5320-4BA6-AF2D-24835BE35B83.jpeg",
        "IMG_1EBC5EC4-2FBC-4C4A-BFA1-3909F5DBFC18.jpeg",
        "IMG_B19E7B17-ECE4-4777-ABE1-D74A61B676EC.jpeg",
        "IMG_7AF88FDA-CA38-4108-8415-1330BC5A6D21.jpeg",
        "IMG_9D720EBB-D83D-4DD4-8065-44FCEFB1760A.jpeg"
      ],
      "runtimeObservation": "User-supplied post-launch screenshot shows Material and Outbound Channel Selection. Successful letter generation remains unverified."
    },
    "quickAction": {
      "label": "Send Communication",
      "name": "Send_Communication",
      "objectApiName": "Case",
      "lightningWebComponent": "cncSendCommunicationQuickAction",
      "subtype": "Action",
      "description": "This quick action is used to send forms/documents/letters."
    },
    "visibility": {
      "location": "Lightning App Builder Highlights Panel dynamic action",
      "fieldLabel": "Caller Type",
      "fieldApiName": null,
      "operator": "Equal",
      "values": [
        "Provider",
        "Member",
        "Plan to Plan"
      ],
      "combination": "Any filters are true",
      "recordPageApiName": null,
      "activationAssignments": null,
      "notes": "Shown visibility filters do not include an ITS Host or owner filter. LWC invocation separately checks ownership."
    },
    "launcherLwc": {
      "name": "cncSendCommunicationQuickAction",
      "baseClass": "NavigationMixin(LightningElement)",
      "recordIdPublicProperty": true,
      "invocationMethod": "@api invoke()",
      "recordRead": {
        "adapter": "getRecord",
        "recordId": "$recordId",
        "fields": [
          "Case.OwnerId",
          "Case.AccountId"
        ]
      },
      "userIdImport": "@salesforce/user/Id",
      "ownerCheck": "caseOwnerId == USER_ID",
      "missingAccountCheck": "caseAccountId == null || caseAccountId == \"\" || caseAccountId == undefined",
      "missingAccountToast": {
        "title": "Update Account name on case before sending communication.",
        "variant": "error"
      },
      "nonOwnerToast": {
        "title": "Please contact the case owner for any updates to the case",
        "variant": "error"
      },
      "toastMethod": "showToastNotification()",
      "toastImplementation": {
        "event": "ShowToastEvent",
        "properties": {
          "title": "this.title",
          "variant": "this.variant"
        },
        "dispatch": "this.dispatchEvent(evt)"
      },
      "navigation": {
        "method": "this[NavigationMixin.Navigate]",
        "type": "standard__component",
        "attributes": {
          "componentName": "omnistudio__vlocityLWCOmniWrapper"
        },
        "state": {
          "c__target": "c:CNCSendCommunicationEnglish",
          "c__layout": "lightning",
          "c__tabIcon": "custom:custom18",
          "c__tabLabel": "Send Communication",
          "c__ContextId": "this.recordId"
        }
      },
      "sourceCaptureComplete": false,
      "remainingEvidence": [
        "HTML content",
        "js-meta.xml content",
        "Confirmation of full JS file coverage and any omitted handling"
      ]
    },
    "remainingEvidence": [
      "Source active OmniScript version (first post-click screen captured)",
      "Record page API name and activation assignments if needed for deployment",
      "Launcher HTML/js-meta.xml and full source before deployable recreation",
      "Downstream consumption of ContextId and working Print letter path"
    ],
    "storyImplications": {
      "confirmed": "Shared Case launcher checks ownership and requires an Account before opening the OmniScript.",
      "proposed": "Reuse this entry point for all three letter stories unless confirmed scope requires a change.",
      "unknown": "CS-1831/1832 role access for non-owners is not established by story wording; visible launcher blocks all non-owners. No role bypass is shown."
    }
  },
  "confirmedActions": [
    {
      "elementName": "IP-GETCaseDetails",
      "fieldLabel": "IP-GETCaseDetails",
      "elementType": "Integration Procedure Action",
      "integrationProcedure": "CNC_GetCaseInformation",
      "invokeMode": "Default",
      "inputMapping": null,
      "responseMapping": null,
      "executionCondition": null
    },
    {
      "elementName": "ExtractEmailBodyForMMR",
      "fieldLabel": "ExtractEmailBodyForMMR",
      "elementType": "Data Mapper Extract Action",
      "dataMapper": "GetMMREmailTemplate",
      "ignoreCache": false,
      "inputParameters": [
        {
          "dataSource": "DeveloperName",
          "filterValueDisplayed": "MMR_EMAIL_TEMPLATE",
          "literalQuotingVerified": false
        }
      ],
      "responseTransformations": null,
      "userMessage": null,
      "errorMessages": null,
      "executionCondition": null,
      "complete": false,
      "evidenceScreenshots": [
        "IMG_F2B01301-44F0-407A-A0CF-FF1F66E6AD37.jpeg",
        "IMG_1F03F5AE-FCFF-4C84-840C-04F207E1D6B4.jpeg",
        "IMG_D335A082-5392-4EA2-A7F9-9B27AE72E1E1.jpeg",
        "IMG_7CABAFDD-8FD1-42F9-B32F-92158778A7D8.jpeg"
      ]
    },
    {
      "elementName": "IP-GetForms",
      "elementType": "Integration Procedure Action",
      "integrationProcedure": "CNC_GetEmailFormsDetails",
      "complete": false,
      "captureStatus": "in-progress",
      "conditionalViewEvidence": {
        "conditionType": "Show Element if True",
        "displayedCondition": "(MaterialType = Forms OR MaterialType = Documents)",
        "context": "IP-GetForms selected in preceding screenshot; selected-element header not visible in condition close-up",
        "messagingFramework": {
          "windowPostMessage": false,
          "pubSub": false,
          "sessionStorage": false
        },
        "lwcComponentOverride": ""
      },
      "missing": [
        "Remaining user-message/error-message properties",
        "Referenced Integration Procedure full definition and settings"
      ],
      "evidenceScreenshots": [
        "IMG_70FF597B-607B-4E91-AE8E-7DFD2310FF27.jpeg",
        "IMG_ECB61E00-ECA1-4281-8303-D3380D236979.jpeg",
        "IMG_A7EC281B-F3FC-4FCF-BD04-501ED686935E.jpeg",
        "IMG_7ED0B145-6A45-4A1C-A157-8CF97DE80626.jpeg",
        "IMG_A9F862A3-2547-42D2-991A-234FA36FDDB2.jpeg"
      ],
      "preTransformDataMapperInterface": "",
      "postTransformDataMapperInterface": "",
      "remoteOptions": [],
      "extraPayload": [
        {
          "key": "MaterialType",
          "value": "%MaterialType%"
        },
        {
          "key": "OutboundChannel",
          "value": "%OutboundChannel%"
        }
      ],
      "sendOnlyExtraPayload": true,
      "sendJsonPath": "",
      "sendJsonNode": "",
      "responseJsonPath": "",
      "responseJsonNode": "formsdata",
      "inputMapping": {
        "kind": "extra-payload-only",
        "keys": [
          "MaterialType",
          "OutboundChannel"
        ]
      },
      "responseMapping": {
        "sendJsonPath": "",
        "sendJsonNode": "",
        "responseJsonPath": "",
        "responseJsonNode": "formsdata"
      },
      "lwcComponentOverride": "",
      "screenshotContext": "Top properties confirm IP-GetForms identity; continuation captures stored in this same action entry.",
      "fieldLabel": "IP-GetForms",
      "invokeMode": "Default",
      "observedActive": true,
      "showToastOnCompletion": false,
      "remoteProperties": {
        "useFuture": false,
        "chainable": false,
        "useContinuation": false,
        "useQueueable": false,
        "queueableChainable": false
      }
    },
    {
      "elementName": "RA-InsertSelectedForms",
      "fieldLabel": "RA-InsertSelectedForms",
      "elementType": "Remote Action",
      "observedActive": true,
      "invokeMode": "Default",
      "showToastOnCompletion": false,
      "remoteClass": "CNC_SendCommunication",
      "remoteMethod": "createAttachments",
      "useContinuation": false,
      "preTransformDataMapperInterface": "",
      "postTransformDataMapperInterface": "",
      "remoteOptions": [],
      "extraPayload": [
        {
          "key": "selectedForms",
          "value": "%selectedForms%"
        },
        {
          "key": "caseId",
          "value": "%ContextId%"
        }
      ],
      "sendOnlyExtraPayload": true,
      "conditionalView": {
        "conditionType": "Show Element if True",
        "displayedCondition": "(MaterialType = Forms OR MaterialType = Documents)"
      },
      "responseMapping": null,
      "executionResult": null,
      "complete": false,
      "evidenceScreenshots": [
        "IMG_C51042A7-CA49-4628-9B6F-67ABC6EAACFB.jpeg",
        "IMG_D1550A64-24EC-4C84-ADEC-B2697A53E10C.jpeg",
        "IMG_72F08B4E-847E-4482-B9F2-F02D02904C6B.jpeg",
        "IMG_BD192402-9D2A-4710-AB44-BF0EAFE28CCE.jpeg"
      ],
      "interpretation": "Configured for Forms/Documents; the displayed condition excludes Other Communication. No tokenMapping key appears in its extra payload. Method implementation and actual attachment behavior remain unreviewed.",
      "missing": [
        "Send/response transformations",
        "Method source and response contract"
      ]
    },
    {
      "elementName": "IP-GenerateLetterinAsync",
      "fieldLabel": "IP-GenerateLetterinAsync",
      "elementType": "Integration Procedure Action",
      "integrationProcedure": "CNC_AsyncLetterGeneration",
      "observedActive": true,
      "invokeMode": "Default",
      "showToastOnCompletion": false,
      "extraPayload": [
        {
          "key": "templateId",
          "value": "%selectedTemplate:Id%"
        },
        {
          "key": "objectId",
          "value": "%ContextId%"
        },
        {
          "key": "tokenDataMap",
          "value": "%tokenMapping%"
        },
        {
          "key": "returnAsPdf",
          "value": "true"
        },
        {
          "key": "keepIntermediate",
          "value": "false"
        },
        {
          "key": "outputFileFormat",
          "value": "pdf"
        },
        {
          "key": "title",
          "value": "%documentTitle%"
        }
      ],
      "sendOnlyExtraPayload": true,
      "responseMapping": {
        "sendJsonPath": "",
        "sendJsonNode": "",
        "responseJsonPath": "",
        "responseJsonNode": ""
      },
      "executionCondition": {
        "conditionType": "Show Element if True",
        "displayedCondition": "(isAsyncLetterGeneration = true AND isPOD <> true)"
      },
      "remoteProperties": null,
      "complete": false,
      "evidenceScreenshots": [
        "IMG_2589F3C1-EDEB-4B1F-92E9-13013F9E8AA9.jpeg",
        "IMG_C37F5649-2C1B-4ADD-ACB9-51B618B1231A.jpeg",
        "IMG_FC652828-4342-4FA3-A38E-DD7E5199E8F1.jpeg",
        "IMG_621353BF-9610-4053-BC10-06B10CA8C4B0.jpeg"
      ],
      "missing": [
        "Remote properties"
      ],
      "interpretation": "Async branch is gated by isAsyncLetterGeneration=true and isPOD<>true. The reviewed LWC initializes async true and sets it false for RTB_ manual tokens; the displayed HOSTProviderFreeformLetter token JSON has no RTB_ names. This makes async routing consistent with reviewed configuration, but actual runtime flag values/execution remain unverified. No send/response path or node override is configured in the displayed transformation fields."
    },
    {
      "elementName": "RA-SetDefaultTokenMapping",
      "elementType": "Remote Action",
      "remoteClass": "CNC_SendCommunication",
      "remoteMethod": "transformTokenData",
      "invokeMode": "Default",
      "preTransformDataMapperInterface": "",
      "remoteOptions": [],
      "extraPayload": [],
      "sendOnlyExtraPayload": false,
      "executionCondition": {
        "conditionType": "Show Element if True",
        "displayedCondition": "(isPOD <> true)"
      },
      "complete": false,
      "captureDate": "2026-10-07",
      "evidenceScreenshots": [
        "IMG_07618DAD-E3D8-4586-B779-A087C3B5E47F.jpeg",
        "IMG_4D3EC56A-EFF1-4381-9FA4-4670F35B9C04.jpeg",
        "IMG_C0BC6FED-85DF-44B8-8A61-260BA3018CFF.jpeg",
        "IMG_B126EBE5-BA79-4FE1-B0C8-D65EF4F7D48E.jpeg",
        "IMG_8721C56B-E0C9-45BF-AB7F-0FE49C81AF59.jpeg"
      ],
      "missing": [
        "Remaining response properties and runtime input/output"
      ]
    },
    {
      "elementName": "IP-GetPatientDemographics",
      "elementType": "Integration Procedure Action",
      "integrationProcedure": "CNC_Member360",
      "extraPayload": [
        {
          "key": "memberId",
          "value": "%memberId%"
        }
      ],
      "sendOnlyExtraPayload": true,
      "sendJsonPath": "",
      "sendJsonNode": "",
      "responseJsonPath": "",
      "responseJsonNode": "",
      "transformationEvidence": "User reported blank Send/Response Transformations fields; extra payload photographed separately.",
      "complete": false,
      "evidenceScreenshots": [
        "IMG_68EDD180-DC11-484E-87F5-057455E71FB3.jpeg",
        "IMG_F313C0EE-579A-4998-B53E-A74140FDF659.jpeg"
      ]
    }
  ],
  "missingForRunnableBuild": [
    "OmniScript exported definition",
    "Complete IP-GETCaseDetails properties including input/output mappings and conditions",
    "CNC_GetCaseInformation exported definition and dependencies",
    "Case launch source metadata completeness and target implementation verification (source action/LWC navigation wiring captured 2026-10-06)",
    "Remaining elements, nested steps, properties and dependencies",
    "Generation template and actual generation payload/call"
  ],
  "safety": {
    "activate": false,
    "deploy": false,
    "includeSecrets": false
  },
  "integrationProcedures": [
    {
      "key": "CNC_GetCaseInformation",
      "name": "Get Case Information",
      "type": "CNC",
      "subType": "GetCaseInformation",
      "observedVersion": 3,
      "observedActive": true,
      "visibleElements": [
        {
          "elementName": "DR-E-GetCaseInfo",
          "type": "Data Mapper Extract Action",
          "dataMapper": "CNCGetCaseInfo",
          "inputParameters": [
            {
              "dataSource": "caseId",
              "filterValue": "caseId"
            }
          ],
          "sendJsonPath": "",
          "sendJsonNode": "",
          "responseJsonPath": "",
          "responseJsonNode": "response",
          "ignoreCache": false,
          "sendOnlyAdditionalInput": false,
          "returnOnlyAdditionalOutput": false
        }
      ],
      "complete": false
    },
    {
      "key": "CNC_GetEmailFormsDetails",
      "name": "Email Forms Details",
      "type": "CNC",
      "subType": "GetEmailFormsDetails",
      "observedVersion": 5,
      "observedActive": true,
      "description": "MNPP-3048 - Updated Outbound channel check.",
      "configuration": {
        "trackingCustomData": [],
        "includeAllActionsInResponse": false,
        "rollbackOnError": false,
        "requiredPermission": ""
      },
      "visibleElements": [
        {
          "elementName": "SV-DefaultMapping",
          "type": "Set Values",
          "values": [
            {
              "name": "sectionName",
              "expression": "IF(%MaterialType% = \"Forms\",\"Send Communication Forms\",\"Send Communication Documents\")",
              "verification": "Full expression supplied by user in browser address bar screenshot; runtime/export syntax not validated.",
              "expressionDisplayed": "=IF(%MaterialType% = \"Forms\",\"Send Communication Forms\",\"Send Communication Documents\")"
            },
            {
              "name": "type",
              "expression": "IF(%MaterialType% = \"Forms\",\"Email Forms\",\"Email Documents\")",
              "verification": "readable screenshot transcription; exact export syntax not validated"
            }
          ],
          "responseJsonPath": "",
          "responseJsonNode": "",
          "executionConditionalFormula": "",
          "failOnStepError": false,
          "complete": false,
          "order": 1,
          "evidenceScreenshots": [
            "IMG_29034490-76E5-4170-AD4B-EC3073A16790.jpeg"
          ]
        },
        {
          "elementName": "DR-E-GetHeaderAttributes",
          "type": "Data Mapper Extract Action",
          "dataMapper": "CNCGetHeaderAttributes",
          "ignoreCache": false,
          "inputParameters": [
            {
              "dataSource": "SV-DefaultMapping:sectionName",
              "filterValue": "sectionName"
            }
          ],
          "sendJsonPath": "",
          "sendJsonNode": "",
          "responseJsonPath": "",
          "responseJsonNode": "",
          "sendOnlyAdditionalInput": false,
          "complete": false,
          "order": 2
        },
        {
          "elementName": "DR-E-GetForms",
          "type": "Data Mapper Extract Action",
          "order": 3,
          "dataMapper": "CNCGetInternalAndExternalLinks",
          "complete": false,
          "ignoreCache": false,
          "inputParameters": [
            {
              "dataSource": "SV-DefaultMapping:type",
              "filterValue": "type"
            },
            {
              "dataSource": "OutboundChannel",
              "filterValue": "OutboundChannel"
            }
          ],
          "sendJsonPath": "",
          "sendJsonNode": "",
          "responseJsonPath": "",
          "responseJsonNode": "",
          "sendOnlyAdditionalInput": false,
          "missing": [
            "Additional input/output/failure response settings below photographed area",
            "Execution conditions and remaining properties"
          ],
          "evidenceScreenshots": [
            "IMG_DE6E1E82-E36E-4E62-B5E8-644C75D8468A.jpeg"
          ]
        },
        {
          "elementName": "ResponseAction",
          "type": "Response Action",
          "order": 4,
          "complete": false,
          "responseFormat": "JSON",
          "responseHeaders": [],
          "sendJsonPath": "DR-E-GetHeaderAttributes",
          "responseJsonPath": "",
          "sendJsonNode": "",
          "responseJsonNode": "",
          "additionalOutputResponse": {
            "returnOnlyAdditionalOutput": false,
            "additionalOutput": [
              {
                "key": "responsedata",
                "value": "%DR-E-GetForms:links%"
              }
            ]
          },
          "executionConditionalFormula": "",
          "internalNotes": "",
          "missing": [],
          "evidenceScreenshots": [
            "IMG_B73A6677-0F30-4A98-BEEF-3584372AE0F9.jpeg",
            "IMG_4BED4E5F-62CF-401A-B701-7A367A0B6D0E.jpeg"
          ],
          "captureStatus": "visible-properties-captured"
        }
      ],
      "complete": false,
      "evidenceScreenshots": [
        "IMG_442D406A-B405-4965-AF08-059D1EBDE932.jpeg",
        "IMG_B5075B6E-84B4-4C77-876E-0C2C5E5EAEE2.jpeg",
        "IMG_412EA20C-02BE-4372-9367-69A1AFEA733F.jpeg",
        "IMG_DE6E1E82-E36E-4E62-B5E8-644C75D8468A.jpeg"
      ],
      "identityVerification": "Procedure Configuration screenshot confirms Type/SubType matching the OmniScript IP-GetForms reference; prior photographed IP element captures linked here.",
      "missing": [
        "Remaining DR-E-GetForms properties and CNCGetInternalAndExternalLinks definition",
        "Any additional procedure settings outside visible area"
      ]
    },
    {
      "key": "CNC_AsyncLetterGeneration",
      "name": "Async Letter Generation",
      "type": "CNC",
      "subType": "AsyncLetterGeneration",
      "observedVersion": 3,
      "observedActive": true,
      "description": "This IP is used to Generate the letter templates asynchronously in Server side.",
      "visibleElements": [
        "setupServiceCallInputParams",
        "generateDocumentWithTokenDataService",
        "ipResponse"
      ],
      "complete": false,
      "evidenceScreenshots": [
        "IMG_27F1482A-BEDF-4B68-8328-75EB41C65CD0.jpeg",
        "IMG_62AFFF34-C83D-4771-9535-1183262B7C98.jpeg",
        "IMG_196222FD-D382-440B-8BF8-804D57F7C625.jpeg",
        "IMG_6D2DD8BD-A89F-4138-9C08-2D06364C3132.jpeg",
        "IMG_677FB22B-E29F-4B76-BA88-228D00940C7A.jpeg"
      ],
      "elements": [
        {
          "name": "setupServiceCallInputParams",
          "type": "Set Values",
          "observedActive": true,
          "valueMap": [
            {
              "name": "title",
              "type": "JSON Node",
              "formula": null
            },
            {
              "name": "returnAsPdf",
              "type": "JSON Node",
              "formula": null
            },
            {
              "name": "keepIntermediate",
              "type": "JSON Node",
              "formula": null
            }
          ],
          "formulaEvidence": "All three displayed formulas begin with IF/OR checks; right ends are clipped, so exact formulas/defaults remain unknown.",
          "responseJsonPath": "",
          "responseJsonNode": ""
        },
        {
          "name": "generateDocumentWithTokenDataService",
          "type": "Remote Action",
          "observedActive": true,
          "remoteClass": "omnistudio.DocumentServiceGateway",
          "remoteMethod": "generateDocumentWithTokenData",
          "remoteOptions": [
            {
              "key": "title",
              "value": "%setupServiceCallInputParams:title%"
            },
            {
              "key": "returnAsPdf",
              "value": "%setupServiceCallInputParams:returnAsPdf%"
            },
            {
              "key": "keepIntermediate",
              "value": "%setupServiceCallInputParams:keepIntermediate%"
            }
          ],
          "sendResponseTransformations": null
        },
        {
          "name": "ipResponse",
          "type": "Response Action",
          "observedActive": true,
          "responseFormat": "JSON",
          "returnFullDataJson": false,
          "sendJsonPath": "",
          "sendJsonNode": "",
          "responseJsonPath": "",
          "responseJsonNode": "",
          "returnOnlyAdditionalOutput": true,
          "additionalOutput": [
            {
              "key": "asyncErrorMessage",
              "formula": null,
              "formulaEvidence": "Begins IF referencing generateDocumentWithTokenDataService; remainder clipped."
            },
            {
              "key": "jobId",
              "formula": null,
              "formulaEvidence": "References generateDocumentWithTokenDataService job field; full text/casing requires confirmation."
            }
          ],
          "executionConditionalFormula": ""
        }
      ],
      "interpretation": [
        "Server-side generation infrastructure exists alongside template ClientSide configuration. The outer execution condition and synchronous review branch must be inspected to establish the actual selected route.",
        "No automatic-token construction is visible in these three elements; tokenDataMap is supplied by the outer action.",
        "Configured output includes jobId and asyncErrorMessage; no actual generation response or successful job completion was provided."
      ],
      "missing": [
        "Full Set Values formulas",
        "Remote Action send/response transformations",
        "Full additional output formulas",
        "Procedure settings beyond identity/version"
      ]
    },
    {
      "key": "CNC_Member360",
      "name": "Patient Demographics",
      "visibleStructure": [
        "ConditionalBlock: RA-GetIntegrationCreds, HTTPGetPatient, DR-T-PatientInfo",
        "RA-UpdateIntegrationCreds",
        "IfAuthTokenExpiresWithin24Hrs: RA-GetIntegrationCreds2, HTTPGetPatient2, DR-T-PatientInfo2",
        "RA-UpdateIntegrationCreds2",
        "ResponseAction1",
        "ResponseAction2"
      ],
      "visibleElements": [
        {
          "elementName": "DR-T-PatientInfo",
          "type": "Data Mapper Transform Action",
          "dataMapper": "CNCTransformMemberInfo",
          "ignoreCache": false,
          "sendJsonPath": "HTTPGetPatient:entry:resource",
          "sendJsonNode": "",
          "responseJsonPath": "",
          "responseJsonNode": "",
          "additionalInput": [
            {
              "key": "localMemberId",
              "value": "%memberId%"
            }
          ],
          "sendOnlyAdditionalInput": false,
          "returnOnlyAdditionalOutput": false,
          "additionalOutput": [],
          "executionConditionalFormula": "ISNOTBLANK(%HTTPGetPatient%) && %HTTPGetPatient:success% != false",
          "failOnStepError": false,
          "failureConditionalFormula": "",
          "complete": false
        },
        {
          "elementName": "ResponseAction1",
          "type": "Response Action",
          "responseFormat": "JSON",
          "returnFullDataJson": false,
          "sendJsonPath": "DR-T-PatientInfo",
          "sendJsonNode": "",
          "responseJsonPath": "",
          "responseJsonNode": "",
          "executionConditionalFormula": "ISNOTBLANK(%DR-T-PatientInfo%)",
          "additionalOutputResponse": null,
          "complete": false
        },
        {
          "elementName": "ResponseAction2",
          "type": "Response Action",
          "responseFormat": "JSON",
          "returnFullDataJson": false,
          "sendJsonPath": "DR-T-PatientInfo2",
          "sendJsonNode": "",
          "responseJsonPath": "",
          "responseJsonNode": "",
          "executionConditionalFormula": "ISNOTBLANK(%DR-T-PatientInfo2%)",
          "additionalOutputResponse": null,
          "complete": false
        }
      ],
      "complete": false,
      "missing": [
        "HTTP configuration, conditional-block formulas, retry-transform definition and full procedure settings",
        "Additional Output Response sections are collapsed; do not assume empty"
      ],
      "evidenceScreenshots": [
        "IMG_6EEF06F3-AC79-41BE-92B0-9054D1A39490.jpeg",
        "IMG_B2747504-727B-46E5-99AD-C3DF5895EB43.jpeg",
        "IMG_524918FE-371D-44DD-A19A-69704BDB54F5.jpeg",
        "IMG_03933351-7AEA-432D-B25E-8DAE1D672207.jpeg",
        "IMG_70A284F8-99C1-445F-9743-92F96468FF53.jpeg",
        "IMG_8AF6A71B-E701-4142-B401-3DB3EC33ED5D.jpeg",
        "IMG_0FB9632A-7E3A-40DF-A4CE-74CC11B20B14.jpeg",
        "IMG_FE5AC411-378A-4045-9842-73C7D1E9DFA6.jpeg",
        "IMG_5CA97591-F262-46C8-AFA4-53031192339D.jpeg"
      ]
    },
    {
      "key": "CNC_GetLetterTemplates",
      "name": "Get Letter Templates",
      "observedVersion": 4,
      "observedActive": true,
      "visibleElements": [
        {
          "elementName": "SV-DataMapping",
          "type": "Set Values",
          "values": null
        },
        {
          "elementName": "DR-E-GetHeaderAttributes",
          "type": "Data Mapper Extract Action",
          "dataMapper": null
        },
        {
          "elementName": "DR-E-LetterTemplates",
          "type": "Data Mapper Extract Action",
          "dataMapper": "CNCGetLetterTemplates",
          "inputParameters": [
            {
              "dataSource": "SV-DataMapping:letterType",
              "filterValue": "letterType"
            },
            {
              "dataSource": "MaterialType",
              "filterValue": "materialType"
            }
          ]
        },
        {
          "elementName": "ResponseAction",
          "type": "Response Action",
          "sendJsonPath": "DR-E-GetHeaderAttributes",
          "additionalOutput": [
            {
              "key": "responsedata",
              "value": "%DR-E-LetterTemplates:letters%"
            },
            {
              "key": "selectedlettertype",
              "value": "%SV-DataMapping:letterType%"
            }
          ]
        }
      ],
      "previewInput": {
        "OutboundChannel": "Print",
        "MaterialType": "Other Communication"
      },
      "mapperPreviewInput": {
        "letterType": "Generic Letter",
        "materialType": "Other Communication"
      },
      "complete": false,
      "verification": "Captured visible flow and mappings; complete SV expressions and remaining settings unknown."
    }
  ],
  "dataMappers": [
    {
      "name": "CNCGetCaseInfo",
      "interfaceType": "Extract",
      "inputType": "JSON",
      "outputType": "JSON",
      "extractSteps": [
        {
          "object": "Case",
          "outputPath": "caseInfo",
          "filter": {
            "field": "Id",
            "operator": "=",
            "input": "caseId"
          }
        },
        {
          "object": "User",
          "outputPath": "loggedInUserInfo",
          "filterExpressionStatus": "Exact displayed input captured in newer PENDING_WORK.md evidence; implementation pending.",
          "filter": {
            "field": "Id",
            "operator": "=",
            "input": "$Vlocity.UserId"
          }
        }
      ],
      "formulaCountObserved": 13,
      "outputMappings": [
        {
          "extractJsonPath": "caseInfo:Account.Blue_Shield_Id__c",
          "outputJsonPath": "providerBlueshildId",
          "verification": "Output spelling appears providerBlueshildId in mapping screenshot; earlier schema transcription was providerBlueshieldId. Confirm exact spelling from export or close-up before executable build."
        },
        {
          "extractJsonPath": "caseInfo:Account.Member_Id__pc",
          "outputJsonPath": "localMemberId"
        },
        {
          "extractJsonPath": "caseInfo:Account.NPI__c",
          "outputJsonPath": "providerNPI"
        },
        {
          "extractJsonPath": "caseInfo:Account.PersonBirthdate",
          "outputJsonPath": "memberDOB"
        },
        {
          "extractJsonPath": "caseInfo:Account.PersonEmail",
          "outputJsonPath": "memberEmail"
        },
        {
          "extractJsonPath": "caseInfo:Account.PersonMailingCity",
          "outputJsonPath": "localCity"
        },
        {
          "extractJsonPath": "caseInfo:Account.PersonMailingCountry",
          "outputJsonPath": "localCountry"
        },
        {
          "extractJsonPath": "caseInfo:Account.PersonMailingPostalCode",
          "outputJsonPath": "localPostalCode"
        },
        {
          "extractJsonPath": "caseInfo:Account.PersonMailingState",
          "outputJsonPath": "localState"
        },
        {
          "extractJsonPath": "caseInfo:Account.PersonMailingStreet",
          "outputJsonPath": "localStreet"
        },
        {
          "extractJsonPath": "caseInfo:Account.Primary_Address__pc",
          "outputJsonPath": "localFullAddress"
        },
        {
          "extractJsonPath": "caseInfo:Account.Subscriber_Id__pc",
          "outputJsonPath": "subscriberId"
        },
        {
          "extractJsonPath": "caseInfo:Account.UMPI__c",
          "outputJsonPath": "providerUMPI"
        },
        {
          "extractJsonPath": "caseInfo:CaseNumber",
          "outputJsonPath": "caseNumber"
        },
        {
          "extractJsonPath": "caseInfo:Description",
          "outputJsonPath": "caseDescription"
        },
        {
          "extractJsonPath": "caseInfo:Id",
          "outputJsonPath": "Id"
        },
        {
          "extractJsonPath": "caseInfo:Owner.Name",
          "outputJsonPath": "ownerName"
        },
        {
          "extractJsonPath": "caseInfo:OwnerId",
          "outputJsonPath": "caseOwnerId"
        },
        {
          "extractJsonPath": "caseInfo:relationship",
          "outputJsonPath": "caseType"
        },
        {
          "extractJsonPath": "caseInfo:Source_System__c",
          "outputJsonPath": "sourceSystem"
        },
        {
          "extractJsonPath": "createdDate",
          "outputJsonPath": "createdDate"
        },
        {
          "extractJsonPath": "currentDate",
          "outputJsonPath": "currentDate"
        },
        {
          "extractJsonPath": "localEnterprisePersonId",
          "outputJsonPath": "localEnterprisePersonId"
        },
        {
          "extractJsonPath": "localMemberFirstName",
          "outputJsonPath": "localMemberFirstName"
        },
        {
          "extractJsonPath": "localMemberLastName",
          "outputJsonPath": "localMemberLastName"
        },
        {
          "extractJsonPath": "localMemberName",
          "outputJsonPath": "localMemberName"
        },
        {
          "extractJsonPath": "loggedInUserInfo:Id",
          "outputJsonPath": "loggedInUserId"
        },
        {
          "extractJsonPath": "receivedDate",
          "outputJsonPath": "receivedDate"
        },
        {
          "extractJsonPath": "relatedEntities",
          "outputJsonPath": "relatedEntities"
        },
        {
          "extractJsonPath": "relatedEntityCount",
          "outputJsonPath": "relatedEntityCount"
        },
        {
          "extractJsonPath": "serviceRepName",
          "outputJsonPath": "serviceRepName"
        },
        {
          "extractJsonPath": "todayDate",
          "outputJsonPath": "todayDate"
        }
      ],
      "evidencePath": "Docgen/evidence/CNC_GetCaseInformation.md",
      "complete": false,
      "visibleOutputSchemaKeys": [
        "localMemberFirstName",
        "memberDOB",
        "providerBlueshieldId",
        "memberEmail",
        "localPostalCode",
        "currentDate",
        "relatedEntityCount",
        "localStreet",
        "loggedInUserId",
        "localCity",
        "caseDescription",
        "ownerName",
        "sourceSystem",
        "caseNumber",
        "todayDate",
        "providerNPI",
        "localFullAddress",
        "localMemberName",
        "createdDate",
        "localState",
        "localEnterprisePersonId",
        "providerUMPI",
        "localCountry",
        "caseType",
        "subscriberId",
        "localMemberId",
        "caseOwnerId",
        "Id",
        "localMemberLastName",
        "serviceRepName",
        "relatedEntities",
        "receivedDate"
      ],
      "options": {
        "timeToLiveMinutes": 0,
        "checkFieldLevelSecurity": false,
        "platformCacheType": null,
        "overwriteTargetForAllNullInputs": false
      },
      "previewEvidence": {
        "inputKey": "caseId",
        "caseQueryResultCount": 0,
        "successfulCaseRetrievalVerified": false,
        "personalValuesOmitted": true
      },
      "outputMappingCoverage": {
        "visibleRows": 32,
        "allPreviouslyCapturedKeysRepresentedExceptSpellingDiscrepancy": true,
        "rowDetailPropertiesVerified": false,
        "spellingDiscrepancies": [
          "providerBlueshildId versus providerBlueshieldId"
        ]
      },
      "formulaEvidence": [
        {
          "order": 1,
          "resultPath": "relatedEntityCount",
          "readableBehavior": "COUNTQUERY against Case_Sub_Entity__c filtered by Case__c using caseId",
          "expression": "COUNTQUERY(\"SELECT COUNT() FROM Case_Sub_Entity__c WHERE Case__c = '{0}'\",caseId)",
          "verification": "Exact expression captured in PENDING_WORK.md from newer supplied screenshots; implementation and runtime validation pending."
        },
        {
          "order": 2,
          "resultPath": "currentDate",
          "readableBehavior": "FORMATDATETIME of NOW(), format MM/dd/yyyy",
          "expression": "FORMATDATETIME(NOW(),\"MM/dd/yyyy\")",
          "verification": "Exact expression captured in PENDING_WORK.md from newer supplied screenshots; implementation and runtime validation pending."
        },
        {
          "order": 3,
          "resultPath": "todayDate",
          "readableBehavior": "FORMATDATETIME of NOW(), format MMMM dd, yyyy",
          "expression": "FORMATDATETIME(NOW(),\"MMMM dd, yyyy\")",
          "verification": "Exact expression captured in PENDING_WORK.md from newer supplied screenshots; implementation and runtime validation pending."
        },
        {
          "order": 4,
          "resultPath": "serviceRepName",
          "readableBehavior": "If loggedInUserInfo:FirstName is blank, use the first character of LastName; otherwise concatenate FirstName and the first character of LastName",
          "expression": "IF(ISBLANK(loggedInUserInfo:FirstName),SUBSTRING(loggedInUserInfo:LastName,0,1),CONCAT(loggedInUserInfo:FirstName,\" \",SUBSTRING(loggedInUserInfo:LastName,0,1)))",
          "verification": "Exact expression captured in PENDING_WORK.md from newer supplied screenshots; implementation and runtime validation pending."
        },
        {
          "order": 5,
          "resultPath": "caseInfo:relationship",
          "readableBehavior": "Account.Record_Type__c Member or Unlisted Member maps to Member; otherwise Provider",
          "expression": "IF(caseInfo:Account.Record_Type__c = \"Member\" || caseInfo:Account.Record_Type__c = \"Unlisted Member\",\"Member\",\"Provider\")",
          "verification": "Exact expression captured in PENDING_WORK.md from newer supplied screenshots; implementation and runtime validation pending."
        },
        {
          "order": 6,
          "resultPath": "localMemberName",
          "readableBehavior": "For Member/Unlisted Member use caseInfo:Account.Name; otherwise caseInfo:Contact.Name",
          "expression": "IF(caseInfo:Account.Record_Type__c = \"Member\" || caseInfo:Account.Record_Type__c = \"Unlisted Member\",caseInfo:Account.Name,caseInfo:Contact.Name)",
          "verification": "Exact expression captured in PENDING_WORK.md from newer supplied screenshots; implementation and runtime validation pending."
        },
        {
          "order": 7,
          "resultPath": "localMemberFirstName",
          "readableBehavior": "For Member/Unlisted Member use caseInfo:Account.FirstName; otherwise empty string",
          "expression": "IF(caseInfo:Account.Record_Type__c = \"Member\" || caseInfo:Account.Record_Type__c = \"Unlisted Member\",caseInfo:Account.FirstName,\"\")",
          "verification": "Exact expression captured in PENDING_WORK.md from newer supplied screenshots; implementation and runtime validation pending."
        },
        {
          "order": 8,
          "resultPath": "localMemberLastName",
          "readableBehavior": "For Member/Unlisted Member use caseInfo:Account.LastName; otherwise empty string",
          "expression": "IF(caseInfo:Account.Record_Type__c = \"Member\" || caseInfo:Account.Record_Type__c = \"Unlisted Member\",caseInfo:Account.LastName,\"\")",
          "verification": "Exact expression captured in PENDING_WORK.md from newer supplied screenshots; implementation and runtime validation pending."
        },
        {
          "order": 9,
          "resultPath": "localEnterprisePersonId",
          "readableBehavior": "For Member/Unlisted Member use caseInfo:Account.Enterprise_Person_Id__c; otherwise empty string",
          "expression": "IF(caseInfo:Account.Record_Type__c = \"Member\" || caseInfo:Account.Record_Type__c = \"Unlisted Member\",caseInfo:Account.Enterprise_Person_Id__c,\"\")",
          "verification": "Exact expression captured in PENDING_WORK.md from newer supplied screenshots; implementation and runtime validation pending."
        },
        {
          "order": 10,
          "resultPath": "createdDate",
          "readableBehavior": "FORMATDATETIME of caseInfo:CreatedDate, format MM/dd/yyyy",
          "expression": "FORMATDATETIME(caseInfo:CreatedDate,\"MM/dd/yyyy\")",
          "verification": "Exact expression captured in PENDING_WORK.md from newer supplied screenshots; implementation and runtime validation pending."
        },
        {
          "order": 11,
          "resultPath": "receivedDate",
          "readableBehavior": "FORMATDATETIME of caseInfo:Received_Date__c, format MM/dd/yyyy",
          "expression": "FORMATDATETIME(caseInfo:Received_Date__c,\"MM/dd/yyyy\")",
          "verification": "Exact expression captured in PENDING_WORK.md from newer supplied screenshots; implementation and runtime validation pending."
        },
        {
          "order": 12,
          "resultPath": "relatedEntitiesList",
          "readableBehavior": "QUERY selects Entity_Type__c from Case_Sub_Entity__c filtered by Case__c using caseId",
          "expression": "QUERY(\"SELECT Entity_Type__c FROM Case_Sub_Entity__c WHERE Case__c = '{0}'\",caseId)",
          "verification": "Exact expression captured in PENDING_WORK.md from newer supplied screenshots; implementation and runtime validation pending."
        },
        {
          "order": 13,
          "resultPath": "relatedEntities",
          "readableBehavior": "TOSTRING(relatedEntitiesList)",
          "expression": "TOSTRING(relatedEntitiesList)",
          "verification": "Exact expression captured in PENDING_WORK.md from newer supplied screenshots; implementation and runtime validation pending."
        }
      ],
      "formulaVerification": "Exact formulas 1\u201313 now reconciled from newer PENDING_WORK.md evidence. Do not request them again. Runtime validation remains pending.",
      "latestEvidenceScreenshots": [
        "IMG_DE10F392-11C2-48F2-9666-71DA08DF4A09.jpeg",
        "IMG_83757801-E6D8-4415-8159-D2E7345C841C.jpeg",
        "IMG_7692FDD7-99EB-4AB5-99D2-A71BEC980753.jpeg",
        "IMG_02B432B6-93CA-4A20-BB23-33A5AF1F82D7.jpeg",
        "IMG_ED440796-B81F-4FF6-B8B3-1A21D4757B5B.jpeg"
      ],
      "latestVerification": "October 7 screenshots reconfirm existing Case/User extracts, first two formulas and output rows through sourceSystem. Preserve earlier captured remaining rows; latest batch does not reconfirm them. Do not append duplicate mappings."
    },
    {
      "name": "GetMMREmailTemplate",
      "interfaceType": "Extract",
      "inputType": "JSON",
      "outputType": "JSON",
      "extractSteps": [
        {
          "object": "EmailTemplate",
          "outputPath": "Email",
          "filter": {
            "field": "DeveloperName",
            "operator": "=",
            "valueDisplayed": "'MMR_EMAIL_TEMPLATE'",
            "sourceKind": "displayed-quoted-value",
            "exactQuoteSemanticsVerified": false
          }
        }
      ],
      "outputMappings": [
        {
          "extractJsonPath": "Email:HtmlValue",
          "outputJsonPath": "mmrEmailTemplate:selectedTemplate:htmlValue"
        },
        {
          "extractJsonPath": "Email:Subject",
          "outputJsonPath": "mmrEmailTemplate:selectedTemplate:emailTemplateSubject"
        }
      ],
      "formulas": null,
      "options": null,
      "complete": false,
      "previewEvidence": {
        "inputKey": "DeveloperName",
        "inputValue": "MMR_EMAIL_TEMPLATE",
        "responseVisible": false,
        "executedSuccessfullyVerified": false
      },
      "evidenceScreenshots": [
        "IMG_F2B01301-44F0-407A-A0CF-FF1F66E6AD37.jpeg",
        "IMG_1F03F5AE-FCFF-4C84-840C-04F207E1D6B4.jpeg",
        "IMG_D335A082-5392-4EA2-A7F9-9B27AE72E1E1.jpeg",
        "IMG_7CABAFDD-8FD1-42F9-B32F-92158778A7D8.jpeg"
      ]
    },
    {
      "name": "CNCGetHeaderAttributes",
      "interfaceType": "Extract",
      "inputType": "JSON",
      "outputType": "JSON",
      "extractSteps": [
        {
          "object": "CNC_Line_Attributes__mdt",
          "outputPath": "section",
          "filter": {
            "combine": "OR",
            "conditions": [
              {
                "field": "Section_Name__c",
                "operator": "=",
                "input": "sectionName"
              },
              {
                "field": "DeveloperName",
                "operator": "=",
                "input": "lineAttributeName"
              }
            ]
          },
          "limit": 1
        },
        {
          "object": "CNC_Header_Attribute__mdt",
          "outputPath": "columns",
          "filter": {
            "field": "CNC_Line_Attributes__c",
            "operator": "=",
            "input": "section:Id"
          },
          "orderBy": "Column_Order__c"
        },
        {
          "object": "CNC_Button_Attribute__mdt",
          "outputPath": "buttonattributes",
          "filter": {
            "field": "CNC_Line_Attributes__c",
            "operator": "=",
            "input": "section:Id"
          },
          "orderBy": "Order__c"
        },
        {
          "object": "CNC_Search_Attributes__mdt",
          "outputPath": "search",
          "filter": {
            "field": "CNC_Line_Attributes__c",
            "operator": "=",
            "input": "section:Id"
          },
          "orderBy": "Order__c"
        },
        {
          "object": "Account",
          "outputPath": "memberInfo",
          "filter": {
            "combine": "OR",
            "conditions": [
              {
                "field": "Id",
                "operator": "=",
                "input": "recId"
              },
              {
                "field": "Member_Id__pc",
                "operator": "=",
                "input": "memberId"
              }
            ]
          },
          "limit": 1
        },
        {
          "object": "Case",
          "outputPath": "caseInfo",
          "filter": {
            "field": "Id",
            "operator": "=",
            "input": "caseRecordId"
          }
        }
      ],
      "formulas": [
        {
          "observedIndex": 1,
          "resultPath": "columns:typeAttributeVariant",
          "expression": "IF(columns:Data_Type__c == \"button\",\"base\",\"\")",
          "isDisabled": false,
          "verification": "screenshot transcription; exact casing/syntax to confirm from export"
        },
        {
          "observedIndex": 2,
          "resultPath": "columns:typeAttributeLabel",
          "expression": "IF(columns:Data_Type__c == \"button\",columns:API_Response__c,\"\")",
          "isDisabled": false,
          "verification": "screenshot transcription; exact casing/syntax to confirm from export"
        },
        {
          "observedIndex": 3,
          "resultPath": "columns:typeAttributeName",
          "expression": "IF(columns:Data_Type__c == \"button\",columns:API_Response__c,\"\")",
          "isDisabled": false,
          "verification": "screenshot transcription; exact casing/syntax to confirm from export"
        },
        {
          "observedIndex": 4,
          "resultPath": "columns:typeAttributeDisabled",
          "expression": "IF(columns:Data_Type__c == \"button\",true,\"\")",
          "isDisabled": false,
          "verification": "screenshot transcription; exact casing/syntax to confirm from export"
        },
        {
          "observedIndex": 5,
          "resultPath": "section:Show_Pagination__c",
          "expression": "IF(isViewAll == \"VIEWALL\",true,section:Show_Pagination__c)",
          "isDisabled": false,
          "verification": "readable screenshot transcription; runtime not validated"
        },
        {
          "observedIndex": 6,
          "resultPath": "section:Show_ViewAll__c",
          "expression": "IF(isViewAll == \"VIEWALL\",false,section:Show_ViewAll__c)",
          "isDisabled": false,
          "verification": "readable screenshot transcription; runtime not validated"
        },
        {
          "observedIndex": 7,
          "resultPath": "section:Record_Limit_Per_Page__c",
          "expression": "IF(isViewAll == \"VIEWALL\",50,section:Record_Limit_Per_Page__c)",
          "isDisabled": false,
          "verification": "readable screenshot transcription; runtime not validated"
        },
        {
          "observedIndex": 8,
          "resultPath": "section:APIRecordLimit",
          "expression": "IF(isViewAll == \"VIEWALL\",200,10)",
          "isDisabled": false,
          "verification": "screenshot transcription; exact casing/syntax to confirm from export"
        },
        {
          "observedIndex": 9,
          "resultPath": "columns:typeattributesdaymonth",
          "expression": "IF((columns:Data_Type__c == \"date\" OR columns:Data_Type__c == \"date-local\"),\"2-digit\",\"\")",
          "isDisabled": false,
          "verification": "screenshot transcription; exact casing/syntax to confirm from export"
        },
        {
          "observedIndex": 10,
          "resultPath": "columns:typeattributesyear",
          "expression": "IF((columns:Data_Type__c == \"date\" OR columns:Data_Type__c == \"date-local\"),\"numeric\",\"\")",
          "isDisabled": false,
          "verification": "screenshot transcription; exact casing/syntax to confirm from export"
        },
        {
          "observedIndex": 11,
          "resultPath": "columns:wrapText",
          "expression": "IF(columns:Wrap_Text__c, true, \"\")",
          "isDisabled": false,
          "verification": "screenshot transcription; exact casing/syntax to confirm from export"
        }
      ],
      "formulaCountObserved": 11,
      "missingFormulaIndices": [],
      "outputMappings": [
        {
          "extractJsonPath": "buttonattributes:Action_Name__c",
          "outputJsonPath": "buttons:Name"
        },
        {
          "extractJsonPath": "buttonattributes:Order__c",
          "outputJsonPath": "buttons:order"
        },
        {
          "extractJsonPath": "caseInfo:CaseNumber",
          "outputJsonPath": "caseNumber"
        },
        {
          "extractJsonPath": "caseInfo:Id",
          "outputJsonPath": "caseId"
        },
        {
          "extractJsonPath": "caseInfo:OwnerId",
          "outputJsonPath": "caseOwnerId"
        },
        {
          "extractJsonPath": "caseInfo:Previous_Owner__c",
          "outputJsonPath": "previousCaseOwnerId"
        },
        {
          "extractJsonPath": "caseInfo:Source_System_ID__c",
          "outputJsonPath": "externalId"
        },
        {
          "extractJsonPath": "columns:API_Response__c",
          "outputJsonPath": "Columns:fieldName"
        },
        {
          "extractJsonPath": "columns:Column_Order__c",
          "outputJsonPath": "columns:orders"
        },
        {
          "extractJsonPath": "columns:Data_Type__c",
          "outputJsonPath": "Columns:type"
        },
        {
          "extractJsonPath": "columns:Help_Text__c",
          "outputJsonPath": "Columns:helpText"
        },
        {
          "extractJsonPath": "columns:Is_Sortable__c",
          "outputJsonPath": "Columns:sortable"
        },
        {
          "extractJsonPath": "columns:Response_Label__c",
          "outputJsonPath": "Columns:label"
        },
        {
          "extractJsonPath": "columns:Type_Attribute_Target__c",
          "outputJsonPath": "Columns:typeAttributes:target"
        },
        {
          "extractJsonPath": "columns:typeAttributeLabel",
          "outputJsonPath": "Columns:typeAttributes:label:fieldName"
        },
        {
          "extractJsonPath": "columns:typeAttributeName",
          "outputJsonPath": "Columns:typeAttributes:name"
        },
        {
          "extractJsonPath": "columns:typeattributesdaymonth",
          "outputJsonPath": "Columns:typeAttributes:day"
        },
        {
          "extractJsonPath": "columns:typeattributesdaymonth",
          "outputJsonPath": "Columns:typeAttributes:month"
        },
        {
          "extractJsonPath": "columns:typeattributesyear",
          "outputJsonPath": "Columns:typeAttributes:year"
        },
        {
          "extractJsonPath": "columns:typeAttributeVariant",
          "outputJsonPath": "Columns:typeAttributes:variant"
        },
        {
          "extractJsonPath": "columns:wrapText",
          "outputJsonPath": "Columns:wrapText"
        },
        {
          "extractJsonPath": "memberInfo:Blue_Shield_Id__c",
          "outputJsonPath": "blueShieldId"
        },
        {
          "extractJsonPath": "memberInfo:Enterprise_Person_Id__c",
          "outputJsonPath": "personId"
        },
        {
          "extractJsonPath": "memberInfo:HIPAA_Flag__pc",
          "outputJsonPath": "hipaaFlag"
        },
        {
          "extractJsonPath": "memberInfo:Id",
          "outputJsonPath": "Id"
        },
        {
          "extractJsonPath": "memberInfo:Member_Id__pc",
          "outputJsonPath": "memberId"
        },
        {
          "extractJsonPath": "memberInfo:Name",
          "outputJsonPath": "Name"
        },
        {
          "extractJsonPath": "memberInfo:NPI__c",
          "outputJsonPath": "providerNPI"
        },
        {
          "extractJsonPath": "memberInfo:UMPI__c",
          "outputJsonPath": "providerUMPI"
        },
        {
          "extractJsonPath": "profileName:Profile.Name",
          "outputJsonPath": "profName"
        },
        {
          "extractJsonPath": "search:API_Response__c",
          "outputJsonPath": "search:fieldName"
        },
        {
          "extractJsonPath": "search:Field_Type__c",
          "outputJsonPath": "search:FieldType"
        },
        {
          "extractJsonPath": "search:Order__c",
          "outputJsonPath": "search:orderlist"
        },
        {
          "extractJsonPath": "search:Response_Label__c",
          "outputJsonPath": "search:labelName"
        },
        {
          "extractJsonPath": "section:APIRecordLimit",
          "outputJsonPath": "apiRecordLimit"
        },
        {
          "extractJsonPath": "section:Component_Name__c",
          "outputJsonPath": "componentName"
        },
        {
          "extractJsonPath": "section:Is_Selectable__c",
          "outputJsonPath": "IsSelectable"
        },
        {
          "extractJsonPath": "section:Query_Clause__c",
          "outputJsonPath": "fieldToFilter"
        },
        {
          "extractJsonPath": "section:Record_Limit_Per_Page__c",
          "outputJsonPath": "recordLimitPerPage"
        },
        {
          "extractJsonPath": "section:Section_Name__c",
          "outputJsonPath": "sectionName"
        },
        {
          "extractJsonPath": "section:Selectable_Type__c",
          "outputJsonPath": "selectableType"
        },
        {
          "extractJsonPath": "section:Show_Filter_By__c",
          "outputJsonPath": "showFilterBy"
        },
        {
          "extractJsonPath": "section:Show_Pagination__c",
          "outputJsonPath": "showPagination"
        },
        {
          "extractJsonPath": "section:Show_Row_Number__c",
          "outputJsonPath": "showRowNumber"
        },
        {
          "extractJsonPath": "section:Show_Search__c",
          "outputJsonPath": "showSearch"
        },
        {
          "extractJsonPath": "section:Show_ViewAll__c",
          "outputJsonPath": "showViewAll"
        }
      ],
      "options": {
        "timeToLiveMinutes": 0,
        "checkFieldLevelSecurity": false,
        "platformCacheType": null,
        "overwriteTargetForAllNullInputs": false
      },
      "complete": false,
      "evidenceScreenshots": [
        "IMG_1BAC4DC5-FC40-4742-AAB8-A5BD2987AA4A.jpeg",
        "IMG_BB607193-012A-49A6-9BFB-31ED46B4A509.jpeg",
        "IMG_6DEB6056-6CC2-42BC-82CD-D5026D874782.jpeg",
        "IMG_E233A1B5-FBAF-4481-9189-5571277C4FAB.jpeg",
        "IMG_D0D11294-E903-4AC7-934C-EAC08EA9C3A0.jpeg",
        "IMG_0BFF5C8A-39D1-4135-876D-CAFA3588C477.jpeg",
        "IMG_8338C9DE-FFCF-40DB-83A8-872406407A35.jpeg",
        "IMG_24C75048-B01C-4F62-84DF-031521FFB715.jpeg",
        "IMG_AAC4E10A-A045-42EF-96F1-77BD29279D7A.jpeg",
        "IMG_8BB5FFE5-E0AB-44C4-B8AF-10E6FD13D929.jpeg",
        "IMG_52BBECB3-3338-4435-A68C-7D43A4DAA4C2.jpeg"
      ],
      "dependencies": {
        "customMetadataTypes": [
          "CNC_Line_Attributes__mdt",
          "CNC_Header_Attribute__mdt",
          "CNC_Button_Attribute__mdt",
          "CNC_Search_Attributes__mdt"
        ],
        "customMetadataRecords": "Required records and their values not supplied"
      },
      "outputMappingCoverage": {
        "capturedSourceToTargetRows": 46,
        "complete": false,
        "rowDetailPropertiesVerified": false,
        "visibleRowsWithBlankSource": [
          {
            "extractJsonPath": "",
            "outputJsonPath": "search"
          },
          {
            "extractJsonPath": "",
            "outputJsonPath": "Columns"
          }
        ],
        "notes": [
          "Blank source rows are recorded as displayed; their detailed settings and purpose are unknown.",
          "Preserve Columns versus columns casing and columns:orders spelling; do not normalize.",
          "profileName:Profile.Name is mapped, but its source extraction step is not captured.",
          "Output list begins with buttonattributes in this batch; do not assume there are no earlier rows."
        ]
      },
      "formulaCapture": {
        "capturedCount": 11,
        "observedCount": 11,
        "allObservedIndicesCaptured": true,
        "runtimeValidated": false
      }
    },
    {
      "name": "CNCGetInternalAndExternalLinks",
      "interfaceType": "Extract",
      "inputType": "JSON",
      "outputType": "JSON",
      "complete": false,
      "captureStatus": "in-progress",
      "referencedBy": [
        {
          "integrationProcedure": "CNC_GetEmailFormsDetails",
          "elementName": "DR-E-GetForms"
        }
      ],
      "missing": [
        "Output row-level properties/defaults/types",
        "Verify extract filter grouping and false literal semantics"
      ],
      "evidenceScreenshots": [
        "IMG_DE6E1E82-E36E-4E62-B5E8-644C75D8468A.jpeg",
        "IMG_ECB8E752-3AAA-48FB-8B2E-52BAD3BA8DD7.jpeg",
        "IMG_D5CD7D49-B200-4276-8248-5035EE499929.jpeg"
      ],
      "extractSteps": [
        {
          "object": "CNC_Internal_and_External_Website__mdt",
          "outputPath": "links",
          "filterRows": [
            {
              "field": "Entity_Type__c",
              "operator": "=",
              "input": "entityType"
            },
            {
              "join": "OR",
              "field": "Outbound_Channel_Type__c",
              "operator": "LIKE",
              "input": "OutboundChannel"
            },
            {
              "join": "AND",
              "field": "Type__c",
              "operator": "=",
              "input": "type"
            },
            {
              "join": "AND",
              "field": "Is_Inactive__c",
              "operator": "=",
              "valueDisplayed": "'false'"
            }
          ],
          "filterGrouping": null,
          "filterGroupingVerification": "Rows and join operators transcribed as displayed; explicit grouping and literal semantics not verified from export.",
          "orderBy": "Order__c"
        }
      ],
      "outputMappings": [
        {
          "extractJsonPath": "links:Department__c",
          "outputJsonPath": "links:department"
        },
        {
          "extractJsonPath": "links:Group__c",
          "outputJsonPath": "links:group"
        },
        {
          "extractJsonPath": "links:Id",
          "outputJsonPath": "links:Id"
        },
        {
          "extractJsonPath": "links:Is_Internal__c",
          "outputJsonPath": "links:isInternal"
        },
        {
          "extractJsonPath": "links:Order__c",
          "outputJsonPath": "links:order"
        },
        {
          "extractJsonPath": "links:Type__c",
          "outputJsonPath": "links:type"
        },
        {
          "extractJsonPath": "links:URL__c",
          "outputJsonPath": "links:url"
        },
        {
          "extractJsonPath": "links:URL_Label__c",
          "outputJsonPath": "links:label"
        }
      ],
      "outputMappingCoverage": {
        "visibleRows": 8,
        "rowDetailPropertiesVerified": false
      },
      "formulas": [],
      "formulaCoverage": {
        "count": 0,
        "verification": "User confirmed no formulas on 2026-10-01"
      },
      "optionsEvidence": {
        "verification": "User stated no options on 2026-10-01",
        "customOptionsConfigured": false,
        "individualDefaultValuesVerified": false
      }
    },
    {
      "name": "CNCTransformMemberInfo",
      "interfaceType": "Transform",
      "inputType": "JSON",
      "outputType": "JSON",
      "outputMappings": [
        {
          "inputJsonPath": "birthDate",
          "outputJsonPath": "memberInfo:birthDate"
        },
        {
          "inputJsonPath": "email:value",
          "outputJsonPath": "memberInfo:memberEmailAddress"
        },
        {
          "inputJsonPath": "gender",
          "outputJsonPath": "memberInfo:gender"
        },
        {
          "inputJsonPath": "link:relation",
          "outputJsonPath": "memberInfo:relationShip"
        },
        {
          "inputJsonPath": "maxisid:value",
          "outputJsonPath": "memberInfo:maxxisId"
        },
        {
          "inputJsonPath": "memberGivenName",
          "outputJsonPath": "memberInfo:memberGivenName"
        },
        {
          "inputJsonPath": "memberRec:value",
          "outputJsonPath": "memberInfo:memberId"
        },
        {
          "inputJsonPath": "name|1:family",
          "outputJsonPath": "memberInfo:memberFamilyName"
        },
        {
          "inputJsonPath": "name|1:text",
          "outputJsonPath": "memberInfo:memberFullName"
        },
        {
          "inputJsonPath": "phone:value",
          "outputJsonPath": "memberInfo:phone"
        },
        {
          "inputJsonPath": "physicalAddress",
          "outputJsonPath": "memberInfo:physicalAddress"
        },
        {
          "inputJsonPath": "pmiId:value",
          "outputJsonPath": "memberInfo:pmiId"
        },
        {
          "inputJsonPath": "postalAddress",
          "outputJsonPath": "memberInfo:postalAddress"
        }
      ],
      "complete": false,
      "verification": "Visible mapping rows transcribed from screenshots; row settings and remaining formulas/options not captured. Exact unusual capitalization/spelling requires export before executable reconstruction.",
      "evidenceScreenshots": [
        "IMG_8A9CA76B-5E03-4BC0-9163-BB346A0C7C5F.jpeg",
        "IMG_55111E6B-C133-4642-AA11-F62EA72948A0.jpeg"
      ]
    },
    {
      "name": "CNCGetLetterTemplates",
      "interfaceType": "Extract",
      "inputType": "JSON",
      "outputType": "JSON",
      "extractSteps": [
        {
          "object": "DocumentTemplate",
          "outputPath": "letters",
          "filters": [
            {
              "field": "Material_Type__c",
              "operator": "INCLUDES",
              "input": "materialType"
            },
            {
              "field": "Letter_Type__c",
              "operator": "=",
              "input": "letterType"
            },
            {
              "field": "TokenMappingType",
              "operator": "=",
              "input": "'JSON'"
            },
            {
              "field": "Type",
              "operator": "=",
              "input": "'MicrosoftWord'"
            },
            {
              "field": "IsActive",
              "operator": "=",
              "input": "'true'"
            }
          ],
          "orderBy": "Name ASC"
        },
        {
          "object": "DocumentTemplateToken",
          "outputPath": "letters:tokens",
          "filter": {
            "field": "DocumentTemplateId",
            "operator": "=",
            "input": "letters:Id"
          }
        },
        {
          "object": "DocumentTemplateContentDoc",
          "outputPath": "letters:documentInfo",
          "filter": {
            "field": "DocumentTemplateId",
            "operator": "=",
            "input": "letters:Id"
          },
          "orderBy": "CreatedDate DESC"
        },
        {
          "object": "EmailTemplate",
          "outputPath": "letters:emailTemplate",
          "filters": [
            {
              "field": "Name",
              "operator": "=",
              "input": "letters:Email_Template_Name__c"
            },
            {
              "field": "UiType",
              "operator": "=",
              "input": "'SFX'"
            }
          ]
        }
      ],
      "complete": false,
      "environmentComparison": "Visible Dev and QA extract filters match. No Group/department/profile/Print filter is shown in this mapper. UI filtering remains unknown.",
      "evidenceScreenshots": [
        "IMG_5AA320F4-79E2-4B78-8473-518F3F68511A.jpeg",
        "IMG_E741B1B5-FECE-4285-B51C-FFB4770A4B83.jpeg",
        "IMG_52CBBD68-F840-467D-8E26-B08FE8DF79AA.jpeg",
        "IMG_128F2920-0D3B-4F00-AA15-1515D8874ABA.jpeg"
      ]
    }
  ],
  "setValuesElements": [
    {
      "elementName": "SV-InitialMapping",
      "type": "Set Values",
      "values": [
        {
          "name": "isLoggedInUserSameAsCaseOwner",
          "useExpression": true,
          "expression": "IF(%caseOwnerId% = %loggedInUserId%, true, false)"
        }
      ],
      "complete": false
    },
    {
      "elementName": "SV-DefaultMapping",
      "type": "Set Values",
      "values": [
        {
          "name": "isPrint",
          "useExpression": true,
          "expression": "IF(%OutboundChannel% = \"Print\" || %OutboundChannel2% = \"Print\", true, false)"
        },
        {
          "name": "isEmail",
          "useExpression": true,
          "expression": "IF(%OutboundChannel% = \"Email\", true, false)"
        },
        {
          "name": "isAsyncLetterGeneration",
          "useExpression": true,
          "expression": "IF(%MaterialType% = \"POD Documents\", false, true)"
        },
        {
          "name": "isDocumentUploaded",
          "useExpression": false,
          "valueText": "false",
          "runtimeValueType": "unverified"
        },
        {
          "name": "selectedTemplate",
          "useExpression": true,
          "expression": "null"
        },
        {
          "name": "selectedEntity",
          "displayedValue": "=null",
          "useExpression": null,
          "verification": "summary-only"
        },
        {
          "name": "preSelectedLetterTemplate",
          "displayedValue": "=null",
          "useExpression": null,
          "verification": "summary-only"
        },
        {
          "name": "preSelectedCaseEntity",
          "displayedValue": "=null",
          "useExpression": null,
          "verification": "summary-only"
        },
        {
          "name": "preSelectedForms",
          "displayedValue": "=null",
          "useExpression": null,
          "verification": "summary-only"
        },
        {
          "name": "addresseeCommName",
          "displayedValue": "=null",
          "useExpression": null,
          "verification": "summary-only",
          "elementType": "Text"
        },
        {
          "name": "mailingAddress",
          "displayedValue": "=null",
          "useExpression": null,
          "verification": "summary-only",
          "elementType": "Text"
        },
        {
          "name": "isFormshasAttachments",
          "valueText": "true",
          "useExpression": null,
          "runtimeValueType": "unverified",
          "verification": "summary-only"
        },
        {
          "name": "hasMaximumPOD",
          "valueText": "false",
          "useExpression": null,
          "runtimeValueType": "unverified",
          "verification": "summary-only"
        },
        {
          "name": "isLetterReviewRequired",
          "valueText": "false",
          "useExpression": null,
          "runtimeValueType": "unverified",
          "verification": "summary-only"
        },
        {
          "name": "isPOD",
          "useExpression": true,
          "expression": "IF(%MaterialType% = \"POD Documents\", true, false)"
        },
        {
          "name": "isSubscription",
          "useExpression": true,
          "expression": "IF(%isAMMrSubscription% = \"Yes\", true, false)",
          "inputTokenVerification": "Confirm exact casing against export"
        }
      ],
      "complete": false
    },
    {
      "elementName": "SV-ResetTokenMapping",
      "type": "Set Values",
      "values": [
        {
          "name": "tokenMapping",
          "value": null,
          "verification": "Value not legible; appears blank in screenshot. Do not infer null versus empty object/string."
        },
        {
          "name": "isRefreshTokens",
          "valueText": "true",
          "runtimeValueType": "unverified"
        },
        {
          "name": "memberEmail",
          "expression": null,
          "visiblePrefix": "%IP-GetPatientDemographics:memberInfo:",
          "verification": "Remaining path clipped"
        },
        {
          "name": "podEmailAddress",
          "elementType": "Email",
          "expression": null,
          "visiblePrefix": "%IP-GetPatientDemographics:memberInfo:",
          "verification": "Remaining path clipped"
        }
      ],
      "complete": false,
      "evidenceScreenshots": [
        "IMG_628F8D8B-9320-4A63-9821-B777DFB3D0E9.jpeg",
        "IMG_D7625317-966C-4AAF-9196-83C0DD201239.jpeg",
        "IMG_F307DE5C-E942-4C8F-81E2-A896F0D96D8C.jpeg"
      ]
    }
  ],
  "validationPreference": {
    "preview": "deferred-by-user",
    "runtimeValidated": false
  },
  "outerTree": {
    "evidencePath": "Docgen/OMNISCRIPT_TREE.md",
    "childrenExpanded": false,
    "statusMeaning": "Saved/Pending indicate documentation capture progress; not org implementation",
    "elements": [
      {
        "name": "IP-GETCaseDetails",
        "type": "Integration Procedure Action",
        "source": "IMG_32747BB1-44F4-4042-B621-D0803ACBBBA5.jpeg",
        "order": 1,
        "status": "Saved"
      },
      {
        "name": "SV-InitialMapping",
        "type": "Set Values",
        "source": "IMG_32747BB1-44F4-4042-B621-D0803ACBBBA5.jpeg",
        "order": 2,
        "status": "Saved"
      },
      {
        "name": "MaterialAndCommunicationChannel",
        "type": "Step",
        "source": "IMG_32747BB1-44F4-4042-B621-D0803ACBBBA5.jpeg",
        "order": 3,
        "status": "Saved"
      },
      {
        "name": "SV-DefaultMapping",
        "type": "Set Values",
        "source": "IMG_32747BB1-44F4-4042-B621-D0803ACBBBA5.jpeg",
        "order": 4,
        "status": "Saved"
      },
      {
        "name": "ExtractEmailBodyForMMR",
        "type": "Data Mapper Extract Action",
        "source": "IMG_32747BB1-44F4-4042-B621-D0803ACBBBA5.jpeg",
        "order": 5,
        "status": "Saved"
      },
      {
        "name": "IP-GetForms",
        "type": "Integration Procedure Action",
        "source": "IMG_32747BB1-44F4-4042-B621-D0803ACBBBA5.jpeg",
        "order": 6,
        "status": "In progress"
      },
      {
        "name": "Step1",
        "type": "Step",
        "source": "IMG_32747BB1-44F4-4042-B621-D0803ACBBBA5.jpeg",
        "order": 7,
        "status": "In progress"
      },
      {
        "name": "SV-FormSelectionValues",
        "type": "Set Values",
        "source": "IMG_32747BB1-44F4-4042-B621-D0803ACBBBA5.jpeg",
        "order": 8,
        "status": "Pending"
      },
      {
        "name": "SE-FormSelectionError",
        "type": "Set Errors",
        "source": "IMG_32747BB1-44F4-4042-B621-D0803ACBBBA5.jpeg",
        "order": 9,
        "status": "Pending"
      },
      {
        "name": "IP-GetPODDocs",
        "type": "Integration Procedure Action",
        "source": "IMG_6DEFBD37-5BB5-4656-ABB3-0451ACAFB032.jpeg",
        "order": 10,
        "status": "Pending"
      },
      {
        "name": "SelectPODDocs",
        "type": "Step",
        "source": "IMG_6DEFBD37-5BB5-4656-ABB3-0451ACAFB032.jpeg",
        "order": 11,
        "status": "Pending"
      },
      {
        "name": "SetValues1",
        "type": "Set Values",
        "source": "IMG_6DEFBD37-5BB5-4656-ABB3-0451ACAFB032.jpeg",
        "order": 12,
        "status": "Pending"
      },
      {
        "name": "SE-PODSelectionError",
        "type": "Set Errors",
        "source": "IMG_6DEFBD37-5BB5-4656-ABB3-0451ACAFB032.jpeg",
        "order": 13,
        "status": "Pending"
      },
      {
        "name": "SE-PODSelectionCountError",
        "type": "Set Errors",
        "source": "IMG_6DEFBD37-5BB5-4656-ABB3-0451ACAFB032.jpeg",
        "order": 14,
        "status": "Pending"
      },
      {
        "name": "IP-GetLetterData",
        "type": "Integration Procedure Action",
        "source": "IMG_6DEFBD37-5BB5-4656-ABB3-0451ACAFB032.jpeg",
        "order": 15,
        "status": "Pending"
      },
      {
        "name": "SelectEmailAndLetters",
        "type": "Step",
        "source": "IMG_6DEFBD37-5BB5-4656-ABB3-0451ACAFB032.jpeg",
        "order": 16,
        "status": "Pending"
      },
      {
        "name": "SV-LetterSelectionValues",
        "type": "Set Values",
        "source": "IMG_6DEFBD37-5BB5-4656-ABB3-0451ACAFB032.jpeg",
        "order": 17,
        "status": "Pending"
      },
      {
        "name": "SE-LetterSelectionError",
        "type": "Set Errors",
        "source": "IMG_A6047F95-A130-4DF6-B4C8-FC30B2668577.jpeg",
        "order": 18,
        "status": "Pending"
      },
      {
        "name": "IP-GetCaseEntityDetails",
        "type": "Integration Procedure Action",
        "source": "IMG_A6047F95-A130-4DF6-B4C8-FC30B2668577.jpeg",
        "order": 19,
        "status": "Pending"
      },
      {
        "name": "SV-EntityMapping",
        "type": "Set Values",
        "source": "IMG_A6047F95-A130-4DF6-B4C8-FC30B2668577.jpeg",
        "order": 20,
        "status": "Pending"
      },
      {
        "name": "SelectEntity",
        "type": "Step",
        "source": "IMG_A6047F95-A130-4DF6-B4C8-FC30B2668577.jpeg",
        "order": 21,
        "status": "Pending"
      },
      {
        "name": "SV-EntitySelection",
        "type": "Set Values",
        "source": "IMG_A6047F95-A130-4DF6-B4C8-FC30B2668577.jpeg",
        "order": 22,
        "status": "Pending"
      },
      {
        "name": "SE-EntitySelectionError",
        "type": "Set Errors",
        "source": "IMG_A6047F95-A130-4DF6-B4C8-FC30B2668577.jpeg",
        "order": 23,
        "status": "Pending"
      },
      {
        "name": "IP-GETAPITokenData",
        "type": "Integration Procedure Action",
        "source": "IMG_A6047F95-A130-4DF6-B4C8-FC30B2668577.jpeg",
        "order": 24,
        "status": "Pending"
      },
      {
        "name": "SV-SetCommAddressData",
        "type": "Set Values",
        "source": "IMG_A6047F95-A130-4DF6-B4C8-FC30B2668577.jpeg",
        "order": 25,
        "status": "Pending"
      },
      {
        "name": "SelectAddress",
        "type": "Step",
        "source": "IMG_A6047F95-A130-4DF6-B4C8-FC30B2668577.jpeg",
        "order": 26,
        "status": "Pending"
      },
      {
        "name": "SV-AddressMapping",
        "type": "Set Values",
        "source": "IMG_B4D7FFA4-34B2-428C-8F4D-CAE20646F9D7.jpeg",
        "order": 27,
        "status": "Pending"
      },
      {
        "name": "SE-CommAddError",
        "type": "Set Errors",
        "source": "IMG_B4D7FFA4-34B2-428C-8F4D-CAE20646F9D7.jpeg",
        "order": 28,
        "status": "Pending"
      },
      {
        "name": "DR-CheckIfParagraphsExists",
        "type": "Data Mapper Extract Action",
        "source": "IMG_B4D7FFA4-34B2-428C-8F4D-CAE20646F9D7.jpeg",
        "order": 29,
        "status": "Pending"
      },
      {
        "name": "SelectParagraphs",
        "type": "Step",
        "source": "IMG_B4D7FFA4-34B2-428C-8F4D-CAE20646F9D7.jpeg",
        "order": 30,
        "status": "Pending"
      },
      {
        "name": "IP-GetPatientDemographics",
        "type": "Integration Procedure Action",
        "source": "IMG_B4D7FFA4-34B2-428C-8F4D-CAE20646F9D7.jpeg",
        "order": 31,
        "status": "Pending"
      },
      {
        "name": "SV-ResetTokenMapping",
        "type": "Set Values",
        "source": "IMG_B4D7FFA4-34B2-428C-8F4D-CAE20646F9D7.jpeg",
        "order": 32,
        "status": "Pending"
      },
      {
        "name": "RA-SetDefaultTokenMapping",
        "type": "Remote Action",
        "source": "IMG_B4D7FFA4-34B2-428C-8F4D-CAE20646F9D7.jpeg",
        "order": 33,
        "status": "Pending"
      },
      {
        "name": "sv-podMappings",
        "type": "Set Values",
        "source": "IMG_B4D7FFA4-34B2-428C-8F4D-CAE20646F9D7.jpeg",
        "order": 34,
        "status": "Pending"
      },
      {
        "name": "SelectEmail",
        "type": "Step",
        "source": "IMG_B4D7FFA4-34B2-428C-8F4D-CAE20646F9D7.jpeg",
        "order": 35,
        "status": "Pending"
      },
      {
        "name": "RA-updateLinks",
        "type": "Remote Action",
        "source": "IMG_0B8CD2B8-2F3F-4456-8E16-98469A98486F.jpeg",
        "order": 36,
        "status": "Pending"
      },
      {
        "name": "AdditionalInformation",
        "type": "Step",
        "source": "IMG_0B8CD2B8-2F3F-4456-8E16-98469A98486F.jpeg",
        "order": 37,
        "status": "Pending"
      },
      {
        "name": "RA-InsertSelectedForms",
        "type": "Remote Action",
        "source": "IMG_0B8CD2B8-2F3F-4456-8E16-98469A98486F.jpeg",
        "order": 38,
        "status": "In progress"
      },
      {
        "name": "IP-DeleteLetterData",
        "type": "Integration Procedure Action",
        "source": "IMG_0B8CD2B8-2F3F-4456-8E16-98469A98486F.jpeg",
        "order": 39,
        "status": "Pending"
      },
      {
        "name": "IP-GenerateLetterinAsync",
        "type": "Integration Procedure Action",
        "source": "IMG_0B8CD2B8-2F3F-4456-8E16-98469A98486F.jpeg",
        "order": 40,
        "status": "In progress"
      },
      {
        "name": "Set Generation_Options",
        "type": "Set Values",
        "source": "IMG_0B8CD2B8-2F3F-4456-8E16-98469A98486F.jpeg",
        "order": 41,
        "status": "Pending"
      },
      {
        "name": "ReviewandSubmitAsync",
        "type": "Step",
        "source": "IMG_0B8CD2B8-2F3F-4456-8E16-98469A98486F.jpeg",
        "order": 42,
        "status": "Pending"
      },
      {
        "name": "ReviewandSubmitSync",
        "type": "Step",
        "source": "IMG_0B8CD2B8-2F3F-4456-8E16-98469A98486F.jpeg",
        "order": 43,
        "status": "Pending"
      },
      {
        "name": "set-sectionName",
        "type": "Set Values",
        "source": "IMG_0B8CD2B8-2F3F-4456-8E16-98469A98486F.jpeg",
        "order": 44,
        "status": "Pending"
      },
      {
        "name": "ReviewPOD",
        "type": "Step",
        "source": "IMG_9ECBF03F-7E51-455D-9A3B-65293944794F.jpeg",
        "order": 45,
        "status": "Pending"
      },
      {
        "name": "SV-BuddyFileMapping",
        "type": "Set Values",
        "source": "IMG_9ECBF03F-7E51-455D-9A3B-65293944794F.jpeg",
        "order": 46,
        "status": "Pending"
      },
      {
        "name": "RA-SendEFilesToS3",
        "type": "Remote Action",
        "source": "IMG_9ECBF03F-7E51-455D-9A3B-65293944794F.jpeg",
        "order": 47,
        "status": "Pending"
      },
      {
        "name": "SV-UploadSuccess",
        "type": "Set Values",
        "source": "IMG_9ECBF03F-7E51-455D-9A3B-65293944794F.jpeg",
        "order": 48,
        "status": "Pending"
      },
      {
        "name": "RA-SendEmail",
        "type": "Remote Action",
        "source": "IMG_9ECBF03F-7E51-455D-9A3B-65293944794F.jpeg",
        "order": 49,
        "status": "Pending"
      },
      {
        "name": "RA-createContactPoint",
        "type": "Remote Action",
        "source": "IMG_9ECBF03F-7E51-455D-9A3B-65293944794F.jpeg",
        "order": 50,
        "status": "Pending"
      },
      {
        "name": "Confirmation",
        "type": "Step",
        "source": "IMG_9ECBF03F-7E51-455D-9A3B-65293944794F.jpeg",
        "order": 51,
        "status": "Pending"
      },
      {
        "name": "RA-creteATrackCommunicationRecord",
        "type": "Remote Action",
        "source": "IMG_9ECBF03F-7E51-455D-9A3B-65293944794F.jpeg",
        "order": 52,
        "status": "Pending"
      }
    ]
  },
  "procedureDiscovery": [],
  "stepElements": [
    {
      "elementName": "Step1",
      "elementType": "Step",
      "captureStatus": "in-progress",
      "complete": false,
      "visibleLayoutItems": [
        {
          "order": 1,
          "elementName": null,
          "displayText": "Select Forms",
          "elementType": null
        },
        {
          "order": 2,
          "elementName": null,
          "displayText": "Select Documents",
          "elementType": null
        },
        {
          "order": 3,
          "elementName": "Messaging12",
          "elementType": null
        },
        {
          "order": 4,
          "elementName": "Messaging13",
          "elementType": null
        },
        {
          "order": 5,
          "elementName": "LineBreak13",
          "elementType": null
        },
        {
          "order": 6,
          "elementName": "CustomLWC4",
          "elementType": "Custom LWC",
          "componentDisplayed": "c:cncDynamicTableSections",
          "fieldLabel": "SelectFormsLwc",
          "componentName": "cncDynamicTableSections",
          "observedActive": true,
          "standaloneLwc": false,
          "propertyMappings": [
            {
              "name": "recorddata",
              "source": "%formsdata%"
            },
            {
              "name": "isomniscript",
              "source": "true"
            },
            {
              "name": "omniscriptname",
              "source": "SendCommunication"
            },
            {
              "name": "omniscriptstepname",
              "source": "SelectForms"
            },
            {
              "name": "preselecteddata",
              "source": "%preSelectedForms%"
            },
            {
              "name": "table-height",
              "source": "524"
            }
          ],
          "propertyListComplete": false,
          "conditionalView": null,
          "evidenceScreenshots": [
            "IMG_1568837F-8F59-4017-A58E-18D3356EB1BC.jpeg"
          ]
        },
        {
          "order": 7,
          "elementName": "LineBreak14",
          "elementType": null
        },
        {
          "order": 8,
          "elementName": null,
          "displayText": "Upload Forms/Documents - PDF documents only\n(If Applicable)",
          "elementType": null
        },
        {
          "order": 9,
          "elementName": "CustomLWC2",
          "elementType": "Custom LWC",
          "componentDisplayed": "c:cncAttachmentsUploadSection",
          "fieldLabel": "uploadFormsAndDocuments",
          "componentName": "cncAttachmentsUploadSection",
          "observedActive": true,
          "standaloneLwc": false,
          "propertyMappings": [
            {
              "name": "uploadforms",
              "source": "true"
            },
            {
              "name": "currentrecordid",
              "source": "%ContextId%"
            }
          ],
          "propertyListComplete": true,
          "conditionalView": null,
          "internalNotes": "",
          "evidenceScreenshots": [
            "IMG_826F9DCF-A34C-4E03-B0B2-336B8376D9CE.jpeg"
          ]
        },
        {
          "order": 10,
          "elementName": null,
          "displayText": "Ensure Email is selected only for Non-PHI Forms",
          "elementType": null
        },
        {
          "order": 11,
          "elementName": null,
          "displayText": "Ensure Email is selected only for Non-PHI Document",
          "elementType": null
        }
      ],
      "navigationVisible": [
        "Previous",
        "Next"
      ],
      "missing": [
        "Remaining Step/button properties and conditional view",
        "Unnamed heading/guidance element identities and types",
        "Messaging, heading and line-break properties/conditions",
        "CustomLWC4 remaining attributes and both custom component conditional views",
        "Custom component source and dependencies"
      ],
      "evidenceScreenshots": [
        "IMG_BB1CA589-D991-47C2-8064-76907F69E666.jpeg",
        "IMG_AF8E6CC8-D43D-4C47-97F8-C76516956DE7.jpeg",
        "IMG_1568837F-8F59-4017-A58E-18D3356EB1BC.jpeg",
        "IMG_826F9DCF-A34C-4E03-B0B2-336B8376D9CE.jpeg"
      ],
      "observedActive": true,
      "fieldLabel": "",
      "chartLabel": "",
      "instruction": "",
      "allowSaveForLater": true,
      "buttonProperties": {
        "previousLabel": "Previous",
        "nextLabel": "Next"
      }
    },
    {
      "elementName": "MaterialAndCommunicationChannel",
      "elementType": "Step",
      "captureStatus": "visible-layout-and-condition-evidence-captured",
      "complete": false,
      "visibleTitle": "Material and Outbound Channel Selection",
      "materialType": {
        "displayLabel": "Material Type",
        "elementName": null,
        "visibleChoices": [
          "Forms",
          "Documents",
          "Letters",
          "Other Communication",
          "Member Materials Request (MMR) Documents"
        ],
        "storedValuesVerified": false
      },
      "conditionalViewEvidence": [
        {
          "elementName": "MSG_CaseOwnerError",
          "displayedCondition": "(isLoggedInUserSameAsCaseOwner = false)",
          "conditionType": null,
          "evidenceScreenshot": "IMG_F486DE2B-37F2-4A41-8971-123AFDA8B732.jpeg"
        },
        {
          "elementName": null,
          "visibleLocation": "First Outbound Channel control",
          "displayLabel": "Outbound Channel",
          "visibleChoices": [
            "Email",
            "Print"
          ],
          "displayedCondition": "(MaterialType <> Letters)",
          "conditionType": null,
          "evidenceScreenshot": "IMG_70A81DDB-AC28-42DC-8088-05F8251167CA.jpeg"
        },
        {
          "elementName": null,
          "visibleLocation": "Second Outbound Channel control",
          "displayLabel": "Outbound Channel",
          "visibleChoices": [
            "Email",
            "Print"
          ],
          "displayedCondition": "(MaterialType = Letters)",
          "conditionType": null,
          "evidenceScreenshot": "IMG_A7E26B77-B101-4132-90A9-B8ECE52EC500.jpeg"
        },
        {
          "elementName": null,
          "visibleLocation": "Email guidance below channel controls",
          "displayText": "Ensure Email is selected only for Non-PHI Blank Forms and Documents",
          "displayedCondition": "(MaterialType <>  AND MaterialType <> Letters AND OutboundChannel = Email)",
          "conditionType": null,
          "verification": "First MaterialType comparison has no readable right-hand value in the tooltip. Preserve the displayed blank; exact export syntax and empty-value semantics remain unverified.",
          "evidenceScreenshot": "IMG_7ACBD6F4-31F7-4D59-9114-9D0C1195E8F6.jpeg"
        }
      ],
      "navigationVisible": [
        "Next"
      ],
      "missing": [
        "Step properties and remaining child identities/types",
        "Material Type stored values, defaults and complete radio properties",
        "Both channel control element names, stored values, defaults and complete properties",
        "Condition types and exact exported syntax; first comparison value in guidance tooltip",
        "Case-owner message content and enforcement behavior",
        "Remaining child properties and conditions"
      ],
      "evidenceScreenshots": [
        "IMG_F486DE2B-37F2-4A41-8971-123AFDA8B732.jpeg",
        "IMG_70A81DDB-AC28-42DC-8088-05F8251167CA.jpeg",
        "IMG_A7E26B77-B101-4132-90A9-B8ECE52EC500.jpeg",
        "IMG_7ACBD6F4-31F7-4D59-9114-9D0C1195E8F6.jpeg"
      ]
    },
    {
      "elementName": "AdditionalInformation",
      "type": "Step",
      "fieldLabel": "",
      "chartLabel": "",
      "instruction": "",
      "allowSaveForLater": true,
      "visibleLayoutItems": [
        {
          "visibleOrder": 1,
          "elementName": null,
          "type": null,
          "displayText": "Enter Additional Information for Letter Selected",
          "conditionalView": null
        },
        {
          "visibleOrder": 2,
          "elementName": null,
          "type": null,
          "displayText": "Enter Additional Information for Cover Letter",
          "conditionalView": null
        },
        {
          "visibleOrder": 3,
          "elementName": null,
          "type": null,
          "displayText": "Edit Email",
          "conditionalView": null
        },
        {
          "visibleOrder": 4,
          "elementName": null,
          "type": null,
          "displayText": "Additional Information for Subscription",
          "conditionalView": null
        },
        {
          "visibleOrder": 5,
          "elementName": "EnterAdditionalInformation",
          "type": null,
          "componentName": "cncSendCommunicationAdditionalInfo",
          "renderedMarkup": "<c:cncSendCommunicationAdditionalInfo />",
          "inputMapping": null,
          "conditionalView": null
        }
      ],
      "adjacentElementsObserved": {
        "preceding": {
          "elementName": "RA-UpdateLinks",
          "type": "Remote Action"
        },
        "following": [
          {
            "elementName": "RA-InsertSelectedForms",
            "type": "Remote Action"
          },
          {
            "elementName": "IP-DeleteLetterData",
            "type": "Integration Procedure Action"
          }
        ]
      },
      "evidenceScreenshots": [
        "IMG_DA63D02D-536A-42EC-A1DE-80111203FBBF.jpeg"
      ],
      "captureComplete": false,
      "missing": [
        "Custom LWC element properties and input mappings",
        "Heading identities/types and execution conditions",
        "Step conditional/button properties",
        "Full cncSendCommunicationAdditionalInfo source",
        "Token data origin and JSON updates"
      ],
      "notes": "Step properties are selected in screenshot. Custom LWC component identity is visible in canvas markup; field-rendering implementation and token-driven behavior are not established. Adjacent action names/types do not establish their behavior or whether they execute for this route."
    }
  ],
  "customMetadataEvidence": {
    "types": [
      {
        "name": "CNC_Button_Attribute__mdt",
        "singularLabel": "CNC Button Attribute",
        "pluralLabel": "CNC Button Attributes",
        "visibility": "Public",
        "reportedCustomFieldCount": 7,
        "fieldInventoryComplete": true,
        "fields": [
          {
            "apiName": "Action_Name__c",
            "label": "Action Name",
            "dataType": "Text(15)",
            "indexed": false,
            "fieldManageability": "Upgradable",
            "settingsDetailCaptured": false,
            "defaultValue": null
          },
          {
            "apiName": "Button_Label__c",
            "label": "Button Label",
            "dataType": "Text(15)",
            "indexed": false,
            "fieldManageability": "Upgradable",
            "settingsDetailCaptured": false,
            "defaultValue": null
          },
          {
            "apiName": "Button_Location__c",
            "label": "Button Location",
            "dataType": "Text(20)",
            "indexed": false,
            "fieldManageability": "Upgradable",
            "settingsDetailCaptured": false,
            "defaultValue": null
          },
          {
            "apiName": "CNC_Line_Attributes__c",
            "label": "CNC Line Attributes",
            "dataType": "Metadata Relationship(CNC Line Attributes)",
            "indexed": true,
            "fieldManageability": "Upgradable",
            "settingsDetailCaptured": false,
            "defaultValue": null
          },
          {
            "apiName": "CNC_Master_Attributes__c",
            "label": "CNC Master Attributes",
            "dataType": "Metadata Relationship(CNC Master Attributes)",
            "indexed": true,
            "fieldManageability": "Upgradable",
            "settingsDetailCaptured": false,
            "defaultValue": null
          },
          {
            "apiName": "Disabled__c",
            "label": "Disabled",
            "dataType": "Text(5)",
            "indexed": false,
            "fieldManageability": "Upgradable",
            "settingsDetailCaptured": false,
            "defaultValue": null
          },
          {
            "apiName": "Order__c",
            "label": "Order",
            "dataType": "Number(18, 0)",
            "indexed": false,
            "fieldManageability": "Upgradable",
            "settingsDetailCaptured": false,
            "defaultValue": null
          }
        ],
        "fieldDefinitionDetailsComplete": false,
        "recordDetailsCaptured": false,
        "recordValues": null,
        "evidenceScreenshots": [
          "IMG_CC9BD776-A527-446E-9DC0-4E749B63CA5C.jpeg",
          "IMG_F5902140-0A3B-4558-BE50-A6A444CD04FD.jpeg"
        ],
        "status": "captured-schema-inventory-only-not-deployed"
      },
      {
        "name": "CNC_Header_Attribute__mdt",
        "singularLabel": "CNC Header Attribute",
        "pluralLabel": "CNC Header Attributes",
        "visibility": "Public",
        "reportedCustomFieldCount": 9,
        "fieldInventoryComplete": true,
        "fields": [
          {
            "apiName": "API_Response__c",
            "label": "API Response",
            "dataType": "Text(50)",
            "indexed": false,
            "fieldManageability": "Upgradable",
            "settingsDetailCaptured": false,
            "defaultValue": null
          },
          {
            "apiName": "CNC_Line_Attributes__c",
            "label": "CNC Line Attributes",
            "dataType": "Metadata Relationship(CNC Line Attributes)",
            "indexed": true,
            "fieldManageability": "Upgradable",
            "settingsDetailCaptured": false,
            "defaultValue": null
          },
          {
            "apiName": "Column_Order__c",
            "label": "Column Order",
            "dataType": "Number(18, 0)",
            "indexed": false,
            "fieldManageability": "Upgradable",
            "settingsDetailCaptured": false,
            "defaultValue": null
          },
          {
            "apiName": "Data_Type__c",
            "label": "Data Type",
            "dataType": "Text(15)",
            "indexed": false,
            "fieldManageability": "Upgradable",
            "settingsDetailCaptured": false,
            "defaultValue": null
          },
          {
            "apiName": "Default_Value__c",
            "label": "Default Value",
            "dataType": "Text(255)",
            "indexed": false,
            "fieldManageability": "Upgradable",
            "settingsDetailCaptured": false,
            "defaultValue": null
          },
          {
            "apiName": "Help_Text__c",
            "label": "Help Text",
            "dataType": "Text(255)",
            "indexed": false,
            "fieldManageability": "Upgradable",
            "settingsDetailCaptured": false,
            "defaultValue": null
          },
          {
            "apiName": "Is_Sortable__c",
            "label": "Is Sortable",
            "dataType": "Checkbox",
            "indexed": false,
            "fieldManageability": "Upgradable",
            "settingsDetailCaptured": false,
            "defaultValue": null
          },
          {
            "apiName": "Response_Label__c",
            "label": "Response Label",
            "dataType": "Text(70)",
            "indexed": false,
            "fieldManageability": "Upgradable",
            "settingsDetailCaptured": false,
            "defaultValue": null
          },
          {
            "apiName": "Wrap_Text__c",
            "label": "Wrap Text",
            "dataType": "Checkbox",
            "indexed": false,
            "fieldManageability": "Upgradable",
            "settingsDetailCaptured": false,
            "defaultValue": null
          }
        ],
        "fieldDefinitionDetailsComplete": false,
        "recordDetailsCaptured": false,
        "recordValues": null,
        "evidenceScreenshots": [
          "IMG_4A5C39F9-F33E-4410-AC3F-275FDCEDE138.jpeg",
          "IMG_3AB333F1-2CBF-45E5-9485-9190914BB6B3.jpeg"
        ],
        "status": "captured-schema-inventory-only-not-deployed"
      },
      {
        "name": "CNC_Line_Attributes__mdt",
        "singularLabel": "CNC Line Attributes",
        "pluralLabel": "CNC Line Attributes",
        "visibility": "Public",
        "reportedCustomFieldCount": 16,
        "fieldInventoryComplete": true,
        "fields": [
          {
            "apiName": "CNC_Master_Attribute__c",
            "label": "CNC Master Attribute",
            "dataType": "Metadata Relationship(CNC Master Attributes)",
            "indexed": true,
            "fieldManageability": "Upgradable",
            "settingsDetailCaptured": false,
            "defaultValue": null
          },
          {
            "apiName": "Component_Name__c",
            "label": "Component Name",
            "dataType": "Text(255)",
            "indexed": false,
            "fieldManageability": "Upgradable",
            "settingsDetailCaptured": false,
            "defaultValue": null
          },
          {
            "apiName": "Component_Type__c",
            "label": "Component Type",
            "dataType": "Picklist",
            "indexed": false,
            "fieldManageability": "Upgradable",
            "settingsDetailCaptured": false,
            "defaultValue": null
          },
          {
            "apiName": "isAccordian__c",
            "label": "isAccordian",
            "dataType": "Checkbox",
            "indexed": false,
            "fieldManageability": "Upgradable",
            "settingsDetailCaptured": false,
            "defaultValue": null
          },
          {
            "apiName": "Is_Selectable__c",
            "label": "Is Selectable",
            "dataType": "Checkbox",
            "indexed": false,
            "fieldManageability": "Upgradable",
            "settingsDetailCaptured": false,
            "defaultValue": null
          },
          {
            "apiName": "Order__c",
            "label": "Order",
            "dataType": "Number(18, 0)",
            "indexed": false,
            "fieldManageability": "Upgradable",
            "settingsDetailCaptured": false,
            "defaultValue": null
          },
          {
            "apiName": "Query_Clause__c",
            "label": "Query Clause",
            "dataType": "Text(20)",
            "indexed": false,
            "fieldManageability": "Upgradable",
            "settingsDetailCaptured": false,
            "defaultValue": null
          },
          {
            "apiName": "Record_Limit_Per_Page__c",
            "label": "Record Limit Per Page",
            "dataType": "Number(18, 0)",
            "indexed": false,
            "fieldManageability": "Upgradable",
            "settingsDetailCaptured": false,
            "defaultValue": null
          },
          {
            "apiName": "Section_Name__c",
            "label": "Section Name",
            "dataType": "Text(255)",
            "indexed": false,
            "fieldManageability": "Upgradable",
            "settingsDetailCaptured": false,
            "defaultValue": null
          },
          {
            "apiName": "Selectable_Type__c",
            "label": "Selectable Type",
            "dataType": "Picklist",
            "indexed": false,
            "fieldManageability": "Upgradable",
            "settingsDetailCaptured": false,
            "defaultValue": null
          },
          {
            "apiName": "Show_Filter_By__c",
            "label": "Show Filter By",
            "dataType": "Checkbox",
            "indexed": false,
            "fieldManageability": "Upgradable",
            "settingsDetailCaptured": false,
            "defaultValue": null
          },
          {
            "apiName": "Show_Pagination__c",
            "label": "Show Pagination",
            "dataType": "Checkbox",
            "indexed": false,
            "fieldManageability": "Upgradable",
            "settingsDetailCaptured": false,
            "defaultValue": null
          },
          {
            "apiName": "Show_Row_Number__c",
            "label": "Show Row Number",
            "dataType": "Checkbox",
            "indexed": false,
            "fieldManageability": "Upgradable",
            "settingsDetailCaptured": false,
            "defaultValue": null
          },
          {
            "apiName": "Show_Search__c",
            "label": "Show Search",
            "dataType": "Checkbox",
            "indexed": false,
            "fieldManageability": "Upgradable",
            "settingsDetailCaptured": false,
            "defaultValue": null
          },
          {
            "apiName": "Show_ViewAll__c",
            "label": "Show ViewAll",
            "dataType": "Checkbox",
            "indexed": false,
            "fieldManageability": "Upgradable",
            "settingsDetailCaptured": false,
            "defaultValue": null
          },
          {
            "apiName": "UI_Type__c",
            "label": "UI Type",
            "dataType": "Picklist",
            "indexed": false,
            "fieldManageability": "Upgradable",
            "settingsDetailCaptured": false,
            "defaultValue": null
          }
        ],
        "fieldDefinitionDetailsComplete": false,
        "recordDetailsCaptured": false,
        "recordValues": null,
        "evidenceScreenshots": [
          "IMG_7F84F67A-F3A5-4B04-A3E0-FEFA2840BBD7.jpeg",
          "IMG_29048FA2-7C9D-4557-8D4C-9ADFE1EA1A20.jpeg"
        ],
        "status": "captured-schema-inventory-only-not-deployed"
      },
      {
        "name": "CNC_Search_Attributes__mdt",
        "singularLabel": "CNC Search Attributes",
        "pluralLabel": "CNC Search Attributes",
        "visibility": "Public",
        "reportedCustomFieldCount": 6,
        "fieldInventoryComplete": false,
        "fields": [
          {
            "apiName": "API_Response__c",
            "label": "API Response",
            "dataType": "Text(255)",
            "indexed": false,
            "fieldManageability": "Upgradable",
            "settingsDetailCaptured": false,
            "defaultValue": null
          },
          {
            "apiName": "CNC_Line_Attributes__c",
            "label": "CNC Line Attributes",
            "dataType": "Metadata Relationship(CNC Line Attributes)",
            "indexed": true,
            "fieldManageability": "Upgradable",
            "settingsDetailCaptured": false,
            "defaultValue": null
          }
        ],
        "fieldDefinitionDetailsComplete": false,
        "recordDetailsCaptured": false,
        "recordValues": null,
        "evidenceScreenshots": [
          "IMG_E84F76EB-303E-4C4C-9C63-D4F0BD7BDEA0.jpeg"
        ],
        "status": "captured-schema-inventory-only-not-deployed"
      }
    ],
    "dependencies": [
      {
        "name": "CNC_Master_Attributes__mdt",
        "reason": "Metadata relationship targets in Button and Line inventories",
        "schemaCaptured": false,
        "recordsCaptured": false
      }
    ],
    "recordInventories": [
      {
        "typeName": "CNC_Button_Attribute__mdt",
        "records": [
          {
            "label": "Case Comments",
            "developerName": "Ref_Case_Comments",
            "fieldValues": null
          },
          {
            "label": "New Case",
            "developerName": "Auth_New_Case",
            "fieldValues": null
          },
          {
            "label": "New Case",
            "developerName": "Claims_New_Case",
            "fieldValues": null
          },
          {
            "label": "New Case",
            "developerName": "External_New_Case",
            "fieldValues": null
          },
          {
            "label": "New Case",
            "developerName": "New_Case",
            "fieldValues": null
          },
          {
            "label": "New Case",
            "developerName": "Ref_New_Case",
            "fieldValues": null
          },
          {
            "label": "Provider Search",
            "developerName": "Provider_Search",
            "fieldValues": null
          },
          {
            "label": "View Documents",
            "developerName": "Auth_View_Documents",
            "fieldValues": null
          },
          {
            "label": "View Documents",
            "developerName": "Plan_Documents",
            "fieldValues": null
          },
          {
            "label": "View Documents",
            "developerName": "Ref_View_Documents",
            "fieldValues": null
          },
          {
            "label": "View Documents",
            "developerName": "View_Documents",
            "fieldValues": null
          },
          {
            "label": "View ID Card",
            "developerName": "View_ID_Card",
            "fieldValues": null
          }
        ],
        "evidenceScreenshots": [
          "IMG_37767B2B-AAC2-44A5-9A22-E23515C10137.jpeg"
        ],
        "inventoryComplete": false
      },
      {
        "typeName": "CNC_Header_Attribute__mdt",
        "records": [
          {
            "developerName": "Accum_Name",
            "label": "Account Name",
            "fieldValues": null
          },
          {
            "developerName": "Accum_Billed",
            "label": "Accum Billed",
            "fieldValues": null
          },
          {
            "developerName": "Accum_Claim_Number",
            "label": "Accum Claim Number",
            "fieldValues": null
          },
          {
            "developerName": "Accum_ClaimSubtype",
            "label": "Accum ClaimSubtype",
            "fieldValues": null
          },
          {
            "developerName": "Accum_Date_Claim_Paid",
            "label": "Accum Date Claim Paid",
            "fieldValues": null
          },
          {
            "developerName": "Accum_ProviderName",
            "label": "Accum ProviderName",
            "fieldValues": null
          },
          {
            "developerName": "Accum_ServiceDateFrom",
            "label": "Accum ServiceDateFrom",
            "fieldValues": null
          },
          {
            "developerName": "Accum_ServiceDateThru",
            "label": "Accum ServiceDateThru",
            "fieldValues": null
          },
          {
            "developerName": "Accum_Status",
            "label": "Accum Status",
            "fieldValues": null
          },
          {
            "developerName": "Accums_Limits_Accumulator_Description",
            "label": "Accums Limits Accumulator Description",
            "fieldValues": null
          },
          {
            "developerName": "Accums_Limits_Total_Amount_Limit",
            "label": "Accums Limits Total AmountLimit",
            "fieldValues": null
          },
          {
            "developerName": "Accumulation_Details_Accum_Number",
            "label": "Accumulation_Details_Accum_Number",
            "fieldValues": null
          },
          {
            "developerName": "Accumulation_Details_Accum_Type",
            "label": "Accumulation_Details_Accum_Type",
            "fieldValues": null
          },
          {
            "developerName": "Accumulation_Details_Amt1",
            "label": "Accumulation_Details_Amt1",
            "fieldValues": null
          },
          {
            "developerName": "Accumulation_Details_Ctr1",
            "label": "Accumulation_Details_Ctr1",
            "fieldValues": null
          },
          {
            "developerName": "Accumulation_Details_Trans_Amt1",
            "label": "Accumulation_Details_Trans_Amt1",
            "fieldValues": null
          },
          {
            "developerName": "Accumulation_Details_Trans_Ctr1",
            "label": "Accumulation_Details_Trans_Ctr1",
            "fieldValues": null
          },
          {
            "developerName": "Action",
            "label": "Action",
            "fieldValues": null
          },
          {
            "developerName": "Accums_Limits_Carry_Over_Amount_Limit",
            "label": "Accums Limits Carry Over AmountLimit",
            "fieldValues": null
          },
          {
            "developerName": "Accums_Limits_Met_Amount_Limit",
            "label": "Accums Limits Met AmountLimit",
            "fieldValues": null
          },
          {
            "developerName": "Accums_Limits_Period",
            "label": "Accums Limits Period",
            "fieldValues": null
          },
          {
            "developerName": "Accums_Limits_Remaining_Amount_Limit",
            "label": "Accums Limits Remaining AmountLimit",
            "fieldValues": null
          },
          {
            "developerName": "Address",
            "label": "Address",
            "fieldValues": null
          },
          {
            "developerName": "Address1",
            "label": "Address1",
            "fieldValues": null
          },
          {
            "developerName": "Address1_POD",
            "label": "Address1_POD",
            "fieldValues": null
          },
          {
            "developerName": "Address2",
            "label": "Address2",
            "fieldValues": null
          },
          {
            "developerName": "Address2_POD",
            "label": "Address2_POD",
            "fieldValues": null
          },
          {
            "developerName": "Admission_Date",
            "label": "Admission Date",
            "fieldValues": null
          },
          {
            "developerName": "Admit_Date",
            "label": "Admit Date",
            "fieldValues": null
          },
          {
            "developerName": "Attach_Entity_Member_Id",
            "label": "Attach Entity Member Id",
            "fieldValues": null
          },
          {
            "developerName": "Attach_Entity_Paid",
            "label": "Attach Entity Paid",
            "fieldValues": null
          },
          {
            "developerName": "Attach_Entity_Plan_Description",
            "label": "Attach Entity Plan Description",
            "fieldValues": null
          },
          {
            "developerName": "Attach_Entity_Plan_Effective",
            "label": "Attach Entity Plan Effective",
            "fieldValues": null
          },
          {
            "developerName": "Attach_Entity_Plan_Elderly_Waiver",
            "label": "Attach Entity Plan Elderly Waiver",
            "fieldValues": null
          },
          {
            "developerName": "Attach_Entity_Plan_Group_ID",
            "label": "Attach Entity Plan Group ID",
            "fieldValues": null
          },
          {
            "developerName": "Attach_Entity_Plan_ID",
            "label": "Attach Entity Plan ID",
            "fieldValues": null
          },
          {
            "developerName": "Attach_Entity_Plan_Status",
            "label": "Attach Entity Plan Status",
            "fieldValues": null
          },
          {
            "developerName": "Attach_Entity_Plan_Term",
            "label": "Attach Entity Plan Term",
            "fieldValues": null
          },
          {
            "developerName": "Attach_Entity_Provider",
            "label": "Attach Entity Provider",
            "fieldValues": null
          },
          {
            "developerName": "Attach_Entity_Referral",
            "label": "Attach Entity Referral",
            "fieldValues": null
          },
          {
            "developerName": "Attach_Entity_Relative",
            "label": "Attach Entity Relative",
            "fieldValues": null
          },
          {
            "developerName": "Attach_Entity_Review_Determination",
            "label": "Attach Entity Review Determination",
            "fieldValues": null
          },
          {
            "developerName": "Attach_Entity_Service_Date_From",
            "label": "Attach Entity Service Date From",
            "fieldValues": null
          },
          {
            "developerName": "Attach_Entity_Service_Date_Thru",
            "label": "Attach Entity Service Date Thru",
            "fieldValues": null
          },
          {
            "developerName": "Attach_Entity_Service_Date_To",
            "label": "Attach Entity Service Date To",
            "fieldValues": null
          },
          {
            "developerName": "Attach_Entity_Status",
            "label": "Attach Entity Status",
            "fieldValues": null
          },
          {
            "developerName": "AttachmentControlNbr",
            "label": "AttachmentControlNbr",
            "fieldValues": null
          },
          {
            "developerName": "Auth_Case_Category",
            "label": "Auth_Case_Category",
            "fieldValues": null
          },
          {
            "developerName": "Auth_Case_CreateDate",
            "label": "Auth_Case_CreateDate",
            "fieldValues": null
          },
          {
            "developerName": "Auth_Case_LineOfBusiness",
            "label": "Auth_Case_LineOfBusiness",
            "fieldValues": null
          },
          {
            "developerName": "Auth_Case_Status",
            "label": "Auth_Case_Status",
            "fieldValues": null
          },
          {
            "developerName": "Auth_Case_Subcategory",
            "label": "Auth_Case_Subcategory",
            "fieldValues": null
          },
          {
            "developerName": "Auth_Case_SubSubcategory",
            "label": "Auth_Case_SubSubcategory",
            "fieldValues": null
          },
          {
            "developerName": "Auth_CaseNumber",
            "label": "Auth_CaseNumber",
            "fieldValues": null
          },
          {
            "developerName": "Documents_Department",
            "label": "Documents Department",
            "language": "en_US",
            "namespacePrefix": "",
            "fieldValues": {
              "API_Response__c": "department",
              "CNC_Line_Attributes__c": {
                "referencedType": "CNC_Line_Attributes__mdt",
                "developerName": "Send_Communication_Documents"
              },
              "Column_Order__c": 1,
              "Data_Type__c": "text",
              "Default_Value__c": "",
              "Help_Text__c": "",
              "Is_Sortable__c": true,
              "Response_Label__c": "Department",
              "Wrap_Text__c": false
            },
            "customFieldValuesComplete": true,
            "remainingCustomFields": [],
            "evidenceScreenshots": [
              "IMG_DEC6A101-0268-49B2-9E71-1A4F3C201D88.jpeg",
              "IMG_E72A1B8D-3153-4D59-AE16-CA98F13660EB.jpeg"
            ],
            "captureNotes": "All nine custom field values captured. Previously clipped Response_Label__c explicitly verified as Department by the direct Header DeveloperName query."
          },
          {
            "developerName": "Documents_Group",
            "label": "Documents Group",
            "language": "en_US",
            "namespacePrefix": "",
            "fieldValues": {
              "API_Response__c": "group",
              "CNC_Line_Attributes__c": {
                "referencedType": "CNC_Line_Attributes__mdt",
                "developerName": "Send_Communication_Documents"
              },
              "Column_Order__c": 2,
              "Data_Type__c": "text",
              "Default_Value__c": "",
              "Help_Text__c": "",
              "Is_Sortable__c": true,
              "Response_Label__c": "Group",
              "Wrap_Text__c": false
            },
            "customFieldValuesComplete": true,
            "remainingCustomFields": [],
            "evidenceScreenshots": [
              "IMG_DEC6A101-0268-49B2-9E71-1A4F3C201D88.jpeg"
            ],
            "captureNotes": "All nine custom field values visible. Exact casing preserved."
          },
          {
            "developerName": "Documents_Name",
            "label": "Documents Name",
            "language": "en_US",
            "namespacePrefix": "",
            "fieldValues": {
              "API_Response__c": "label",
              "CNC_Line_Attributes__c": {
                "referencedType": "CNC_Line_Attributes__mdt",
                "developerName": "Send_Communication_Documents"
              },
              "Column_Order__c": 3,
              "Data_Type__c": "text",
              "Default_Value__c": "",
              "Help_Text__c": "",
              "Is_Sortable__c": true,
              "Response_Label__c": "Document",
              "Wrap_Text__c": false
            },
            "customFieldValuesComplete": true,
            "remainingCustomFields": [],
            "evidenceScreenshots": [
              "IMG_DEC6A101-0268-49B2-9E71-1A4F3C201D88.jpeg"
            ],
            "captureNotes": "All nine custom field values visible. Exact casing preserved."
          },
          {
            "developerName": "Forms_Department",
            "label": "Forms Department",
            "language": "en_US",
            "namespacePrefix": "",
            "fieldValues": {
              "API_Response__c": "department",
              "CNC_Line_Attributes__c": {
                "referencedType": "CNC_Line_Attributes__mdt",
                "developerName": "Send_Communication_Forms"
              },
              "Column_Order__c": 1,
              "Data_Type__c": "text",
              "Default_Value__c": "",
              "Help_Text__c": "",
              "Is_Sortable__c": true,
              "Response_Label__c": "Department",
              "Wrap_Text__c": false
            },
            "customFieldValuesComplete": true,
            "remainingCustomFields": [],
            "evidenceScreenshots": [
              "IMG_DEC6A101-0268-49B2-9E71-1A4F3C201D88.jpeg",
              "IMG_E72A1B8D-3153-4D59-AE16-CA98F13660EB.jpeg"
            ],
            "captureNotes": "All nine custom field values captured. Previously clipped Response_Label__c explicitly verified as Department by the direct Header DeveloperName query."
          },
          {
            "developerName": "Forms_Group",
            "label": "Forms Group",
            "language": "en_US",
            "namespacePrefix": "",
            "fieldValues": {
              "API_Response__c": "group",
              "CNC_Line_Attributes__c": {
                "referencedType": "CNC_Line_Attributes__mdt",
                "developerName": "Send_Communication_Forms"
              },
              "Column_Order__c": 2,
              "Data_Type__c": "text",
              "Default_Value__c": "",
              "Help_Text__c": "",
              "Is_Sortable__c": true,
              "Response_Label__c": "Group",
              "Wrap_Text__c": false
            },
            "customFieldValuesComplete": true,
            "remainingCustomFields": [],
            "evidenceScreenshots": [
              "IMG_DEC6A101-0268-49B2-9E71-1A4F3C201D88.jpeg"
            ],
            "captureNotes": "All nine custom field values visible. Exact casing preserved."
          },
          {
            "developerName": "Forms_Name",
            "label": "Forms Name",
            "language": "en_US",
            "namespacePrefix": "",
            "fieldValues": {
              "API_Response__c": "label",
              "CNC_Line_Attributes__c": {
                "referencedType": "CNC_Line_Attributes__mdt",
                "developerName": "Send_Communication_Forms"
              },
              "Column_Order__c": 3,
              "Data_Type__c": "text",
              "Default_Value__c": "",
              "Help_Text__c": "",
              "Is_Sortable__c": true,
              "Response_Label__c": "Form",
              "Wrap_Text__c": false
            },
            "customFieldValuesComplete": true,
            "remainingCustomFields": [],
            "evidenceScreenshots": [
              "IMG_DEC6A101-0268-49B2-9E71-1A4F3C201D88.jpeg"
            ],
            "captureNotes": "All nine custom field values visible. Exact casing preserved."
          },
          {
            "developerName": "Letters_Department",
            "label": "Letters Department",
            "language": "en_US",
            "namespacePrefix": "",
            "fieldValues": {
              "API_Response__c": "department",
              "CNC_Line_Attributes__c": {
                "referencedType": "CNC_Line_Attributes__mdt",
                "developerName": "Send_Communication_Letters"
              },
              "Column_Order__c": 1,
              "Data_Type__c": "text",
              "Default_Value__c": "",
              "Help_Text__c": "",
              "Is_Sortable__c": true,
              "Response_Label__c": "Department",
              "Wrap_Text__c": false
            },
            "customFieldValuesComplete": true,
            "remainingCustomFields": [],
            "evidenceScreenshots": [
              "IMG_DEC6A101-0268-49B2-9E71-1A4F3C201D88.jpeg",
              "IMG_E72A1B8D-3153-4D59-AE16-CA98F13660EB.jpeg"
            ],
            "captureNotes": "All nine custom field values captured. Previously clipped Response_Label__c explicitly verified as Department by the direct Header DeveloperName query."
          },
          {
            "developerName": "Letters_Group",
            "label": "Letters Group",
            "language": "en_US",
            "namespacePrefix": "",
            "fieldValues": {
              "API_Response__c": "group",
              "CNC_Line_Attributes__c": {
                "referencedType": "CNC_Line_Attributes__mdt",
                "developerName": "Send_Communication_Letters"
              },
              "Column_Order__c": 2,
              "Data_Type__c": "text",
              "Default_Value__c": "",
              "Help_Text__c": "",
              "Is_Sortable__c": true,
              "Response_Label__c": "Group",
              "Wrap_Text__c": false
            },
            "customFieldValuesComplete": true,
            "remainingCustomFields": [],
            "evidenceScreenshots": [
              "IMG_DEC6A101-0268-49B2-9E71-1A4F3C201D88.jpeg"
            ],
            "captureNotes": "All nine custom field values visible. Exact casing preserved."
          },
          {
            "developerName": "Letters_Name",
            "label": "Letters Name",
            "language": "en_US",
            "namespacePrefix": "",
            "fieldValues": {
              "API_Response__c": "Name",
              "CNC_Line_Attributes__c": {
                "referencedType": "CNC_Line_Attributes__mdt",
                "developerName": "Send_Communication_Letters"
              },
              "Column_Order__c": 3,
              "Data_Type__c": "text",
              "Default_Value__c": "",
              "Help_Text__c": "",
              "Is_Sortable__c": true,
              "Response_Label__c": "Letter",
              "Wrap_Text__c": false
            },
            "customFieldValuesComplete": true,
            "remainingCustomFields": [],
            "evidenceScreenshots": [
              "IMG_DEC6A101-0268-49B2-9E71-1A4F3C201D88.jpeg"
            ],
            "captureNotes": "All nine custom field values visible. Exact casing preserved."
          }
        ],
        "evidenceScreenshots": [
          "IMG_0491389E-AA15-4741-B2DF-066942D4A06F.jpeg",
          "IMG_0D04879D-90FC-46E8-8852-96DF832B8824.jpeg",
          "IMG_5B44D25C-5BC3-4159-9B34-6CADBB1FEEDB.jpeg"
        ],
        "inventoryComplete": false
      },
      {
        "typeName": "CNC_Line_Attributes__mdt",
        "records": [
          {
            "developerName": "Send_Communication_Case_Review",
            "label": "Send Communication Case Review",
            "language": "en_US",
            "namespacePrefix": "",
            "fieldValues": null
          },
          {
            "developerName": "Send_Communication_Cover_Letter",
            "label": "Send Communication Cover Letter",
            "language": "en_US",
            "namespacePrefix": "",
            "fieldValues": null
          },
          {
            "developerName": "Send_Communication_Documents",
            "label": "Send Communication Documents",
            "language": "en_US",
            "namespacePrefix": "",
            "fieldValues": {
              "Component_Name__c": "",
              "Component_Type__c": "FlexCards",
              "Is_Selectable__c": true,
              "Order__c": 7,
              "Query_Clause__c": "",
              "Record_Limit_Per_Page__c": 50,
              "Section_Name__c": "Send Communication Documents",
              "Selectable_Type__c": "Check Box",
              "Show_Filter_By__c": true,
              "Show_Pagination__c": true,
              "Show_Row_Number__c": false,
              "Show_Search__c": false,
              "Show_ViewAll__c": false,
              "UI_Type__c": "Datatable",
              "isAccordian__c": false,
              "CNC_Master_Attribute__c": {
                "referencedType": "CNC_Master_Attributes__mdt",
                "developerName": "Send_Communication"
              }
            },
            "evidenceScreenshots": [
              "IMG_CC79B120-66C2-42C0-B5ED-BF2E4CC418D7.jpeg",
              "IMG_280CA63E-6012-4FF6-AA7D-BCF3533D27CA.jpeg",
              "IMG_78BFB5BB-59D1-4320-ADE7-4E874E9BB1A6.jpeg",
              "IMG_1DEB262E-FB1F-4515-9017-91CB1384832F.jpeg"
            ],
            "customFieldValuesComplete": true,
            "remainingCustomFields": [],
            "captureNotes": "16/16 custom field values captured. Latest relationship query explicitly pairs Send_Communication_Documents with Master DeveloperName Send_Communication. No field values remain unresolved; schema editor details and deployment are separate."
          },
          {
            "developerName": "Send_Communication_Email_Template",
            "label": "Send Communication Email Template",
            "language": "en_US",
            "namespacePrefix": "",
            "fieldValues": null
          },
          {
            "developerName": "Send_Communication_Forms",
            "label": "Send Communication Forms",
            "language": "en_US",
            "namespacePrefix": "",
            "fieldValues": {
              "Section_Name__c": "Send Communication Forms",
              "Selectable_Type__c": "Check Box",
              "Show_Filter_By__c": true,
              "Show_Pagination__c": true,
              "Show_Row_Number__c": false,
              "Show_Search__c": false,
              "Show_ViewAll__c": false,
              "UI_Type__c": "Datatable",
              "isAccordian__c": false,
              "Component_Name__c": "",
              "Component_Type__c": "FlexCards",
              "Order__c": 1,
              "Query_Clause__c": "",
              "CNC_Master_Attribute__c": {
                "referencedType": "CNC_Master_Attributes__mdt",
                "developerName": "Send_Communication"
              },
              "Is_Selectable__c": true,
              "Record_Limit_Per_Page__c": 50
            },
            "qualifiedApiName": "Send_Communication_Forms",
            "evidenceScreenshots": [
              "IMG_2C1CBB84-957D-4F1F-9D80-B1395831EEB5.jpeg",
              "IMG_FFE73573-C622-4D49-A8AC-05A5CF638927.jpeg",
              "IMG_54F0625D-D0F5-4CF5-8FB0-87CAA9385FAE.jpeg"
            ],
            "customFieldValuesComplete": true,
            "remainingCustomFields": [],
            "captureNotes": "Visible WHERE selects Forms and Letters; all shown scalar values and Master DeveloperName are identical in both rows, establishing association without row-order inference. 16/16 custom field values captured; final Is_Selectable__c=true and Record_Limit_Per_Page__c=50 confirmed by user in follow-up to the query for both Forms and Letters.",
            "userConfirmedEvidence": {
              "date": "2026-10-01",
              "statement": "True and 50",
              "appliesTo": [
                "Is_Selectable__c",
                "Record_Limit_Per_Page__c"
              ],
              "scope": "Both Forms and Letters, in response to the preceding two-record query."
            }
          },
          {
            "developerName": "Send_Communication_Letters",
            "label": "Send Communication Letters",
            "language": "en_US",
            "namespacePrefix": "",
            "fieldValues": {
              "Section_Name__c": "Send Communication Letters",
              "Selectable_Type__c": "Radio",
              "Show_Filter_By__c": true,
              "Show_Pagination__c": true,
              "Show_Row_Number__c": false,
              "Show_Search__c": false,
              "Show_ViewAll__c": false,
              "UI_Type__c": "Datatable",
              "isAccordian__c": false,
              "Component_Name__c": "",
              "Component_Type__c": "FlexCards",
              "Order__c": 1,
              "Query_Clause__c": "",
              "CNC_Master_Attribute__c": {
                "referencedType": "CNC_Master_Attributes__mdt",
                "developerName": "Send_Communication"
              },
              "Is_Selectable__c": true,
              "Record_Limit_Per_Page__c": 50
            },
            "qualifiedApiName": "Send_Communication_Letters",
            "evidenceScreenshots": [
              "IMG_2C1CBB84-957D-4F1F-9D80-B1395831EEB5.jpeg",
              "IMG_FFE73573-C622-4D49-A8AC-05A5CF638927.jpeg",
              "IMG_54F0625D-D0F5-4CF5-8FB0-87CAA9385FAE.jpeg"
            ],
            "customFieldValuesComplete": true,
            "remainingCustomFields": [],
            "captureNotes": "Visible WHERE selects Forms and Letters; all shown scalar values and Master DeveloperName are identical in both rows, establishing association without row-order inference. 16/16 custom field values captured; final Is_Selectable__c=true and Record_Limit_Per_Page__c=50 confirmed by user in follow-up to the query for both Forms and Letters.",
            "userConfirmedEvidence": {
              "date": "2026-10-01",
              "statement": "True and 50",
              "appliesTo": [
                "Is_Selectable__c",
                "Record_Limit_Per_Page__c"
              ],
              "scope": "Both Forms and Letters, in response to the preceding two-record query."
            }
          },
          {
            "developerName": "Send_Communication_POD",
            "label": "Send Communication POD",
            "language": "en_US",
            "namespacePrefix": "",
            "fieldValues": null
          },
          {
            "developerName": "Send_Communication_Paragraph",
            "label": "Send Communication Paragraph",
            "language": "en_US",
            "namespacePrefix": "",
            "fieldValues": null
          },
          {
            "developerName": "Send_Communication_Review",
            "label": "Send Communication Review",
            "language": "en_US",
            "namespacePrefix": "",
            "fieldValues": null
          },
          {
            "developerName": "Send_Communication_Review_POD",
            "label": "Send Communication Review POD",
            "language": "en_US",
            "namespacePrefix": "",
            "fieldValues": null
          },
          {
            "developerName": "Send_Communication_Select_Entity",
            "label": "Send Communication Select Entity",
            "language": "en_US",
            "namespacePrefix": "",
            "fieldValues": null
          }
        ],
        "evidenceScreenshots": [
          "IMG_7B24DFE5-CA6C-4596-AC0B-580DC6B72D07.jpeg",
          "IMG_49C41762-E981-441C-BD19-A5F17D4BCC28.jpeg",
          "IMG_2C1CBB84-957D-4F1F-9D80-B1395831EEB5.jpeg",
          "IMG_FFE73573-C622-4D49-A8AC-05A5CF638927.jpeg"
        ],
        "inventoryComplete": false,
        "scope": "Visible rows after result filter send; not complete type inventory",
        "customFieldValuesCaptured": true,
        "customFieldValuesComplete": false
      },
      {
        "typeName": "CNC_Master_Attributes__mdt",
        "records": [
          {
            "developerName": "Send_Communication",
            "label": "Send Communication",
            "language": "en_US",
            "namespacePrefix": "",
            "qualifiedApiName": "Send_Communication",
            "fieldValues": {
              "Entity_Type__c": "Member"
            },
            "customFieldValuesComplete": false,
            "captureNotes": "FIELDS(ALL) result confirms identity and Entity_Type__c=Member. This screenshot reaches the Entity_Type__c column. Full Master schema/field count is not yet captured, so do not assume additional custom fields or record completeness; no repeated query is needed for this captured value.",
            "evidenceScreenshots": [
              "IMG_F3EB90FE-A0BA-4A8A-876D-8D8174409AB5.jpeg",
              "IMG_7C2826C2-8ECB-46C9-B934-45E719D76483.jpeg"
            ]
          }
        ],
        "inventoryComplete": false
      }
    ],
    "captureDate": "2026-10-01",
    "coverageNotes": [
      "Inventory screenshots show field types/lengths, indexed flags and metadata relationship targets; they do not show field editor defaults, picklist values or relationship settings.",
      "Button 7/7, Header 9/9 and Line 16/16 custom fields inventoried; Search 2/6 visible. Internal/External Website schema is absent from this batch.",
      "Header current inventory has no Type_Attribute_Target__c although captured mapper uses it. Preserve this source mismatch for verification; do not invent a field.",
      "Header/search record lists show names only and do not establish Send Communication membership or any field values.",
      "Record inventories are partial: clipped rows excluded; repeated visible rows deduplicated by DeveloperName.",
      "No LWC source received in this batch. MDT/LWC implementation remains deferred under existing scope."
    ],
    "unassignedQueryObservations": [
      {
        "evidenceScreenshot": "IMG_FF76DE60-C085-4B1E-BEB0-9F7A9707D0C3.jpeg",
        "typeName": "CNC_Line_Attributes__mdt",
        "visibleRowCount": 2,
        "developerNameNotSelected": true,
        "whereClauseCropped": true,
        "recordAssociationVerified": false,
        "commonVisibleValues": {
          "Component_Name__c": "",
          "Component_Type__c": "FlexCards",
          "Order__c": 1,
          "Query_Clause__c": ""
        },
        "masterRelationshipObservation": "Both rows show same reference ID; exact ID transcription and referenced DeveloperName unresolved",
        "remainingRequestedFields": [
          "DeveloperName",
          "Is_Selectable__c",
          "Record_Limit_Per_Page__c",
          "CNC_Master_Attribute__r.DeveloperName"
        ],
        "captureDate": "2026-10-01",
        "resolvedByScreenshot": "IMG_54F0625D-D0F5-4CF5-8FB0-87CAA9385FAE.jpeg",
        "resolution": "Same query's visible Forms/Letters filter and identical values in both rows establish common values for both records. Master DeveloperName=Send_Communication; original reference ID not needed."
      }
    ],
    "queryResults": [
      {
        "key": "CNC_Button_Attribute__mdt:Forms/Documents/Letters",
        "typeName": "CNC_Button_Attribute__mdt",
        "filter": {
          "relationship": "CNC_Line_Attributes__r.DeveloperName",
          "values": [
            "Send_Communication_Forms",
            "Send_Communication_Documents",
            "Send_Communication_Letters"
          ]
        },
        "limit": 150,
        "returnedRecordCount": 0,
        "observedMessage": "No data exported.",
        "evidenceScreenshots": [
          "IMG_64680B13-27CC-4331-9C13-B8AD9C04A18A.jpeg"
        ],
        "captureCompleteForQuery": true,
        "scopeNote": "Zero rows for this exact query in the photographed source org. Does not imply no records globally or no Master-level Button records."
      },
      {
        "key": "CNC_Search_Attributes__mdt:Forms/Documents/Letters",
        "typeName": "CNC_Search_Attributes__mdt",
        "filter": {
          "relationship": "CNC_Line_Attributes__r.DeveloperName",
          "values": [
            "Send_Communication_Forms",
            "Send_Communication_Documents",
            "Send_Communication_Letters"
          ]
        },
        "limit": 150,
        "returnedRecordCount": 0,
        "observedMessage": "No data exported.",
        "evidenceScreenshots": [
          "IMG_86C6FFA9-9D4A-49B2-B4F7-6C3BA24B8DE3.jpeg"
        ],
        "captureCompleteForQuery": true,
        "scopeNote": "Zero rows for this exact query in the photographed source org. Does not imply no records globally or no Master-level Button records."
      },
      {
        "key": "CNC_Header_Attribute__mdt:Department-header-names-applied-to-Line-filter",
        "typeName": "CNC_Header_Attribute__mdt",
        "filter": {
          "relationship": "CNC_Line_Attributes__r.DeveloperName",
          "values": [
            "Documents_Department",
            "Forms_Department",
            "Letters_Department"
          ]
        },
        "limit": 150,
        "returnedRecordCount": 6,
        "evidenceScreenshots": [
          "IMG_E5299535-7ECC-430E-939A-87A8F83498FE.jpeg",
          "IMG_01F24BF6-C852-4763-8888-7E88D5AA094A.jpeg"
        ],
        "requestedCaptureResolved": false,
        "scopeNote": "Screenshot query filters Line relationship DeveloperName using Header record names, instead of WHERE DeveloperName. Returned rows are Account_Name, Contact_Name, Referral_Account_Name, Referral_Case_CreatedDate, Referral_Subject and Subject; they do not resolve requested Documents/Forms/Letters Department labels. Line relationship cells are visibly blank; no association to Send Communication inferred.",
        "returnedDeveloperNames": [
          "Account_Name",
          "Contact_Name",
          "Referral_Account_Name",
          "Referral_Case_CreatedDate",
          "Referral_Subject",
          "Subject"
        ]
      }
    ]
  },
  "runtimeReview": {
    "observations": [
      {
        "captureDate": "2026-10-06",
        "environment": "xhdev1 sandbox",
        "evidenceScreenshot": "IMG_9D720EBB-D83D-4DD4-8065-44FCEFB1760A.jpeg",
        "title": "Material and Outbound Channel Selection",
        "materialType": {
          "requiredIndicatorVisible": true,
          "options": [
            "Forms",
            "Documents",
            "Letters",
            "Other Communication",
            "Member Materials Request (MMR) Documents"
          ],
          "selectedValueObserved": null
        },
        "outboundChannel": {
          "requiredIndicatorVisible": true,
          "options": [
            "Email",
            "Print"
          ],
          "selectedValueObserved": null
        },
        "recipientControlVisible": false,
        "navigationButtonsCaptured": false,
        "notes": "Runtime screen after launching from Case. No options visibly selected. Do not infer stored option values, defaults, recipient handling or active OmniScript version from display labels. No generation/submission observed."
      },
      {
        "captureDate": "2026-10-06",
        "evidenceScreenshot": "IMG_52FFF2FE-44AE-4098-9334-6B25DA148E86.jpeg",
        "environment": "xhdev1 sandbox",
        "title": "Material and Outbound Channel Selection",
        "selectedDisplayValues": {
          "materialType": "Other Communication",
          "outboundChannel": "Print"
        },
        "navigationVisible": [
          "Next"
        ],
        "notes": "Display selections confirmed. Stored JSON values and designer conditions are not established by this runtime screenshot."
      },
      {
        "captureDate": "2026-10-06",
        "evidenceScreenshot": "IMG_6E22A63D-D751-42A1-A7F7-6E1E8FE4216C.jpeg",
        "environment": "xhdev1 sandbox",
        "title": "Select Letter",
        "precedingDisplaySelections": {
          "materialType": "Other Communication",
          "outboundChannel": "Print"
        },
        "table": {
          "columns": [
            "Department",
            "Group",
            "Letter"
          ],
          "visibleRows": [
            {
              "Department": "Service",
              "Group": "ITS Host",
              "Letter": "HOSTProviderFreeformLetter",
              "selected": false
            }
          ],
          "completeInventoryVerified": false
        },
        "upload": {
          "guidance": "Upload Forms/Documents - PDF documents only",
          "qualifier": "(If Applicable)",
          "attachmentCount": 0,
          "controls": [
            "Upload Files",
            "Or drop files"
          ],
          "fileTypeEnforcementVerified": false
        },
        "navigationVisible": [
          "Previous",
          "Next"
        ],
        "recipientControlVisible": false,
        "notes": "One visible unselected row; backend template identity, selection source, filtering logic, token definitions and successful generation remain unknown. Do not infer that no other templates exist."
      },
      {
        "captureDate": "2026-10-06",
        "environment": "xhdev1 sandbox",
        "evidenceScreenshot": "IMG_0FC9CC3C-65AB-48C7-A80A-9FF6D7CA53FC.jpeg",
        "title": "Communication Address",
        "journeyContext": "Following the Select Letter review of Other Communication / Print; selected letter identity is not displayed on this screen.",
        "fields": [
          {
            "label": "Addressee Name",
            "requiredIndicatorVisible": true,
            "visibleValue": "",
            "validationMessage": "Error: Addressee Name is required."
          },
          {
            "label": "Address",
            "requiredIndicatorVisible": false,
            "visibleValue": "",
            "editableVerified": null
          },
          {
            "label": "Address Line 1",
            "requiredIndicatorVisible": true,
            "visibleValue": ""
          },
          {
            "label": "Address Line 2",
            "requiredIndicatorVisible": false,
            "visibleValue": ""
          },
          {
            "label": "City",
            "requiredIndicatorVisible": true,
            "visibleValue": ""
          },
          {
            "label": "Zip",
            "requiredIndicatorVisible": true,
            "visibleValue": ""
          },
          {
            "label": "State",
            "requiredIndicatorVisible": true,
            "visibleValue": ""
          },
          {
            "label": "Country",
            "requiredIndicatorVisible": true,
            "visibleValue": ""
          }
        ],
        "oneTimeCommunicationAddress": {
          "label": "One time Communication Address",
          "checked": true,
          "defaultVerified": false,
          "conditionalVisibilityVerified": false
        },
        "navigationVisible": [
          "Previous",
          "Next"
        ],
        "unknowns": [
          "Field API/JSON names and mappings",
          "Address prepopulation source",
          "Behavior with one-time checkbox unchecked",
          "Whether entered address updates a record or only this communication",
          "Relationship to Provider recipient and later review edits",
          "Validation rules beyond the visible Addressee Name error"
        ],
        "notes": "Blank fields and checked checkbox are visible runtime state, not proof of defaults. Manual address controls are displayed; successful input, navigation, persistence, generation and print submission remain unverified."
      },
      {
        "captureDate": "2026-10-06",
        "environment": "xhdev1 sandbox",
        "evidenceScreenshot": "IMG_B08262EB-AE94-4A28-A141-9ED1298F9E53.jpeg",
        "title": "Communication Address",
        "oneTimeCommunicationAddressChecked": true,
        "inputObservation": "Test values entered into Addressee Name, Address Line 1, City, State, Zip and Country. Address Line 2 and combined Address appear blank. Exact entered values omitted from tracking.",
        "notes": "Later screenshot reaches Additional Information, establishing progression past address entry for this run. Persistence and validation constraints remain unknown."
      },
      {
        "captureDate": "2026-10-06",
        "environment": "xhdev1 sandbox",
        "evidenceScreenshot": "IMG_F4262D90-BDA8-46EA-B546-1D861E972D62.jpeg",
        "title": "Enter Additional Information for Letter Selected",
        "guidance": "To Review Letter selected in previous step, Preview here.",
        "fields": [
          "Provider Name",
          "Provider Address",
          "City",
          "State",
          "Zip Code",
          "Patient Full Name",
          "Claim Number or Authorization Number",
          "Free Form Text"
        ],
        "inputObservation": "Provider Name, Provider Address, City, State and Zip Code display values matching the preceding address inputs. Patient Full Name, Claim Number or Authorization Number and Free Form Text appear blank.",
        "navigationVisible": [
          "Previous",
          "Next"
        ],
        "unknowns": [
          "Whether values are automatically copied, manually entered or both",
          "Field JSON names, token definitions and API/manual modes",
          "Required flags and conditions",
          "Brief Description mapping required by CS-1474",
          "Preview here control behavior"
        ],
        "notes": "Visible editable input controls establish existing manual-content UI, not successful token merge or template output."
      },
      {
        "captureDate": "2026-10-06",
        "environment": "xhdev1 sandbox",
        "evidenceScreenshot": "IMG_4119FA6D-3E65-4BCD-B29D-331B8124652B.jpeg",
        "title": "Review and Submit",
        "state": "Loading spinner visible",
        "notes": "Loading state only. No generation response, file artifact or success verified."
      },
      {
        "captureDate": "2026-10-06",
        "environment": "xhdev1 sandbox",
        "evidenceScreenshot": "IMG_055359E2-BD88-4E57-B30C-A9752D485630.jpeg",
        "title": "Review and Submit",
        "table": {
          "columns": [
            "Name",
            "Type",
            "View",
            "Remove"
          ],
          "visibleRows": [
            {
              "Name": "HOSTProviderFreeformLetter",
              "Type": "Letter",
              "View": "View",
              "Remove": "No control visible in row"
            }
          ]
        },
        "checkboxes": [
          {
            "label": "I confirm the attachments are correct",
            "checked": false
          },
          {
            "label": "Include Return Envelope",
            "checked": false
          }
        ],
        "navigationObservation": "Previous visible; right action appears greyed out and its label is not legible.",
        "notes": "Letter row and View link visible. PDF content, generated-file identity and successful generation are unverified. Confirmation/submit click sequence not captured."
      },
      {
        "captureDate": "2026-10-06",
        "environment": "xhdev1 sandbox",
        "evidenceScreenshot": "IMG_ECF268D2-F08E-4B3E-BBF0-8C0C5BDAF16B.jpeg",
        "title": "Confirmation",
        "message": "Unable to send Communication at this time, try again in a few minutes",
        "navigationVisible": [
          "Done"
        ],
        "outcome": "Failure message displayed",
        "unknowns": [
          "Failing action, IP/Apex/API and response",
          "Whether failure occurred during generation, storage or print delivery",
          "Whether any request/file persisted",
          "Retry behavior"
        ],
        "notes": "Observed failure wording closely corresponds to story error requirement. No successful print submission, case association or Alfresco storage verified; screenshot does not establish root cause."
      }
    ]
  },
  "lwcSourceEvidence": [
    {
      "name": "cncSendCommunicationAdditionalInfo",
      "environment": "xhdev1 sandbox",
      "sourceFile": "cncSendCommunicationAdditionalInfo.js",
      "baseClass": "OmniscriptBaseMixin(NavigationMixin(LightningElement))",
      "captureDate": "2026-10-06",
      "sourceCaptureComplete": false,
      "evidenceScreenshots": [
        "IMG_F9575910-5641-49FE-A3BA-47CFE7E90DEB.jpeg",
        "IMG_58F3F8D4-852C-4A6F-BE15-5F142F7DE38D.jpeg",
        "IMG_03A12AD0-02EB-4951-9D81-DBDF216F595E.jpeg",
        "IMG_6EED452C-61BF-4AA7-B314-89EC764ADE16.jpeg",
        "IMG_D8559AFD-CE92-4138-B379-B2C851E35F4A.jpeg",
        "IMG_0552C7DD-107F-47C8-ABDD-4D296CF82BEA.jpeg",
        "IMG_28BF83F9-71F6-4DDA-9CE6-65E261C33184.jpeg",
        "IMG_B1931D0D-ADCC-476F-AA63-282C4044D671.jpeg",
        "IMG_1DB37A4D-15A5-4A9B-A9FA-B1890ABEC983.jpeg",
        "IMG_499C774D-9BD7-43EA-A39C-F17D4A8FADF9.jpeg",
        "IMG_BF338C35-1460-4F01-886A-D1DDD65F87DD.jpeg",
        "IMG_80198A6F-2437-4880-97A9-68715496BFEB.jpeg",
        "IMG_7DB86B58-1373-4E56-B4AB-55ADC044B022.jpeg",
        "IMG_A96C2FAE-C29C-4B4A-A618-89079456EB3A.jpeg",
        "IMG_D0C0C36E-7476-49A5-9F65-10AF3A2C3C28.jpeg",
        "IMG_FDEFC39B-334B-41FD-9FAF-C737A54CC4AA.jpeg",
        "IMG_27C15046-65DA-48CD-9C37-CFAFD2B11D29.jpeg",
        "IMG_E834A435-8B63-4BEB-BB57-28F37BB86680.jpeg"
      ],
      "initialProperties": {
        "tokenMapping": [],
        "tokenInputFields": [],
        "selectedLetterHeader": "To Review Letter selected in previous step, ",
        "selectedLetterPreviewText": "Preview here.",
        "isPOD": false,
        "showSubHeader": true,
        "isEmail": false,
        "isAsyncLetterGeneration": true,
        "today": "1970-01-01"
      },
      "richTextFormats": [
        "font",
        "size",
        "bold",
        "italic",
        "underline",
        "strike",
        "list",
        "indent",
        "align",
        "link",
        "image",
        "clean",
        "table",
        "header"
      ],
      "lifecycle": {
        "connectedCallback": [
          "this.initilizeTokenData();",
          "this.initializeMinDate();"
        ],
        "initializeMinDate": "this.today = new Date().toISOString().slice(0,10);"
      },
      "tokenInitialization": {
        "method": "initilizeTokenData",
        "jsonSource": "this.omniJsonData",
        "flags": {
          "isEmail": "When JSON has isEmail and it is truthy: showSubHeader=false, setEmailBody(), isEmail=true.",
          "isPOD": "When JSON has isPOD and it is truthy: isPOD=true."
        },
        "memberEmailResolution": {
          "oneTimeFlag": "SelectEmail.SelectOneTimeEmail === true",
          "oneTimeValue": "SelectEmail.EmailAddressOneTime",
          "podValue": "SelectEmail.podEmailAddress",
          "fallbacks": [
            "memberEmail",
            "memberInfo.memberEmailAddress",
            null
          ],
          "priority": "If SelectEmail exists: one-time flag plus populated one-time email, otherwise populated POD email, otherwise fallbacks. Without SelectEmail use fallbacks."
        },
        "templateSelection": {
          "source": "selectedTemplate",
          "additionalInfoTokenDataId": "selectedTemplate.Id",
          "previewContentDocumentId": "selectedTemplate.documentInfo.ContentDocumentId when documentInfo exists and ContentDocumentId != null"
        },
        "templateChangedBranch": {
          "condition": "JSON has additionalInfoTokenDataId && additionalInfoTokenDataId != selectedTemplate.Id",
          "actions": [
            "tokenInputFields=[]",
            "tokenMapping=[]",
            "getTokenDetails(selectedTemplate)"
          ]
        },
        "existingTokensBranch": {
          "condition": "Otherwise JSON has tokenInputs",
          "source": "tokenInputs",
          "refreshCondition": "item.mappingName != null && JSON has item.mappingName && isRefreshTokens",
          "refreshedValue": "omniscriptJsonData[item.mappingName]",
          "actions": [
            "Assign mapped list to tokenInputFields",
            "setToEmail()"
          ],
          "fallback": "Without tokenInputs call getTokenDetails(selectedTemplate)."
        },
        "finalJsonUpdate": {
          "method": "omniApplyCallResp",
          "payload": {
            "isRefreshTokens": false
          }
        }
      },
      "setToEmail": {
        "tokenMatch": "t.name === 'To'",
        "value": "this.memberEmail",
        "jsonUpdate": {
          "tokenInputs": "this.tokenInputFields"
        },
        "method": "omniApplyCallResp"
      },
      "emailBody": {
        "source": "selectedTemplate.HtmlValue",
        "placeholderPattern": "/{{\\s*\\b\\w+\\b\\s*}}/gi",
        "placeholderKey": "Remove braces and trim whitespace.",
        "lookup": "jsonData[variableName]",
        "currentYearFallback": "If undefined and variableName === 'currentYear', use new Date().getFullYear().toString().",
        "substitution": "Replace placeholder when value !== undefined; otherwise remove placeholder if match.includes('manual').",
        "memberInfoAssignment": "If memberInfo exists and memberEmailAddress != null, assign both memberEmail and memberName from memberInfo.memberEmailAddress.",
        "subject": "selectedTemplate.emailTemplateSubject when truthy",
        "jsonUpdate": {
          "customBody": "this.emailBody",
          "memberEmail": "this.memberEmail",
          "memberName": "this.memberName",
          "subject": "this.subject"
        },
        "notes": "Email path captured for completeness; do not apply these substitutions to Print generation."
      },
      "getTokenDetails": {
        "method": "getTokenDetails(selectedTemplate)",
        "emailBranchCondition": "this.isEmail",
        "emailTokens": [
          {
            "name": "To",
            "label": "To",
            "errorMessage": "Error: To is required.",
            "showTA": false,
            "showRTA": false,
            "showEmail": true,
            "showPicklist": false,
            "isRequired": true,
            "showText": false,
            "value": "this.memberEmail",
            "isReadOnly": true
          },
          {
            "name": "Subject",
            "label": "Subject",
            "errorMessage": "Error: Subject is required.",
            "showTA": false,
            "showRTA": false,
            "showEmail": false,
            "showPicklist": true,
            "isRequired": true,
            "showText": false,
            "value": "this.subject"
          }
        ],
        "emailAssignment": "this.tokenInputFields = emailTokens;",
        "printBranchCaptured": true,
        "templateTokenProcessing": {
          "source": "selectedTemplate.tokens",
          "filter": "this.isManualToken(token.Name)",
          "isManualToken": {
            "lastIndex": "input.lastIndexOf('_')",
            "condition": "lastIndex > 0",
            "acceptedSuffixesCaseInsensitive": [
              "_manual",
              "_apimanual"
            ]
          },
          "labelConversion": "If input startsWith('RTB_'), remove first four characters. Remove final underscore suffix when present, then replace remaining underscores with spaces.",
          "initialValue": "When token.mappingName is truthy, jsonData[token.mappingName].",
          "initialFlags": {
            "showTA": false,
            "showText": false,
            "showRTA": false,
            "isRequired": false,
            "isValid": true,
            "isReadOnly": false
          },
          "richTextRule": "If token.Name.includes('RTB_'): showRTA=true and this.isAsyncLetterGeneration=false; otherwise showTA=true.",
          "metadataFlags": [
            "token.isRequired sets isRequired=true when truthy",
            "token.isReadOnly sets isReadOnly=true when truthy"
          ],
          "inputProperties": [
            "name=token.Name",
            "label",
            "value",
            "errorMessage='Error: '+label+' is required.'",
            "showTA",
            "showRTA",
            "isRequired",
            "isValid",
            "mappingName=token.mappingName",
            "showText=false",
            "isReadOnly"
          ],
          "additionalTokens": "If JSON has rtbTokenInputs and it is not null, append ...jsonData.rtbTokenInputs.",
          "jsonUpdate": {
            "additionalInfoTokenDataId": "this.additionalInfoTokenDataId",
            "isAsyncLetterGeneration": "this.isAsyncLetterGeneration",
            "tokenInputs": "this.tokenInputFields"
          },
          "notes": "No new token-fetch IP/Apex call is visible in this method. It consumes the selectedTemplate.tokens array already supplied upstream. Precise upstream record/source and actual template tokens remain unknown."
        }
      },
      "commentedCode": {
        "notes": "Alternative initialization beginning around line 56, subscription sections, alternate setToEmail around line 299 and earlier getTokenDetails around line 364 are visibly block-commented. Do not treat them as active behavior.",
        "subscriptionTokensObserved": [
          "effectiveFrom",
          "effectiveTo",
          "frequency",
          "AssociatedCase",
          "Member",
          "Type"
        ],
        "activeSubscriptionBehaviorVerified": false
      },
      "remainingEvidence": [
        "Actual HOSTProviderFreeformLetter token definitions and mappingName/isRequired/isReadOnly values",
        "Upstream producer of selectedTemplate.tokens and rtbTokenInputs",
        "HTML rendering and any additional handlers in uncaptured lines approximately 612\u2013670",
        "Complete file coverage and js-meta.xml",
        "OmniScript Custom LWC input mappings",
        "Downstream consumer of tokenMapping/isAsyncLetterGeneration and actual document-generation response"
      ],
      "notes": "Partial source observations only, not executable reconstruction or deployment. Active template-token filtering, manual input handling, validation guard and OmniScript output mappings captured. Template-specific data and generation integration remain pending.",
      "previewNavigation": {
        "method": "viewFilePreviewer",
        "type": "standard__namedPage",
        "attributes": {
          "pageName": "filePreview"
        },
        "state": {
          "selectedRecordId": "this.selectedContentDocumentId"
        },
        "notes": "Uses previously selected template document ContentDocumentId; this alone does not establish a newly generated personalized letter preview."
      },
      "manualInputHandling": {
        "method": "handleInputChange",
        "index": "event.target.dataset.index",
        "value": "event.target.value",
        "tokenUpdate": "Update tokenInputFields entry at parseInt(index) then omniApplyCallResp({tokenInputs: this.tokenInputFields}).",
        "requiredValidation": "For blank required values: RTB input sets matching token isValid=false/errorMessage; other input uses setCustomValidity and reportValidity. Nonblank values clear error state.",
        "nextMethod": "handleNextClick",
        "nextGuard": "this.isInputFieldValid()",
        "tokenMapping": "For non-RTB tokens with value != null: tokenMapping[token.name]=token.value. RTB tokens with value != null use handleRTBTokens(token.name, token.value).",
        "nextActions": [
          "Assign this.tokenMapping",
          "updateOmniScript()",
          "omniNextStep()"
        ],
        "previousAction": "omniPrevStep()",
        "validationMethod": "isInputFieldValid",
        "validationSelector": ".inputFieldValidity,lightning-input-rich-text",
        "validationNotes": "Blank required or invalid native fields set return flag false. RTB required errors also set class slds-has-error. Runtime invalid/valid scenarios are not tested in this capture."
      },
      "richTextTokenSubstitution": {
        "method": "handleRTBTokens(rtbTokenName, rtbTokenData)",
        "placeholderPattern": "/{{\\s*\\b\\w+\\b\\s*}}/gi",
        "lookup": "tokenInputFields.find(token => token.rtbTokenName == rtbTokenName && token.name == variableName)",
        "replacement": "Replace matching placeholder with token.value when a matching token exists.",
        "fontMethod": "handleRTBfont",
        "font": {
          "font": "Times New Roman",
          "size": 12
        },
        "fontInvocationNote": "handleRTBfont call in handleNextClick is commented; do not claim font enforcement from the method definition."
      },
      "finalOmniScriptUpdate": {
        "method": "updateOmniScript",
        "call": "omniApplyCallResp",
        "payload": {
          "tokenMapping": "this.tokenMapping",
          "tokenInputs": "this.tokenInputFields",
          "additionalInfoTokenDataId": "this.additionalInfoTokenDataId",
          "memberEmail": "this.memberEmail",
          "subject": "this.subject",
          "effectiveFrom": "this.effectiveFrom",
          "effectiveTo": "this.effectiveTo",
          "frequency": "this.frequencyValue"
        }
      },
      "otherVisibleGetters": {
        "options": "If isPOD == false: label/value Form/Document Request. Otherwise label Your requested plan materials, value this.subject.",
        "frequency": [
          "Monthly",
          "Every 6 months",
          "Annually"
        ],
        "showStandard": "!(this.isEmail == false), with subscription clause commented out."
      }
    }
  ],
  "documentTemplateEvidence": [
    {
      "name": "HOSTProviderFreeformLetter",
      "source": "User-provided template designer and Token JSON screenshots; 2026-10-06, 11:01 PM CT",
      "version": 1,
      "templateType": "Microsoft Word",
      "tokenMapping": "JSON",
      "tokenMappingMethod": "Custom Class",
      "customClass": "CNC_CustomTokenDataExtractor",
      "usageType": null,
      "documentGenerationMechanism": "ClientSide",
      "uploadedFileName": "Host Provider Free Form Letter.docx",
      "uploadedFileStatus": "File has been uploaded",
      "wordContentInspected": true,
      "tokenJson": {
        "Current_Date_system": "",
        "Provider_Name_apimanual": "",
        "Provider_Address_apimanual": "",
        "City_apimanual": "",
        "State_apimanual": "",
        "Zip_Code_apimanual": "",
        "Patient_Full_Name_manual": "",
        "Claim_Number_or_Authorization_Number_manual": "",
        "Member_ID_or_Patient_Account_Number": "",
        "Case_Number": "",
        "Claim_DOS": "",
        "Patient_Acct_Num": "",
        "Free_Form_Text_apimanual": ""
      },
      "tokenMetadata": {
        "sourceOfSelectedTemplateTokens": "CNCGetLetterTemplates DocumentTemplateToken extraction",
        "visibleTokens": [
          {
            "name": "Claim_Number_or_Authorization_Number_manual",
            "mappingName": "claimNumber",
            "mappingNamePresentInResponse": true,
            "isReadOnly": false,
            "isRequired": false
          },
          {
            "name": "Member_ID_or_Patient_Account_Number",
            "mappingName": "memberId",
            "mappingNamePresentInResponse": true,
            "isReadOnly": false,
            "isRequired": false
          },
          {
            "name": "Case_Number",
            "mappingName": "caseNumber",
            "mappingNamePresentInResponse": true,
            "isReadOnly": false,
            "isRequired": false
          },
          {
            "name": "Claim_DOS",
            "mappingName": null,
            "mappingNamePresentInResponse": false,
            "isReadOnly": false,
            "isRequired": false
          },
          {
            "name": "Patient_Acct_Num",
            "mappingName": null,
            "mappingNamePresentInResponse": false,
            "isReadOnly": false,
            "isRequired": false
          },
          {
            "name": "Free_Form_Text_apimanual",
            "mappingName": null,
            "mappingNamePresentInResponse": false,
            "isReadOnly": false,
            "isRequired": false
          }
        ],
        "coverage": "Six lower token entries captured; upper token metadata remains unknown. Absence from returned JSON does not prove underlying database field is absent."
      },
      "interpretation": [
        "Token JSON blank strings are schema preview values, not runtime data.",
        "Custom extractor copies supplied tokenMapping into tokenMap; it does not retrieve source data.",
        "Current root-input Apex mapping depends on mappingName matching an existing key.",
        "Claim_DOS and Patient_Acct_Num lack mappingName in the displayed response and lack the manual suffix used by the reviewed LWC; current captured paths do not populate them.",
        "ClientSide template setting does not prove actual branch execution; async branch remains gated by runtime flags.",
        "The current screenshots show a template designer rendition, not proof of a successful generated letter or print submission."
      ],
      "nextEvidence": "Remaining CNCGetCaseInfo output rows and intervening mappings to root memberId/claimNumber; runtime tokenMapping before generation.",
      "environment": "xhdev1 sandbox",
      "observedActive": true,
      "wordContentEvidence": "Template designer PDF rendition visibly shows matching {{token}} placeholders. Native DOCX XML not retrieved."
    }
  ],
  "apexSourceEvidence": [
    {
      "name": "CNC_CustomTokenDataExtractor",
      "evidence": "Two user-provided screenshots, class lines 1\u201348, 2026-10-06 11:05 PM CT",
      "sourceCoverage": "Visible class body through closing brace; screenshot transcription, not retrieved org source or tested deployment artifact",
      "apiVersion": "58.0",
      "declaration": "global with sharing class CNC_CustomTokenDataExtractor implements omnistudio.VlocityOpenInterface, Callable",
      "constants": {
        "IP_TOKENDATA_NAME": "CNC_GetLetterTemplateTokenData",
        "IP_CLAIMDATA_NAME": "CNC_GetLetterTemplateTokenData",
        "NAMESPACE_PREFIX": "omnistudio__"
      },
      "callEntry": {
        "method": "call",
        "arguments": [
          "action",
          "args"
        ],
        "reads": [
          "args.input",
          "args.output",
          "args.options"
        ],
        "delegatesTo": "invokeMethod(action, input, output, options)"
      },
      "invokeMethod": {
        "initialResult": true,
        "dispatch": "If methodName == 'getTokenData', call getTokenData(input, output, options).",
        "ignoresGetTokenDataReturn": true,
        "exceptionHandling": "Debug cause/message/stack trace/line and set result=false.",
        "returns": "result",
        "unknownAction": "No explicit rejection branch; result remains true without dispatch."
      },
      "getTokenData": {
        "initialSuccess": false,
        "inputKey": "tokenMapping",
        "accepts": "Map<String,Object>",
        "behavior": "Create empty tokenMap; when input.tokenMapping is a Map<String,Object>, copy all entries using putAll.",
        "outputKey": "tokenMap",
        "returnValue": false,
        "noSuccessAssignmentVisible": true
      },
      "observations": [
        "The class passes supplied token data through; no SOQL, IP invocation, external call or automatic field construction appears in the displayed class.",
        "The IP-name constants are declarations only and are not used in the visible methods.",
        "The helper returns false while invokeMethod ignores that return and returns true unless an exception is caught. This alone does not diagnose the observed runtime send failure.",
        "LWC updateOmniScript supplies tokenMapping, matching this class's expected key. Actual caller input and enrichment of automatic tokens remain unverified."
      ],
      "nextEvidence": "OmniScript action or IP preparing/passing tokenMapping to generation: input mappings and automatic-token enrichment."
    },
    {
      "name": "CNC_SendCommunication",
      "apiVersion": "68.0",
      "captureDate": "2026-10-07",
      "sourceCoverage": "Partial screenshots, including transformTokenData and portions of sendFilesToS3. Not a deployable class export.",
      "transformTokenData": {
        "inputTemplateKey": "selectedTemplate",
        "templateTokensKey": "tokens",
        "tokenFields": [
          "Name",
          "mappingName"
        ],
        "mappingBehavior": "For each token, if the root input map contains its mappingName, copy input[mappingName] as String into tokenMapping[tokenName]. No nested path traversal or source query is visible in this method.",
        "outputs": [
          "tokenMapping",
          "showAdditionalInformation"
        ],
        "manualDetection": "Token name contains the manual constant and ends in a recognized suffix. Visible _manual branch confirmed; second suffix clipped in Apex screenshot. LWC separately confirms _apimanual.",
        "isEmailBehavior": "isEmail=true forces hasmanualTokens=true",
        "sourceLookupPerformed": false
      },
      "sendFilesToS3": {
        "observedBehavior": [
          "Reads caseId and Case/Account information",
          "Collects case ContentDocumentLinks and queries ContentVersion",
          "Uses S3 callout response and updates ContentVersion JobId/review fields in visible code"
        ],
        "verification": "Partial code only; actual executed route, request body, completion/error handling and print delivery not established. Do not infer this method executes for the selected template."
      },
      "evidenceScreenshots": [
        "IMG_90CCF988-645D-4ABC-8E01-8DAB9C5DDED5.jpeg",
        "IMG_2E335494-73A9-4558-8C0D-4208B83B0D6F.jpeg",
        "IMG_9F785049-2764-467F-807E-57D63C9F5420.jpeg",
        "IMG_E05D64AB-85B3-4150-9DA6-DEBD0F4A6EE8.jpeg",
        "IMG_725A5870-D92C-422A-AC1A-C14AC4D3AF57.jpeg"
      ]
    }
  ],
  "reviewCheckpoint": {
    "date": "2026-10-07",
    "timeZone": "America/Chicago",
    "time": "18:03",
    "status": "Capture saved; implementation review remains incomplete",
    "completedToday": [
      "Dev/QA filter and template-record comparison",
      "Free-form Word token placeholders and lower six token metadata entries",
      "CNC_SendCommunication.transformTokenData source behavior",
      "RA-SetDefaultTokenMapping payload/condition",
      "CNC_Member360 transform action, response actions and request payload",
      "CNCTransformMemberInfo visible output mappings",
      "SV-ResetTokenMapping visible values",
      "SV-InitialMapping owner flag and CNCGetCaseInfo reconfirmation"
    ],
    "resumeAt": {
      "component": "Token source trace",
      "location": "Review already captured CNCGetCaseInfo outputs and downstream Set Values/Apex mappings",
      "captureNext": [
        "Trace root memberId/claimNumber initialization using existing evidence first",
        "Resolve missing DOS/patient-account bindings and upper token metadata",
        "Verify sanitized runtime tokenMapping and generation/submission results"
      ]
    },
    "remaining": [
      "Root memberId initialization/enrichment",
      "Root claimNumber source",
      "Claim_DOS and Patient_Acct_Num intended source and mappings",
      "Upper token mappingName entries",
      "Full email Set Values paths",
      "Brief Description storage/placement",
      "Generation runtime flags and exact final payload",
      "Successful print request, confirmation, case association, storage and retry"
    ],
    "scopeNote": "Source sandbox investigation only. Earlier target reconstruction/deployment history remains separate; no Salesforce changes or deployment performed in this capture."
  },
  "storyReferenceDocuments": [
    {
      "storyId": "CS-1474",
      "captureDate": "2026-10-07",
      "sourceKind": "Screenshots of Jira reference letter preview; native DOCX not provided",
      "evidenceScreenshots": [
        "IMG_FB17A417-4FC6-4D7D-92DC-70388C2BA263.jpeg",
        "IMG_CA20C0F9-D800-44BA-8855-CEC3C98BF3F2.jpeg"
      ],
      "layout": {
        "header": "Blue Cross and Blue Shield of Minnesota branding/logo and fixed mail processing return address",
        "date": "(Date)",
        "recipientBlock": [
          "BILLING PROVIDER NAME",
          "BILLING PROVIDER ADDRESS",
          "PROVIDER CITY, STATE, ZIP CODE"
        ],
        "detailsLeft": [
          "Patient Name: (Patient Name)",
          "Member ID: (Patient ID #)",
          "Date of Service: (Claim DOS)"
        ],
        "detailsRight": [
          "Claim Number: (Claim Number)",
          "Case Number: (Case Number)",
          "Patient Account Number: (Patient Acct #)"
        ],
        "salutation": "Dear Provider:",
        "body": "In response to your recent inquiry, (Free Form Text).",
        "fixedClosing": "Provider Services contact paragraph, Sincerely, organization name",
        "footer": "bluecrossmn.com and licensing/legal footer; small document code not confidently transcribed"
      },
      "tokenSyntaxVerified": false,
      "briefDescriptionPlacement": null,
      "candidateTokenCorrespondence": [
        {
          "referenceField": "Date",
          "existingToken": "Current_Date_system",
          "status": "Candidate based on names only; actual binding/data source not verified"
        },
        {
          "referenceField": "Billing Provider Name",
          "existingToken": "Provider_Name_apimanual",
          "status": "Candidate based on names only; actual binding/data source not verified"
        },
        {
          "referenceField": "Billing Provider Address",
          "existingToken": "Provider_Address_apimanual",
          "status": "Candidate based on names only; actual binding/data source not verified"
        },
        {
          "referenceField": "Provider City",
          "existingToken": "City_apimanual",
          "status": "Candidate based on names only; actual binding/data source not verified"
        },
        {
          "referenceField": "Provider State",
          "existingToken": "State_apimanual",
          "status": "Candidate based on names only; actual binding/data source not verified"
        },
        {
          "referenceField": "Provider Zip Code",
          "existingToken": "Zip_Code_apimanual",
          "status": "Candidate based on names only; actual binding/data source not verified"
        },
        {
          "referenceField": "Patient Name",
          "existingToken": "Patient_Full_Name_manual",
          "status": "Candidate based on names only; actual binding/data source not verified"
        },
        {
          "referenceField": "Member ID",
          "existingToken": "Member_ID_or_Patient_Account_Number",
          "status": "Candidate based on names only; actual binding/data source not verified"
        },
        {
          "referenceField": "Date of Service",
          "existingToken": "Claim_DOS",
          "status": "Candidate based on names only; actual binding/data source not verified"
        },
        {
          "referenceField": "Claim Number",
          "existingToken": "Claim_Number_or_Authorization_Number_manual",
          "status": "Candidate based on names only; actual binding/data source not verified"
        },
        {
          "referenceField": "Case Number",
          "existingToken": "Case_Number",
          "status": "Candidate based on names only; actual binding/data source not verified"
        },
        {
          "referenceField": "Patient Account Number",
          "existingToken": "Patient_Acct_Num",
          "status": "Candidate based on names only; actual binding/data source not verified"
        },
        {
          "referenceField": "Free Form Text",
          "existingToken": "Free_Form_Text_apimanual",
          "status": "Candidate based on names only; actual binding/data source not verified"
        }
      ],
      "openQuestions": [
        "Where does required Brief Description appear? No separate placeholder is visible in the reference screenshots.",
        "Does Member_ID_or_Patient_Account_Number correctly supply Member ID when Patient_Acct_Num separately supplies Patient Account Number?",
        "Does Claim_Number_or_Authorization_Number_manual supply the required Claim Number for this story?",
        "Compare native story DOCX and actual uploaded template for real token bindings, approved wording and formatting."
      ],
      "scopeNote": "This captures reference content, not a generated document or a working print result."
    }
  ],
  "environmentComparison": {
    "captureDate": "2026-10-07",
    "confirmed": [
      "User reports HOSTProviderFreeformLetter exists in Dev but not QA",
      "Visible mapper filters match across Dev/QA",
      "Observed response examples concern different template records: QA Provider/Serverside; Dev ITS Host/ClientSide"
    ],
    "unknown": [
      "Complete eligible record inventory",
      "Any additional LWC filtering",
      "Same-template cross-org version comparison"
    ],
    "correction": "Per the earlier user correction, the first three response screenshots were QA and the following two were Dev. Do not reverse environments or treat different records as one template."
  },
  "tokenSourceTrace": {
    "status": "Partial; no implementation or deployment",
    "confirmed": [
      {
        "source": "caseInfo:CaseNumber",
        "mapperOutput": "caseNumber",
        "templateToken": "Case_Number"
      },
      {
        "source": "caseInfo:Account.Member_Id__pc",
        "mapperOutput": "localMemberId",
        "templateToken": "Member_ID_or_Patient_Account_Number",
        "expectedRootKey": "memberId",
        "interveningMappingVerified": false
      },
      {
        "source": "currentDate formula",
        "mapperOutput": "currentDate",
        "templateToken": "Current_Date_system",
        "tokenMappingNameVerified": false
      }
    ],
    "unknown": [
      "Root memberId initialization/enrichment",
      "Root claimNumber source",
      "Claim_DOS and Patient_Acct_Num intended source and mappings",
      "Upper token mappingName entries",
      "Full email Set Values paths",
      "Brief Description storage/placement"
    ],
    "proposed": [
      "After verifying real source keys, map missing automatic tokens; alternatively, if manual entry is required, align token suffixes and matching Word placeholders. These are options, not approved or implemented changes."
    ]
  }
}
```
