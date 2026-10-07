# Send Communication: single-file working record

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

Every recorded field from the structured specification follows, grouped by its full property path. Arrays retain their source order. `null` is not deployable configuration and can mean unresolved or unset depending on the accompanying evidence. Captured blank strings and empty arrays are explicitly distinguished. Evidence-only behavior descriptions must not be converted into guessed executable formulas.

### artifactKind

evidence-based-build-specification

### deployable

false

### status

partial-configuration

### source

| Property | Captured value |
| --- | --- |
| kind | user-supplied-designer-screenshots |
| capturedDate | 2026-10-01 |
| latestScreenshot | IMG_7ACBD6F4-31F7-4D59-9114-9D0C1195E8F6.jpeg |

### omniScript

| Property | Captured value |
| --- | --- |
| displayName | Send Communication |
| language | English |
| observedVersion | 43 |
| observedActive | true |
| type | CNC |
| subType | SendCommunication |
| description | MMR- email go live prep |

### caseIntegration

| Property | Captured value |
| --- | --- |
| requiredByUser | true |
| objectApiName | Case |
| launchMechanism | `null` — unresolved/unset; see context |
| recordIdInputMapping | `null` — unresolved/unset; see context |
| status | required-not-implemented |

### confirmedActions

#### confirmedActions[0] · IP-GETCaseDetails

| Property | Captured value |
| --- | --- |
| elementName | IP-GETCaseDetails |
| fieldLabel | IP-GETCaseDetails |
| elementType | Integration Procedure Action |
| integrationProcedure | CNC_GetCaseInformation |
| invokeMode | Default |
| inputMapping | `null` — unresolved/unset; see context |
| responseMapping | `null` — unresolved/unset; see context |
| executionCondition | `null` — unresolved/unset; see context |

#### confirmedActions[1] · ExtractEmailBodyForMMR

| Property | Captured value |
| --- | --- |
| elementName | ExtractEmailBodyForMMR |
| fieldLabel | ExtractEmailBodyForMMR |
| elementType | Data Mapper Extract Action |
| dataMapper | GetMMREmailTemplate |
| ignoreCache | false |
| responseTransformations | `null` — unresolved/unset; see context |
| userMessage | `null` — unresolved/unset; see context |
| errorMessages | `null` — unresolved/unset; see context |
| executionCondition | `null` — unresolved/unset; see context |
| complete | false |

##### confirmedActions[1] · ExtractEmailBodyForMMR.inputParameters

| dataSource | filterValueDisplayed | literalQuotingVerified |
| --- | --- | --- |
| DeveloperName | MMR_EMAIL_TEMPLATE | false |

##### confirmedActions[1] · ExtractEmailBodyForMMR.evidenceScreenshots

1. IMG_F2B01301-44F0-407A-A0CF-FF1F66E6AD37.jpeg
2. IMG_1F03F5AE-FCFF-4C84-840C-04F207E1D6B4.jpeg
3. IMG_D335A082-5392-4EA2-A7F9-9B27AE72E1E1.jpeg
4. IMG_7CABAFDD-8FD1-42F9-B32F-92158778A7D8.jpeg

#### confirmedActions[2] · IP-GetForms

| Property | Captured value |
| --- | --- |
| elementName | IP-GetForms |
| elementType | Integration Procedure Action |
| integrationProcedure | CNC_GetEmailFormsDetails |
| complete | false |
| captureStatus | in-progress |
| preTransformDataMapperInterface | `""` — captured blank |
| postTransformDataMapperInterface | `""` — captured blank |
| sendOnlyExtraPayload | true |
| sendJsonPath | `""` — captured blank |
| sendJsonNode | `""` — captured blank |
| responseJsonPath | `""` — captured blank |
| responseJsonNode | formsdata |
| lwcComponentOverride | `""` — captured blank |
| screenshotContext | Top properties confirm IP-GetForms identity; continuation captures stored in this same action entry. |
| fieldLabel | IP-GetForms |
| invokeMode | Default |
| observedActive | true |
| showToastOnCompletion | false |

##### confirmedActions[2] · IP-GetForms.conditionalViewEvidence

| Property | Captured value |
| --- | --- |
| conditionType | Show Element if True |
| displayedCondition | (MaterialType = Forms OR MaterialType = Documents) |
| context | IP-GetForms selected in preceding screenshot; selected-element header not visible in condition close-up |
| lwcComponentOverride | `""` — captured blank |

###### confirmedActions[2] · IP-GetForms.conditionalViewEvidence.messagingFramework

| Property | Captured value |
| --- | --- |
| windowPostMessage | false |
| pubSub | false |
| sessionStorage | false |

##### confirmedActions[2] · IP-GetForms.missing

1. Remaining user-message/error-message properties
2. Referenced Integration Procedure full definition and settings

##### confirmedActions[2] · IP-GetForms.evidenceScreenshots

1. IMG_70FF597B-607B-4E91-AE8E-7DFD2310FF27.jpeg
2. IMG_ECB61E00-ECA1-4281-8303-D3380D236979.jpeg
3. IMG_A7EC281B-F3FC-4FCF-BD04-501ED686935E.jpeg
4. IMG_7ED0B145-6A45-4A1C-A157-8CF97DE80626.jpeg
5. IMG_A9F862A3-2547-42D2-991A-234FA36FDDB2.jpeg

##### confirmedActions[2] · IP-GetForms.remoteOptions

`[]` — no entries recorded; coverage notes determine whether complete.

##### confirmedActions[2] · IP-GetForms.extraPayload

| key | value |
| --- | --- |
| MaterialType | %MaterialType% |
| OutboundChannel | %OutboundChannel% |

##### confirmedActions[2] · IP-GetForms.inputMapping

| Property | Captured value |
| --- | --- |
| kind | extra-payload-only |

###### confirmedActions[2] · IP-GetForms.inputMapping.keys

1. MaterialType
2. OutboundChannel

##### confirmedActions[2] · IP-GetForms.responseMapping

| Property | Captured value |
| --- | --- |
| sendJsonPath | `""` — captured blank |
| sendJsonNode | `""` — captured blank |
| responseJsonPath | `""` — captured blank |
| responseJsonNode | formsdata |

##### confirmedActions[2] · IP-GetForms.remoteProperties

| Property | Captured value |
| --- | --- |
| useFuture | false |
| chainable | false |
| useContinuation | false |
| useQueueable | false |
| queueableChainable | false |

### missingForRunnableBuild

1. OmniScript exported definition
2. Complete IP-GETCaseDetails properties including input/output mappings and conditions
3. CNC_GetCaseInformation exported definition and dependencies
4. Case launch component/action configuration
5. Remaining elements, nested steps, properties and dependencies
6. Generation template and actual generation payload/call

### safety

| Property | Captured value |
| --- | --- |
| activate | false |
| deploy | false |
| includeSecrets | false |

### integrationProcedures

#### integrationProcedures[0] · Get Case Information

| Property | Captured value |
| --- | --- |
| key | CNC_GetCaseInformation |
| name | Get Case Information |
| type | CNC |
| subType | GetCaseInformation |
| observedVersion | 3 |
| observedActive | true |
| complete | false |

##### integrationProcedures[0] · Get Case Information.visibleElements

###### integrationProcedures[0] · Get Case Information.visibleElements[0] · DR-E-GetCaseInfo

| Property | Captured value |
| --- | --- |
| elementName | DR-E-GetCaseInfo |
| type | Data Mapper Extract Action |
| dataMapper | CNCGetCaseInfo |
| sendJsonPath | `""` — captured blank |
| sendJsonNode | `""` — captured blank |
| responseJsonPath | `""` — captured blank |
| responseJsonNode | response |
| ignoreCache | false |
| sendOnlyAdditionalInput | false |
| returnOnlyAdditionalOutput | false |

**integrationProcedures[0] · Get Case Information.visibleElements[0] · DR-E-GetCaseInfo.inputParameters**

| dataSource | filterValue |
| --- | --- |
| caseId | caseId |

#### integrationProcedures[1] · Email Forms Details

| Property | Captured value |
| --- | --- |
| key | CNC_GetEmailFormsDetails |
| name | Email Forms Details |
| type | CNC |
| subType | GetEmailFormsDetails |
| observedVersion | 5 |
| observedActive | true |
| description | MNPP-3048 - Updated Outbound channel check. |
| complete | false |
| identityVerification | Procedure Configuration screenshot confirms Type/SubType matching the OmniScript IP-GetForms reference; prior photographed IP element captures linked here. |

##### integrationProcedures[1] · Email Forms Details.configuration

| Property | Captured value |
| --- | --- |
| includeAllActionsInResponse | false |
| rollbackOnError | false |
| requiredPermission | `""` — captured blank |

###### integrationProcedures[1] · Email Forms Details.configuration.trackingCustomData

`[]` — no entries recorded; coverage notes determine whether complete.

##### integrationProcedures[1] · Email Forms Details.visibleElements

###### integrationProcedures[1] · Email Forms Details.visibleElements[0] · SV-DefaultMapping

| Property | Captured value |
| --- | --- |
| elementName | SV-DefaultMapping |
| type | Set Values |
| responseJsonPath | `""` — captured blank |
| responseJsonNode | `""` — captured blank |
| executionConditionalFormula | `""` — captured blank |
| failOnStepError | false |
| complete | false |
| order | 1 |

**integrationProcedures[1] · Email Forms Details.visibleElements[0] · SV-DefaultMapping.values**

| name | expression | verification | expressionDisplayed |
| --- | --- | --- | --- |
| sectionName | IF(%MaterialType% = "Forms","Send Communication Forms","Send Communication Documents") | Full expression supplied by user in browser address bar screenshot; runtime/export syntax not validated. | =IF(%MaterialType% = "Forms","Send Communication Forms","Send Communication Documents") |
| type | IF(%MaterialType% = "Forms","Email Forms","Email Documents") | readable screenshot transcription; exact export syntax not validated | — not recorded |

**integrationProcedures[1] · Email Forms Details.visibleElements[0] · SV-DefaultMapping.evidenceScreenshots**

1. IMG_29034490-76E5-4170-AD4B-EC3073A16790.jpeg

###### integrationProcedures[1] · Email Forms Details.visibleElements[1] · DR-E-GetHeaderAttributes

| Property | Captured value |
| --- | --- |
| elementName | DR-E-GetHeaderAttributes |
| type | Data Mapper Extract Action |
| dataMapper | CNCGetHeaderAttributes |
| ignoreCache | false |
| sendJsonPath | `""` — captured blank |
| sendJsonNode | `""` — captured blank |
| responseJsonPath | `""` — captured blank |
| responseJsonNode | `""` — captured blank |
| sendOnlyAdditionalInput | false |
| complete | false |
| order | 2 |

**integrationProcedures[1] · Email Forms Details.visibleElements[1] · DR-E-GetHeaderAttributes.inputParameters**

| dataSource | filterValue |
| --- | --- |
| SV-DefaultMapping:sectionName | sectionName |

###### integrationProcedures[1] · Email Forms Details.visibleElements[2] · DR-E-GetForms

| Property | Captured value |
| --- | --- |
| elementName | DR-E-GetForms |
| type | Data Mapper Extract Action |
| order | 3 |
| dataMapper | CNCGetInternalAndExternalLinks |
| complete | false |
| ignoreCache | false |
| sendJsonPath | `""` — captured blank |
| sendJsonNode | `""` — captured blank |
| responseJsonPath | `""` — captured blank |
| responseJsonNode | `""` — captured blank |
| sendOnlyAdditionalInput | false |

**integrationProcedures[1] · Email Forms Details.visibleElements[2] · DR-E-GetForms.inputParameters**

| dataSource | filterValue |
| --- | --- |
| SV-DefaultMapping:type | type |
| OutboundChannel | OutboundChannel |

**integrationProcedures[1] · Email Forms Details.visibleElements[2] · DR-E-GetForms.missing**

1. Additional input/output/failure response settings below photographed area
2. Execution conditions and remaining properties

**integrationProcedures[1] · Email Forms Details.visibleElements[2] · DR-E-GetForms.evidenceScreenshots**

1. IMG_DE6E1E82-E36E-4E62-B5E8-644C75D8468A.jpeg

###### integrationProcedures[1] · Email Forms Details.visibleElements[3] · ResponseAction

| Property | Captured value |
| --- | --- |
| elementName | ResponseAction |
| type | Response Action |
| order | 4 |
| complete | false |
| responseFormat | JSON |
| sendJsonPath | DR-E-GetHeaderAttributes |
| responseJsonPath | `""` — captured blank |
| sendJsonNode | `""` — captured blank |
| responseJsonNode | `""` — captured blank |
| executionConditionalFormula | `""` — captured blank |
| internalNotes | `""` — captured blank |
| captureStatus | visible-properties-captured |

**integrationProcedures[1] · Email Forms Details.visibleElements[3] · ResponseAction.responseHeaders**

`[]` — no entries recorded; coverage notes determine whether complete.

**integrationProcedures[1] · Email Forms Details.visibleElements[3] · ResponseAction.additionalOutputResponse**

| Property | Captured value |
| --- | --- |
| returnOnlyAdditionalOutput | false |

**integrationProcedures[1] · Email Forms Details.visibleElements[3] · ResponseAction.additionalOutputResponse.additionalOutput**

| key | value |
| --- | --- |
| responsedata | %DR-E-GetForms:links% |

**integrationProcedures[1] · Email Forms Details.visibleElements[3] · ResponseAction.missing**

`[]` — no entries recorded; coverage notes determine whether complete.

**integrationProcedures[1] · Email Forms Details.visibleElements[3] · ResponseAction.evidenceScreenshots**

1. IMG_B73A6677-0F30-4A98-BEEF-3584372AE0F9.jpeg
2. IMG_4BED4E5F-62CF-401A-B701-7A367A0B6D0E.jpeg

##### integrationProcedures[1] · Email Forms Details.evidenceScreenshots

1. IMG_442D406A-B405-4965-AF08-059D1EBDE932.jpeg
2. IMG_B5075B6E-84B4-4C77-876E-0C2C5E5EAEE2.jpeg
3. IMG_412EA20C-02BE-4372-9367-69A1AFEA733F.jpeg
4. IMG_DE6E1E82-E36E-4E62-B5E8-644C75D8468A.jpeg

##### integrationProcedures[1] · Email Forms Details.missing

1. Remaining DR-E-GetForms properties and CNCGetInternalAndExternalLinks definition
2. Any additional procedure settings outside visible area

### dataMappers

#### dataMappers[0] · CNCGetCaseInfo

Reconciled exact record, including newer captured formulas and User filter:

```json
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
  "formulaVerification": "Exact formulas 1–13 now reconciled from newer PENDING_WORK.md evidence. Do not request them again. Runtime validation remains pending."
}
```

#### dataMappers[1] · GetMMREmailTemplate

| Property | Captured value |
| --- | --- |
| name | GetMMREmailTemplate |
| interfaceType | Extract |
| inputType | JSON |
| outputType | JSON |
| formulas | `null` — unresolved/unset; see context |
| options | `null` — unresolved/unset; see context |
| complete | false |

##### dataMappers[1] · GetMMREmailTemplate.extractSteps

###### dataMappers[1] · GetMMREmailTemplate.extractSteps[0]

| Property | Captured value |
| --- | --- |
| object | EmailTemplate |
| outputPath | Email |

**dataMappers[1] · GetMMREmailTemplate.extractSteps[0].filter**

| Property | Captured value |
| --- | --- |
| field | DeveloperName |
| operator | = |
| valueDisplayed | 'MMR_EMAIL_TEMPLATE' |
| sourceKind | displayed-quoted-value |
| exactQuoteSemanticsVerified | false |

##### dataMappers[1] · GetMMREmailTemplate.outputMappings

| extractJsonPath | outputJsonPath |
| --- | --- |
| Email:HtmlValue | mmrEmailTemplate:selectedTemplate:htmlValue |
| Email:Subject | mmrEmailTemplate:selectedTemplate:emailTemplateSubject |

##### dataMappers[1] · GetMMREmailTemplate.previewEvidence

| Property | Captured value |
| --- | --- |
| inputKey | DeveloperName |
| inputValue | MMR_EMAIL_TEMPLATE |
| responseVisible | false |
| executedSuccessfullyVerified | false |

##### dataMappers[1] · GetMMREmailTemplate.evidenceScreenshots

1. IMG_F2B01301-44F0-407A-A0CF-FF1F66E6AD37.jpeg
2. IMG_1F03F5AE-FCFF-4C84-840C-04F207E1D6B4.jpeg
3. IMG_D335A082-5392-4EA2-A7F9-9B27AE72E1E1.jpeg
4. IMG_7CABAFDD-8FD1-42F9-B32F-92158778A7D8.jpeg

#### dataMappers[2] · CNCGetHeaderAttributes

| Property | Captured value |
| --- | --- |
| name | CNCGetHeaderAttributes |
| interfaceType | Extract |
| inputType | JSON |
| outputType | JSON |
| formulaCountObserved | 11 |
| complete | false |

##### dataMappers[2] · CNCGetHeaderAttributes.extractSteps

###### dataMappers[2] · CNCGetHeaderAttributes.extractSteps[0]

| Property | Captured value |
| --- | --- |
| object | CNC_Line_Attributes__mdt |
| outputPath | section |
| limit | 1 |

**dataMappers[2] · CNCGetHeaderAttributes.extractSteps[0].filter**

| Property | Captured value |
| --- | --- |
| combine | OR |

**dataMappers[2] · CNCGetHeaderAttributes.extractSteps[0].filter.conditions**

| field | operator | input |
| --- | --- | --- |
| Section_Name__c | = | sectionName |
| DeveloperName | = | lineAttributeName |

###### dataMappers[2] · CNCGetHeaderAttributes.extractSteps[1]

| Property | Captured value |
| --- | --- |
| object | CNC_Header_Attribute__mdt |
| outputPath | columns |
| orderBy | Column_Order__c |

**dataMappers[2] · CNCGetHeaderAttributes.extractSteps[1].filter**

| Property | Captured value |
| --- | --- |
| field | CNC_Line_Attributes__c |
| operator | = |
| input | section:Id |

###### dataMappers[2] · CNCGetHeaderAttributes.extractSteps[2]

| Property | Captured value |
| --- | --- |
| object | CNC_Button_Attribute__mdt |
| outputPath | buttonattributes |
| orderBy | Order__c |

**dataMappers[2] · CNCGetHeaderAttributes.extractSteps[2].filter**

| Property | Captured value |
| --- | --- |
| field | CNC_Line_Attributes__c |
| operator | = |
| input | section:Id |

###### dataMappers[2] · CNCGetHeaderAttributes.extractSteps[3]

| Property | Captured value |
| --- | --- |
| object | CNC_Search_Attributes__mdt |
| outputPath | search |
| orderBy | Order__c |

**dataMappers[2] · CNCGetHeaderAttributes.extractSteps[3].filter**

| Property | Captured value |
| --- | --- |
| field | CNC_Line_Attributes__c |
| operator | = |
| input | section:Id |

###### dataMappers[2] · CNCGetHeaderAttributes.extractSteps[4]

| Property | Captured value |
| --- | --- |
| object | Account |
| outputPath | memberInfo |
| limit | 1 |

**dataMappers[2] · CNCGetHeaderAttributes.extractSteps[4].filter**

| Property | Captured value |
| --- | --- |
| combine | OR |

**dataMappers[2] · CNCGetHeaderAttributes.extractSteps[4].filter.conditions**

| field | operator | input |
| --- | --- | --- |
| Id | = | recId |
| Member_Id__pc | = | memberId |

###### dataMappers[2] · CNCGetHeaderAttributes.extractSteps[5]

| Property | Captured value |
| --- | --- |
| object | Case |
| outputPath | caseInfo |

**dataMappers[2] · CNCGetHeaderAttributes.extractSteps[5].filter**

| Property | Captured value |
| --- | --- |
| field | Id |
| operator | = |
| input | caseRecordId |

##### dataMappers[2] · CNCGetHeaderAttributes.formulas

| observedIndex | resultPath | expression | isDisabled | verification |
| --- | --- | --- | --- | --- |
| 1 | columns:typeAttributeVariant | IF(columns:Data_Type__c == "button","base","") | false | screenshot transcription; exact casing/syntax to confirm from export |
| 2 | columns:typeAttributeLabel | IF(columns:Data_Type__c == "button",columns:API_Response__c,"") | false | screenshot transcription; exact casing/syntax to confirm from export |
| 3 | columns:typeAttributeName | IF(columns:Data_Type__c == "button",columns:API_Response__c,"") | false | screenshot transcription; exact casing/syntax to confirm from export |
| 4 | columns:typeAttributeDisabled | IF(columns:Data_Type__c == "button",true,"") | false | screenshot transcription; exact casing/syntax to confirm from export |
| 5 | section:Show_Pagination__c | IF(isViewAll == "VIEWALL",true,section:Show_Pagination__c) | false | readable screenshot transcription; runtime not validated |
| 6 | section:Show_ViewAll__c | IF(isViewAll == "VIEWALL",false,section:Show_ViewAll__c) | false | readable screenshot transcription; runtime not validated |
| 7 | section:Record_Limit_Per_Page__c | IF(isViewAll == "VIEWALL",50,section:Record_Limit_Per_Page__c) | false | readable screenshot transcription; runtime not validated |
| 8 | section:APIRecordLimit | IF(isViewAll == "VIEWALL",200,10) | false | screenshot transcription; exact casing/syntax to confirm from export |
| 9 | columns:typeattributesdaymonth | IF((columns:Data_Type__c == "date" OR columns:Data_Type__c == "date-local"),"2-digit","") | false | screenshot transcription; exact casing/syntax to confirm from export |
| 10 | columns:typeattributesyear | IF((columns:Data_Type__c == "date" OR columns:Data_Type__c == "date-local"),"numeric","") | false | screenshot transcription; exact casing/syntax to confirm from export |
| 11 | columns:wrapText | IF(columns:Wrap_Text__c, true, "") | false | screenshot transcription; exact casing/syntax to confirm from export |

##### dataMappers[2] · CNCGetHeaderAttributes.missingFormulaIndices

`[]` — no entries recorded; coverage notes determine whether complete.

##### dataMappers[2] · CNCGetHeaderAttributes.outputMappings

| extractJsonPath | outputJsonPath |
| --- | --- |
| buttonattributes:Action_Name__c | buttons:Name |
| buttonattributes:Order__c | buttons:order |
| caseInfo:CaseNumber | caseNumber |
| caseInfo:Id | caseId |
| caseInfo:OwnerId | caseOwnerId |
| caseInfo:Previous_Owner__c | previousCaseOwnerId |
| caseInfo:Source_System_ID__c | externalId |
| columns:API_Response__c | Columns:fieldName |
| columns:Column_Order__c | columns:orders |
| columns:Data_Type__c | Columns:type |
| columns:Help_Text__c | Columns:helpText |
| columns:Is_Sortable__c | Columns:sortable |
| columns:Response_Label__c | Columns:label |
| columns:Type_Attribute_Target__c | Columns:typeAttributes:target |
| columns:typeAttributeLabel | Columns:typeAttributes:label:fieldName |
| columns:typeAttributeName | Columns:typeAttributes:name |
| columns:typeattributesdaymonth | Columns:typeAttributes:day |
| columns:typeattributesdaymonth | Columns:typeAttributes:month |
| columns:typeattributesyear | Columns:typeAttributes:year |
| columns:typeAttributeVariant | Columns:typeAttributes:variant |
| columns:wrapText | Columns:wrapText |
| memberInfo:Blue_Shield_Id__c | blueShieldId |
| memberInfo:Enterprise_Person_Id__c | personId |
| memberInfo:HIPAA_Flag__pc | hipaaFlag |
| memberInfo:Id | Id |
| memberInfo:Member_Id__pc | memberId |
| memberInfo:Name | Name |
| memberInfo:NPI__c | providerNPI |
| memberInfo:UMPI__c | providerUMPI |
| profileName:Profile.Name | profName |
| search:API_Response__c | search:fieldName |
| search:Field_Type__c | search:FieldType |
| search:Order__c | search:orderlist |
| search:Response_Label__c | search:labelName |
| section:APIRecordLimit | apiRecordLimit |
| section:Component_Name__c | componentName |
| section:Is_Selectable__c | IsSelectable |
| section:Query_Clause__c | fieldToFilter |
| section:Record_Limit_Per_Page__c | recordLimitPerPage |
| section:Section_Name__c | sectionName |
| section:Selectable_Type__c | selectableType |
| section:Show_Filter_By__c | showFilterBy |
| section:Show_Pagination__c | showPagination |
| section:Show_Row_Number__c | showRowNumber |
| section:Show_Search__c | showSearch |
| section:Show_ViewAll__c | showViewAll |

##### dataMappers[2] · CNCGetHeaderAttributes.options

| Property | Captured value |
| --- | --- |
| timeToLiveMinutes | 0 |
| checkFieldLevelSecurity | false |
| platformCacheType | `null` — unresolved/unset; see context |
| overwriteTargetForAllNullInputs | false |

##### dataMappers[2] · CNCGetHeaderAttributes.evidenceScreenshots

1. IMG_1BAC4DC5-FC40-4742-AAB8-A5BD2987AA4A.jpeg
2. IMG_BB607193-012A-49A6-9BFB-31ED46B4A509.jpeg
3. IMG_6DEB6056-6CC2-42BC-82CD-D5026D874782.jpeg
4. IMG_E233A1B5-FBAF-4481-9189-5571277C4FAB.jpeg
5. IMG_D0D11294-E903-4AC7-934C-EAC08EA9C3A0.jpeg
6. IMG_0BFF5C8A-39D1-4135-876D-CAFA3588C477.jpeg
7. IMG_8338C9DE-FFCF-40DB-83A8-872406407A35.jpeg
8. IMG_24C75048-B01C-4F62-84DF-031521FFB715.jpeg
9. IMG_AAC4E10A-A045-42EF-96F1-77BD29279D7A.jpeg
10. IMG_8BB5FFE5-E0AB-44C4-B8AF-10E6FD13D929.jpeg
11. IMG_52BBECB3-3338-4435-A68C-7D43A4DAA4C2.jpeg

##### dataMappers[2] · CNCGetHeaderAttributes.dependencies

| Property | Captured value |
| --- | --- |
| customMetadataRecords | Required records and their values not supplied |

###### dataMappers[2] · CNCGetHeaderAttributes.dependencies.customMetadataTypes

1. CNC_Line_Attributes__mdt
2. CNC_Header_Attribute__mdt
3. CNC_Button_Attribute__mdt
4. CNC_Search_Attributes__mdt

##### dataMappers[2] · CNCGetHeaderAttributes.outputMappingCoverage

| Property | Captured value |
| --- | --- |
| capturedSourceToTargetRows | 46 |
| complete | false |
| rowDetailPropertiesVerified | false |

###### dataMappers[2] · CNCGetHeaderAttributes.outputMappingCoverage.visibleRowsWithBlankSource

| extractJsonPath | outputJsonPath |
| --- | --- |
| `""` — captured blank | search |
| `""` — captured blank | Columns |

###### dataMappers[2] · CNCGetHeaderAttributes.outputMappingCoverage.notes

1. Blank source rows are recorded as displayed; their detailed settings and purpose are unknown.
2. Preserve Columns versus columns casing and columns:orders spelling; do not normalize.
3. profileName:Profile.Name is mapped, but its source extraction step is not captured.
4. Output list begins with buttonattributes in this batch; do not assume there are no earlier rows.

##### dataMappers[2] · CNCGetHeaderAttributes.formulaCapture

| Property | Captured value |
| --- | --- |
| capturedCount | 11 |
| observedCount | 11 |
| allObservedIndicesCaptured | true |
| runtimeValidated | false |

#### dataMappers[3] · CNCGetInternalAndExternalLinks

| Property | Captured value |
| --- | --- |
| name | CNCGetInternalAndExternalLinks |
| interfaceType | Extract |
| inputType | JSON |
| outputType | JSON |
| complete | false |
| captureStatus | in-progress |

##### dataMappers[3] · CNCGetInternalAndExternalLinks.referencedBy

| integrationProcedure | elementName |
| --- | --- |
| CNC_GetEmailFormsDetails | DR-E-GetForms |

##### dataMappers[3] · CNCGetInternalAndExternalLinks.missing

1. Output row-level properties/defaults/types
2. Verify extract filter grouping and false literal semantics

##### dataMappers[3] · CNCGetInternalAndExternalLinks.evidenceScreenshots

1. IMG_DE6E1E82-E36E-4E62-B5E8-644C75D8468A.jpeg
2. IMG_ECB8E752-3AAA-48FB-8B2E-52BAD3BA8DD7.jpeg
3. IMG_D5CD7D49-B200-4276-8248-5035EE499929.jpeg

##### dataMappers[3] · CNCGetInternalAndExternalLinks.extractSteps

###### dataMappers[3] · CNCGetInternalAndExternalLinks.extractSteps[0]

| Property | Captured value |
| --- | --- |
| object | CNC_Internal_and_External_Website__mdt |
| outputPath | links |
| filterGrouping | `null` — unresolved/unset; see context |
| filterGroupingVerification | Rows and join operators transcribed as displayed; explicit grouping and literal semantics not verified from export. |
| orderBy | Order__c |

**dataMappers[3] · CNCGetInternalAndExternalLinks.extractSteps[0].filterRows**

| field | operator | input | join | valueDisplayed |
| --- | --- | --- | --- | --- |
| Entity_Type__c | = | entityType | — not recorded | — not recorded |
| Outbound_Channel_Type__c | LIKE | OutboundChannel | OR | — not recorded |
| Type__c | = | type | AND | — not recorded |
| Is_Inactive__c | = | — not recorded | AND | 'false' |

##### dataMappers[3] · CNCGetInternalAndExternalLinks.outputMappings

| extractJsonPath | outputJsonPath |
| --- | --- |
| links:Department__c | links:department |
| links:Group__c | links:group |
| links:Id | links:Id |
| links:Is_Internal__c | links:isInternal |
| links:Order__c | links:order |
| links:Type__c | links:type |
| links:URL__c | links:url |
| links:URL_Label__c | links:label |

##### dataMappers[3] · CNCGetInternalAndExternalLinks.outputMappingCoverage

| Property | Captured value |
| --- | --- |
| visibleRows | 8 |
| rowDetailPropertiesVerified | false |

##### dataMappers[3] · CNCGetInternalAndExternalLinks.formulas

`[]` — no entries recorded; coverage notes determine whether complete.

##### dataMappers[3] · CNCGetInternalAndExternalLinks.formulaCoverage

| Property | Captured value |
| --- | --- |
| count | 0 |
| verification | User confirmed no formulas on 2026-10-01 |

##### dataMappers[3] · CNCGetInternalAndExternalLinks.optionsEvidence

| Property | Captured value |
| --- | --- |
| verification | User stated no options on 2026-10-01 |
| customOptionsConfigured | false |
| individualDefaultValuesVerified | false |

### setValuesElements

#### setValuesElements[0] · SV-InitialMapping

| Property | Captured value |
| --- | --- |
| elementName | SV-InitialMapping |
| type | Set Values |
| complete | false |

##### setValuesElements[0] · SV-InitialMapping.values

| name | useExpression | expression |
| --- | --- | --- |
| isLoggedInUserSameAsCaseOwner | true | IF(%caseOwnerId% = %loggedInUserId%, true, false) |

#### setValuesElements[1] · SV-DefaultMapping

| Property | Captured value |
| --- | --- |
| elementName | SV-DefaultMapping |
| type | Set Values |
| complete | false |

##### setValuesElements[1] · SV-DefaultMapping.values

| name | useExpression | expression | valueText | runtimeValueType | displayedValue | verification | elementType | inputTokenVerification |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| isPrint | true | IF(%OutboundChannel% = "Print" \|\| %OutboundChannel2% = "Print", true, false) | — not recorded | — not recorded | — not recorded | — not recorded | — not recorded | — not recorded |
| isEmail | true | IF(%OutboundChannel% = "Email", true, false) | — not recorded | — not recorded | — not recorded | — not recorded | — not recorded | — not recorded |
| isAsyncLetterGeneration | true | IF(%MaterialType% = "POD Documents", false, true) | — not recorded | — not recorded | — not recorded | — not recorded | — not recorded | — not recorded |
| isDocumentUploaded | false | — not recorded | false | unverified | — not recorded | — not recorded | — not recorded | — not recorded |
| selectedTemplate | true | null | — not recorded | — not recorded | — not recorded | — not recorded | — not recorded | — not recorded |
| selectedEntity | `null` — unresolved/unset; see context | — not recorded | — not recorded | — not recorded | =null | summary-only | — not recorded | — not recorded |
| preSelectedLetterTemplate | `null` — unresolved/unset; see context | — not recorded | — not recorded | — not recorded | =null | summary-only | — not recorded | — not recorded |
| preSelectedCaseEntity | `null` — unresolved/unset; see context | — not recorded | — not recorded | — not recorded | =null | summary-only | — not recorded | — not recorded |
| preSelectedForms | `null` — unresolved/unset; see context | — not recorded | — not recorded | — not recorded | =null | summary-only | — not recorded | — not recorded |
| addresseeCommName | `null` — unresolved/unset; see context | — not recorded | — not recorded | — not recorded | =null | summary-only | Text | — not recorded |
| mailingAddress | `null` — unresolved/unset; see context | — not recorded | — not recorded | — not recorded | =null | summary-only | Text | — not recorded |
| isFormshasAttachments | `null` — unresolved/unset; see context | — not recorded | true | unverified | — not recorded | summary-only | — not recorded | — not recorded |
| hasMaximumPOD | `null` — unresolved/unset; see context | — not recorded | false | unverified | — not recorded | summary-only | — not recorded | — not recorded |
| isLetterReviewRequired | `null` — unresolved/unset; see context | — not recorded | false | unverified | — not recorded | summary-only | — not recorded | — not recorded |
| isPOD | true | IF(%MaterialType% = "POD Documents", true, false) | — not recorded | — not recorded | — not recorded | — not recorded | — not recorded | — not recorded |
| isSubscription | true | IF(%isAMMrSubscription% = "Yes", true, false) | — not recorded | — not recorded | — not recorded | — not recorded | — not recorded | Confirm exact casing against export |

### validationPreference

| Property | Captured value |
| --- | --- |
| preview | deferred-by-user |
| runtimeValidated | false |

### outerTree

| Property | Captured value |
| --- | --- |
| evidencePath | Docgen/OMNISCRIPT_TREE.md |
| childrenExpanded | false |
| statusMeaning | Saved/Pending indicate documentation capture progress; not org implementation |

#### outerTree.elements

| name | type | source | order | status |
| --- | --- | --- | --- | --- |
| IP-GETCaseDetails | Integration Procedure Action | IMG_32747BB1-44F4-4042-B621-D0803ACBBBA5.jpeg | 1 | Saved |
| SV-InitialMapping | Set Values | IMG_32747BB1-44F4-4042-B621-D0803ACBBBA5.jpeg | 2 | Saved |
| MaterialAndCommunicationChannel | Step | IMG_32747BB1-44F4-4042-B621-D0803ACBBBA5.jpeg | 3 | Saved |
| SV-DefaultMapping | Set Values | IMG_32747BB1-44F4-4042-B621-D0803ACBBBA5.jpeg | 4 | Saved |
| ExtractEmailBodyForMMR | Data Mapper Extract Action | IMG_32747BB1-44F4-4042-B621-D0803ACBBBA5.jpeg | 5 | Saved |
| IP-GetForms | Integration Procedure Action | IMG_32747BB1-44F4-4042-B621-D0803ACBBBA5.jpeg | 6 | In progress |
| Step1 | Step | IMG_32747BB1-44F4-4042-B621-D0803ACBBBA5.jpeg | 7 | In progress |
| SV-FormSelectionValues | Set Values | IMG_32747BB1-44F4-4042-B621-D0803ACBBBA5.jpeg | 8 | Pending |
| SE-FormSelectionError | Set Errors | IMG_32747BB1-44F4-4042-B621-D0803ACBBBA5.jpeg | 9 | Pending |
| IP-GetPODDocs | Integration Procedure Action | IMG_6DEFBD37-5BB5-4656-ABB3-0451ACAFB032.jpeg | 10 | Pending |
| SelectPODDocs | Step | IMG_6DEFBD37-5BB5-4656-ABB3-0451ACAFB032.jpeg | 11 | Pending |
| SetValues1 | Set Values | IMG_6DEFBD37-5BB5-4656-ABB3-0451ACAFB032.jpeg | 12 | Pending |
| SE-PODSelectionError | Set Errors | IMG_6DEFBD37-5BB5-4656-ABB3-0451ACAFB032.jpeg | 13 | Pending |
| SE-PODSelectionCountError | Set Errors | IMG_6DEFBD37-5BB5-4656-ABB3-0451ACAFB032.jpeg | 14 | Pending |
| IP-GetLetterData | Integration Procedure Action | IMG_6DEFBD37-5BB5-4656-ABB3-0451ACAFB032.jpeg | 15 | Pending |
| SelectEmailAndLetters | Step | IMG_6DEFBD37-5BB5-4656-ABB3-0451ACAFB032.jpeg | 16 | Pending |
| SV-LetterSelectionValues | Set Values | IMG_6DEFBD37-5BB5-4656-ABB3-0451ACAFB032.jpeg | 17 | Pending |
| SE-LetterSelectionError | Set Errors | IMG_A6047F95-A130-4DF6-B4C8-FC30B2668577.jpeg | 18 | Pending |
| IP-GetCaseEntityDetails | Integration Procedure Action | IMG_A6047F95-A130-4DF6-B4C8-FC30B2668577.jpeg | 19 | Pending |
| SV-EntityMapping | Set Values | IMG_A6047F95-A130-4DF6-B4C8-FC30B2668577.jpeg | 20 | Pending |
| SelectEntity | Step | IMG_A6047F95-A130-4DF6-B4C8-FC30B2668577.jpeg | 21 | Pending |
| SV-EntitySelection | Set Values | IMG_A6047F95-A130-4DF6-B4C8-FC30B2668577.jpeg | 22 | Pending |
| SE-EntitySelectionError | Set Errors | IMG_A6047F95-A130-4DF6-B4C8-FC30B2668577.jpeg | 23 | Pending |
| IP-GETAPITokenData | Integration Procedure Action | IMG_A6047F95-A130-4DF6-B4C8-FC30B2668577.jpeg | 24 | Pending |
| SV-SetCommAddressData | Set Values | IMG_A6047F95-A130-4DF6-B4C8-FC30B2668577.jpeg | 25 | Pending |
| SelectAddress | Step | IMG_A6047F95-A130-4DF6-B4C8-FC30B2668577.jpeg | 26 | Pending |
| SV-AddressMapping | Set Values | IMG_B4D7FFA4-34B2-428C-8F4D-CAE20646F9D7.jpeg | 27 | Pending |
| SE-CommAddError | Set Errors | IMG_B4D7FFA4-34B2-428C-8F4D-CAE20646F9D7.jpeg | 28 | Pending |
| DR-CheckIfParagraphsExists | Data Mapper Extract Action | IMG_B4D7FFA4-34B2-428C-8F4D-CAE20646F9D7.jpeg | 29 | Pending |
| SelectParagraphs | Step | IMG_B4D7FFA4-34B2-428C-8F4D-CAE20646F9D7.jpeg | 30 | Pending |
| IP-GetPatientDemographics | Integration Procedure Action | IMG_B4D7FFA4-34B2-428C-8F4D-CAE20646F9D7.jpeg | 31 | Pending |
| SV-ResetTokenMapping | Set Values | IMG_B4D7FFA4-34B2-428C-8F4D-CAE20646F9D7.jpeg | 32 | Pending |
| RA-SetDefaultTokenMapping | Remote Action | IMG_B4D7FFA4-34B2-428C-8F4D-CAE20646F9D7.jpeg | 33 | Pending |
| sv-podMappings | Set Values | IMG_B4D7FFA4-34B2-428C-8F4D-CAE20646F9D7.jpeg | 34 | Pending |
| SelectEmail | Step | IMG_B4D7FFA4-34B2-428C-8F4D-CAE20646F9D7.jpeg | 35 | Pending |
| RA-updateLinks | Remote Action | IMG_0B8CD2B8-2F3F-4456-8E16-98469A98486F.jpeg | 36 | Pending |
| AdditionalInformation | Step | IMG_0B8CD2B8-2F3F-4456-8E16-98469A98486F.jpeg | 37 | Pending |
| RA-InsertSelectedForms | Remote Action | IMG_0B8CD2B8-2F3F-4456-8E16-98469A98486F.jpeg | 38 | Pending |
| IP-DeleteLetterData | Integration Procedure Action | IMG_0B8CD2B8-2F3F-4456-8E16-98469A98486F.jpeg | 39 | Pending |
| IP-GenerateLetterinAsync | Integration Procedure Action | IMG_0B8CD2B8-2F3F-4456-8E16-98469A98486F.jpeg | 40 | Pending |
| Set Generation_Options | Set Values | IMG_0B8CD2B8-2F3F-4456-8E16-98469A98486F.jpeg | 41 | Pending |
| ReviewandSubmitAsync | Step | IMG_0B8CD2B8-2F3F-4456-8E16-98469A98486F.jpeg | 42 | Pending |
| ReviewandSubmitSync | Step | IMG_0B8CD2B8-2F3F-4456-8E16-98469A98486F.jpeg | 43 | Pending |
| set-sectionName | Set Values | IMG_0B8CD2B8-2F3F-4456-8E16-98469A98486F.jpeg | 44 | Pending |
| ReviewPOD | Step | IMG_9ECBF03F-7E51-455D-9A3B-65293944794F.jpeg | 45 | Pending |
| SV-BuddyFileMapping | Set Values | IMG_9ECBF03F-7E51-455D-9A3B-65293944794F.jpeg | 46 | Pending |
| RA-SendEFilesToS3 | Remote Action | IMG_9ECBF03F-7E51-455D-9A3B-65293944794F.jpeg | 47 | Pending |
| SV-UploadSuccess | Set Values | IMG_9ECBF03F-7E51-455D-9A3B-65293944794F.jpeg | 48 | Pending |
| RA-SendEmail | Remote Action | IMG_9ECBF03F-7E51-455D-9A3B-65293944794F.jpeg | 49 | Pending |
| RA-createContactPoint | Remote Action | IMG_9ECBF03F-7E51-455D-9A3B-65293944794F.jpeg | 50 | Pending |
| Confirmation | Step | IMG_9ECBF03F-7E51-455D-9A3B-65293944794F.jpeg | 51 | Pending |
| RA-creteATrackCommunicationRecord | Remote Action | IMG_9ECBF03F-7E51-455D-9A3B-65293944794F.jpeg | 52 | Pending |

### procedureDiscovery

`[]` — no entries recorded; coverage notes determine whether complete.

### stepElements

#### stepElements[0] · Step1

| Property | Captured value |
| --- | --- |
| elementName | Step1 |
| elementType | Step |
| captureStatus | in-progress |
| complete | false |
| observedActive | true |
| fieldLabel | `""` — captured blank |
| chartLabel | `""` — captured blank |
| instruction | `""` — captured blank |
| allowSaveForLater | true |

##### stepElements[0] · Step1.visibleLayoutItems

###### stepElements[0] · Step1.visibleLayoutItems[0]

| Property | Captured value |
| --- | --- |
| order | 1 |
| elementName | `null` — unresolved/unset; see context |
| displayText | Select Forms |
| elementType | `null` — unresolved/unset; see context |

###### stepElements[0] · Step1.visibleLayoutItems[1]

| Property | Captured value |
| --- | --- |
| order | 2 |
| elementName | `null` — unresolved/unset; see context |
| displayText | Select Documents |
| elementType | `null` — unresolved/unset; see context |

###### stepElements[0] · Step1.visibleLayoutItems[2] · Messaging12

| Property | Captured value |
| --- | --- |
| order | 3 |
| elementName | Messaging12 |
| elementType | `null` — unresolved/unset; see context |

###### stepElements[0] · Step1.visibleLayoutItems[3] · Messaging13

| Property | Captured value |
| --- | --- |
| order | 4 |
| elementName | Messaging13 |
| elementType | `null` — unresolved/unset; see context |

###### stepElements[0] · Step1.visibleLayoutItems[4] · LineBreak13

| Property | Captured value |
| --- | --- |
| order | 5 |
| elementName | LineBreak13 |
| elementType | `null` — unresolved/unset; see context |

###### stepElements[0] · Step1.visibleLayoutItems[5] · CustomLWC4

| Property | Captured value |
| --- | --- |
| order | 6 |
| elementName | CustomLWC4 |
| elementType | Custom LWC |
| componentDisplayed | c:cncDynamicTableSections |
| fieldLabel | SelectFormsLwc |
| componentName | cncDynamicTableSections |
| observedActive | true |
| standaloneLwc | false |
| propertyListComplete | false |
| conditionalView | `null` — unresolved/unset; see context |

**stepElements[0] · Step1.visibleLayoutItems[5] · CustomLWC4.propertyMappings**

| name | source |
| --- | --- |
| recorddata | %formsdata% |
| isomniscript | true |
| omniscriptname | SendCommunication |
| omniscriptstepname | SelectForms |
| preselecteddata | %preSelectedForms% |
| table-height | 524 |

**stepElements[0] · Step1.visibleLayoutItems[5] · CustomLWC4.evidenceScreenshots**

1. IMG_1568837F-8F59-4017-A58E-18D3356EB1BC.jpeg

###### stepElements[0] · Step1.visibleLayoutItems[6] · LineBreak14

| Property | Captured value |
| --- | --- |
| order | 7 |
| elementName | LineBreak14 |
| elementType | `null` — unresolved/unset; see context |

###### stepElements[0] · Step1.visibleLayoutItems[7]

| Property | Captured value |
| --- | --- |
| order | 8 |
| elementName | `null` — unresolved/unset; see context |
| displayText | Upload Forms/Documents - PDF documents only<br>(If Applicable) |
| elementType | `null` — unresolved/unset; see context |

###### stepElements[0] · Step1.visibleLayoutItems[8] · CustomLWC2

| Property | Captured value |
| --- | --- |
| order | 9 |
| elementName | CustomLWC2 |
| elementType | Custom LWC |
| componentDisplayed | c:cncAttachmentsUploadSection |
| fieldLabel | uploadFormsAndDocuments |
| componentName | cncAttachmentsUploadSection |
| observedActive | true |
| standaloneLwc | false |
| propertyListComplete | true |
| conditionalView | `null` — unresolved/unset; see context |
| internalNotes | `""` — captured blank |

**stepElements[0] · Step1.visibleLayoutItems[8] · CustomLWC2.propertyMappings**

| name | source |
| --- | --- |
| uploadforms | true |
| currentrecordid | %ContextId% |

**stepElements[0] · Step1.visibleLayoutItems[8] · CustomLWC2.evidenceScreenshots**

1. IMG_826F9DCF-A34C-4E03-B0B2-336B8376D9CE.jpeg

###### stepElements[0] · Step1.visibleLayoutItems[9]

| Property | Captured value |
| --- | --- |
| order | 10 |
| elementName | `null` — unresolved/unset; see context |
| displayText | Ensure Email is selected only for Non-PHI Forms |
| elementType | `null` — unresolved/unset; see context |

###### stepElements[0] · Step1.visibleLayoutItems[10]

| Property | Captured value |
| --- | --- |
| order | 11 |
| elementName | `null` — unresolved/unset; see context |
| displayText | Ensure Email is selected only for Non-PHI Document |
| elementType | `null` — unresolved/unset; see context |

##### stepElements[0] · Step1.navigationVisible

1. Previous
2. Next

##### stepElements[0] · Step1.missing

1. Remaining Step/button properties and conditional view
2. Unnamed heading/guidance element identities and types
3. Messaging, heading and line-break properties/conditions
4. CustomLWC4 remaining attributes and both custom component conditional views
5. Custom component source and dependencies

##### stepElements[0] · Step1.evidenceScreenshots

1. IMG_BB1CA589-D991-47C2-8064-76907F69E666.jpeg
2. IMG_AF8E6CC8-D43D-4C47-97F8-C76516956DE7.jpeg
3. IMG_1568837F-8F59-4017-A58E-18D3356EB1BC.jpeg
4. IMG_826F9DCF-A34C-4E03-B0B2-336B8376D9CE.jpeg

##### stepElements[0] · Step1.buttonProperties

| Property | Captured value |
| --- | --- |
| previousLabel | Previous |
| nextLabel | Next |

#### stepElements[1] · MaterialAndCommunicationChannel

| Property | Captured value |
| --- | --- |
| elementName | MaterialAndCommunicationChannel |
| elementType | Step |
| captureStatus | visible-layout-and-condition-evidence-captured |
| complete | false |
| visibleTitle | Material and Outbound Channel Selection |

##### stepElements[1] · MaterialAndCommunicationChannel.materialType

| Property | Captured value |
| --- | --- |
| displayLabel | Material Type |
| elementName | `null` — unresolved/unset; see context |
| storedValuesVerified | false |

###### stepElements[1] · MaterialAndCommunicationChannel.materialType.visibleChoices

1. Forms
2. Documents
3. Letters
4. Other Communication
5. Member Materials Request (MMR) Documents

##### stepElements[1] · MaterialAndCommunicationChannel.conditionalViewEvidence

###### stepElements[1] · MaterialAndCommunicationChannel.conditionalViewEvidence[0] · MSG_CaseOwnerError

| Property | Captured value |
| --- | --- |
| elementName | MSG_CaseOwnerError |
| displayedCondition | (isLoggedInUserSameAsCaseOwner = false) |
| conditionType | `null` — unresolved/unset; see context |
| evidenceScreenshot | IMG_F486DE2B-37F2-4A41-8971-123AFDA8B732.jpeg |

###### stepElements[1] · MaterialAndCommunicationChannel.conditionalViewEvidence[1]

| Property | Captured value |
| --- | --- |
| elementName | `null` — unresolved/unset; see context |
| visibleLocation | First Outbound Channel control |
| displayLabel | Outbound Channel |
| displayedCondition | (MaterialType <> Letters) |
| conditionType | `null` — unresolved/unset; see context |
| evidenceScreenshot | IMG_70A81DDB-AC28-42DC-8088-05F8251167CA.jpeg |

**stepElements[1] · MaterialAndCommunicationChannel.conditionalViewEvidence[1].visibleChoices**

1. Email
2. Print

###### stepElements[1] · MaterialAndCommunicationChannel.conditionalViewEvidence[2]

| Property | Captured value |
| --- | --- |
| elementName | `null` — unresolved/unset; see context |
| visibleLocation | Second Outbound Channel control |
| displayLabel | Outbound Channel |
| displayedCondition | (MaterialType = Letters) |
| conditionType | `null` — unresolved/unset; see context |
| evidenceScreenshot | IMG_A7E26B77-B101-4132-90A9-B8ECE52EC500.jpeg |

**stepElements[1] · MaterialAndCommunicationChannel.conditionalViewEvidence[2].visibleChoices**

1. Email
2. Print

###### stepElements[1] · MaterialAndCommunicationChannel.conditionalViewEvidence[3]

| Property | Captured value |
| --- | --- |
| elementName | `null` — unresolved/unset; see context |
| visibleLocation | Email guidance below channel controls |
| displayText | Ensure Email is selected only for Non-PHI Blank Forms and Documents |
| displayedCondition | (MaterialType <>  AND MaterialType <> Letters AND OutboundChannel = Email) |
| conditionType | `null` — unresolved/unset; see context |
| verification | First MaterialType comparison has no readable right-hand value in the tooltip. Preserve the displayed blank; exact export syntax and empty-value semantics remain unverified. |
| evidenceScreenshot | IMG_7ACBD6F4-31F7-4D59-9114-9D0C1195E8F6.jpeg |

##### stepElements[1] · MaterialAndCommunicationChannel.navigationVisible

1. Next

##### stepElements[1] · MaterialAndCommunicationChannel.missing

1. Step properties and remaining child identities/types
2. Material Type stored values, defaults and complete radio properties
3. Both channel control element names, stored values, defaults and complete properties
4. Condition types and exact exported syntax; first comparison value in guidance tooltip
5. Case-owner message content and enforcement behavior
6. Remaining child properties and conditions

##### stepElements[1] · MaterialAndCommunicationChannel.evidenceScreenshots

1. IMG_F486DE2B-37F2-4A41-8971-123AFDA8B732.jpeg
2. IMG_70A81DDB-AC28-42DC-8088-05F8251167CA.jpeg
3. IMG_A7E26B77-B101-4132-90A9-B8ECE52EC500.jpeg
4. IMG_7ACBD6F4-31F7-4D59-9114-9D0C1195E8F6.jpeg


### customMetadataEvidence

| Property | Captured value |
| --- | --- |
| captureDate | 2026-10-01 |

#### customMetadataEvidence.types

##### customMetadataEvidence.types[0]

| Property | Captured value |
| --- | --- |
| name | CNC_Button_Attribute__mdt |
| singularLabel | CNC Button Attribute |
| pluralLabel | CNC Button Attributes |
| visibility | Public |
| reportedCustomFieldCount | 7 |
| fieldInventoryComplete | true |
| fieldDefinitionDetailsComplete | false |
| recordDetailsCaptured | false |
| recordValues | `null` — unresolved |
| status | captured-schema-inventory-only-not-deployed |

###### customMetadataEvidence.types[0].fields

| apiName | label | dataType | indexed | fieldManageability | settingsDetailCaptured | defaultValue |
| --- | --- | --- | --- | --- | --- | --- |
| Action_Name__c | Action Name | Text(15) | false | Upgradable | false | `null` — unresolved |
| Button_Label__c | Button Label | Text(15) | false | Upgradable | false | `null` — unresolved |
| Button_Location__c | Button Location | Text(20) | false | Upgradable | false | `null` — unresolved |
| CNC_Line_Attributes__c | CNC Line Attributes | Metadata Relationship(CNC Line Attributes) | true | Upgradable | false | `null` — unresolved |
| CNC_Master_Attributes__c | CNC Master Attributes | Metadata Relationship(CNC Master Attributes) | true | Upgradable | false | `null` — unresolved |
| Disabled__c | Disabled | Text(5) | false | Upgradable | false | `null` — unresolved |
| Order__c | Order | Number(18, 0) | false | Upgradable | false | `null` — unresolved |

###### customMetadataEvidence.types[0].evidenceScreenshots

1. IMG_CC9BD776-A527-446E-9DC0-4E749B63CA5C.jpeg
2. IMG_F5902140-0A3B-4558-BE50-A6A444CD04FD.jpeg

##### customMetadataEvidence.types[1]

| Property | Captured value |
| --- | --- |
| name | CNC_Header_Attribute__mdt |
| singularLabel | CNC Header Attribute |
| pluralLabel | CNC Header Attributes |
| visibility | Public |
| reportedCustomFieldCount | 9 |
| fieldInventoryComplete | true |
| fieldDefinitionDetailsComplete | false |
| recordDetailsCaptured | false |
| recordValues | `null` — unresolved |
| status | captured-schema-inventory-only-not-deployed |

###### customMetadataEvidence.types[1].fields

| apiName | label | dataType | indexed | fieldManageability | settingsDetailCaptured | defaultValue |
| --- | --- | --- | --- | --- | --- | --- |
| API_Response__c | API Response | Text(50) | false | Upgradable | false | `null` — unresolved |
| CNC_Line_Attributes__c | CNC Line Attributes | Metadata Relationship(CNC Line Attributes) | true | Upgradable | false | `null` — unresolved |
| Column_Order__c | Column Order | Number(18, 0) | false | Upgradable | false | `null` — unresolved |
| Data_Type__c | Data Type | Text(15) | false | Upgradable | false | `null` — unresolved |
| Default_Value__c | Default Value | Text(255) | false | Upgradable | false | `null` — unresolved |
| Help_Text__c | Help Text | Text(255) | false | Upgradable | false | `null` — unresolved |
| Is_Sortable__c | Is Sortable | Checkbox | false | Upgradable | false | `null` — unresolved |
| Response_Label__c | Response Label | Text(70) | false | Upgradable | false | `null` — unresolved |
| Wrap_Text__c | Wrap Text | Checkbox | false | Upgradable | false | `null` — unresolved |

###### customMetadataEvidence.types[1].evidenceScreenshots

1. IMG_4A5C39F9-F33E-4410-AC3F-275FDCEDE138.jpeg
2. IMG_3AB333F1-2CBF-45E5-9485-9190914BB6B3.jpeg

##### customMetadataEvidence.types[2]

| Property | Captured value |
| --- | --- |
| name | CNC_Line_Attributes__mdt |
| singularLabel | CNC Line Attributes |
| pluralLabel | CNC Line Attributes |
| visibility | Public |
| reportedCustomFieldCount | 16 |
| fieldInventoryComplete | true |
| fieldDefinitionDetailsComplete | false |
| recordDetailsCaptured | false |
| recordValues | `null` — unresolved |
| status | captured-schema-inventory-only-not-deployed |

###### customMetadataEvidence.types[2].fields

| apiName | label | dataType | indexed | fieldManageability | settingsDetailCaptured | defaultValue |
| --- | --- | --- | --- | --- | --- | --- |
| CNC_Master_Attribute__c | CNC Master Attribute | Metadata Relationship(CNC Master Attributes) | true | Upgradable | false | `null` — unresolved |
| Component_Name__c | Component Name | Text(255) | false | Upgradable | false | `null` — unresolved |
| Component_Type__c | Component Type | Picklist | false | Upgradable | false | `null` — unresolved |
| isAccordian__c | isAccordian | Checkbox | false | Upgradable | false | `null` — unresolved |
| Is_Selectable__c | Is Selectable | Checkbox | false | Upgradable | false | `null` — unresolved |
| Order__c | Order | Number(18, 0) | false | Upgradable | false | `null` — unresolved |
| Query_Clause__c | Query Clause | Text(20) | false | Upgradable | false | `null` — unresolved |
| Record_Limit_Per_Page__c | Record Limit Per Page | Number(18, 0) | false | Upgradable | false | `null` — unresolved |
| Section_Name__c | Section Name | Text(255) | false | Upgradable | false | `null` — unresolved |
| Selectable_Type__c | Selectable Type | Picklist | false | Upgradable | false | `null` — unresolved |
| Show_Filter_By__c | Show Filter By | Checkbox | false | Upgradable | false | `null` — unresolved |
| Show_Pagination__c | Show Pagination | Checkbox | false | Upgradable | false | `null` — unresolved |
| Show_Row_Number__c | Show Row Number | Checkbox | false | Upgradable | false | `null` — unresolved |
| Show_Search__c | Show Search | Checkbox | false | Upgradable | false | `null` — unresolved |
| Show_ViewAll__c | Show ViewAll | Checkbox | false | Upgradable | false | `null` — unresolved |
| UI_Type__c | UI Type | Picklist | false | Upgradable | false | `null` — unresolved |

###### customMetadataEvidence.types[2].evidenceScreenshots

1. IMG_7F84F67A-F3A5-4B04-A3E0-FEFA2840BBD7.jpeg
2. IMG_29048FA2-7C9D-4557-8D4C-9ADFE1EA1A20.jpeg

##### customMetadataEvidence.types[3]

| Property | Captured value |
| --- | --- |
| name | CNC_Search_Attributes__mdt |
| singularLabel | CNC Search Attributes |
| pluralLabel | CNC Search Attributes |
| visibility | Public |
| reportedCustomFieldCount | 6 |
| fieldInventoryComplete | false |
| fieldDefinitionDetailsComplete | false |
| recordDetailsCaptured | false |
| recordValues | `null` — unresolved |
| status | captured-schema-inventory-only-not-deployed |

###### customMetadataEvidence.types[3].fields

| apiName | label | dataType | indexed | fieldManageability | settingsDetailCaptured | defaultValue |
| --- | --- | --- | --- | --- | --- | --- |
| API_Response__c | API Response | Text(255) | false | Upgradable | false | `null` — unresolved |
| CNC_Line_Attributes__c | CNC Line Attributes | Metadata Relationship(CNC Line Attributes) | true | Upgradable | false | `null` — unresolved |

###### customMetadataEvidence.types[3].evidenceScreenshots

1. IMG_E84F76EB-303E-4C4C-9C63-D4F0BD7BDEA0.jpeg

#### customMetadataEvidence.dependencies

| name | reason | schemaCaptured | recordsCaptured |
| --- | --- | --- | --- |
| CNC_Master_Attributes__mdt | Metadata relationship targets in Button and Line inventories | false | false |

#### customMetadataEvidence.recordInventories

##### customMetadataEvidence.recordInventories[0]

| Property | Captured value |
| --- | --- |
| typeName | CNC_Button_Attribute__mdt |
| inventoryComplete | false |

###### customMetadataEvidence.recordInventories[0].records

| label | developerName | fieldValues |
| --- | --- | --- |
| Case Comments | Ref_Case_Comments | `null` — unresolved |
| New Case | Auth_New_Case | `null` — unresolved |
| New Case | Claims_New_Case | `null` — unresolved |
| New Case | External_New_Case | `null` — unresolved |
| New Case | New_Case | `null` — unresolved |
| New Case | Ref_New_Case | `null` — unresolved |
| Provider Search | Provider_Search | `null` — unresolved |
| View Documents | Auth_View_Documents | `null` — unresolved |
| View Documents | Plan_Documents | `null` — unresolved |
| View Documents | Ref_View_Documents | `null` — unresolved |
| View Documents | View_Documents | `null` — unresolved |
| View ID Card | View_ID_Card | `null` — unresolved |

###### customMetadataEvidence.recordInventories[0].evidenceScreenshots

1. IMG_37767B2B-AAC2-44A5-9A22-E23515C10137.jpeg

##### customMetadataEvidence.recordInventories[1]

| Property | Captured value |
| --- | --- |
| typeName | CNC_Header_Attribute__mdt |
| inventoryComplete | false |

###### customMetadataEvidence.recordInventories[1].records

| developerName | label | fieldValues |
| --- | --- | --- |
| Accum_Name | Account Name | `null` — unresolved |
| Accum_Billed | Accum Billed | `null` — unresolved |
| Accum_Claim_Number | Accum Claim Number | `null` — unresolved |
| Accum_ClaimSubtype | Accum ClaimSubtype | `null` — unresolved |
| Accum_Date_Claim_Paid | Accum Date Claim Paid | `null` — unresolved |
| Accum_ProviderName | Accum ProviderName | `null` — unresolved |
| Accum_ServiceDateFrom | Accum ServiceDateFrom | `null` — unresolved |
| Accum_ServiceDateThru | Accum ServiceDateThru | `null` — unresolved |
| Accum_Status | Accum Status | `null` — unresolved |
| Accums_Limits_Accumulator_Description | Accums Limits Accumulator Description | `null` — unresolved |
| Accums_Limits_Total_Amount_Limit | Accums Limits Total AmountLimit | `null` — unresolved |
| Accumulation_Details_Accum_Number | Accumulation_Details_Accum_Number | `null` — unresolved |
| Accumulation_Details_Accum_Type | Accumulation_Details_Accum_Type | `null` — unresolved |
| Accumulation_Details_Amt1 | Accumulation_Details_Amt1 | `null` — unresolved |
| Accumulation_Details_Ctr1 | Accumulation_Details_Ctr1 | `null` — unresolved |
| Accumulation_Details_Trans_Amt1 | Accumulation_Details_Trans_Amt1 | `null` — unresolved |
| Accumulation_Details_Trans_Ctr1 | Accumulation_Details_Trans_Ctr1 | `null` — unresolved |
| Action | Action | `null` — unresolved |
| Accums_Limits_Carry_Over_Amount_Limit | Accums Limits Carry Over AmountLimit | `null` — unresolved |
| Accums_Limits_Met_Amount_Limit | Accums Limits Met AmountLimit | `null` — unresolved |
| Accums_Limits_Period | Accums Limits Period | `null` — unresolved |
| Accums_Limits_Remaining_Amount_Limit | Accums Limits Remaining AmountLimit | `null` — unresolved |
| Address | Address | `null` — unresolved |
| Address1 | Address1 | `null` — unresolved |
| Address1_POD | Address1_POD | `null` — unresolved |
| Address2 | Address2 | `null` — unresolved |
| Address2_POD | Address2_POD | `null` — unresolved |
| Admission_Date | Admission Date | `null` — unresolved |
| Admit_Date | Admit Date | `null` — unresolved |
| Attach_Entity_Member_Id | Attach Entity Member Id | `null` — unresolved |
| Attach_Entity_Paid | Attach Entity Paid | `null` — unresolved |
| Attach_Entity_Plan_Description | Attach Entity Plan Description | `null` — unresolved |
| Attach_Entity_Plan_Effective | Attach Entity Plan Effective | `null` — unresolved |
| Attach_Entity_Plan_Elderly_Waiver | Attach Entity Plan Elderly Waiver | `null` — unresolved |
| Attach_Entity_Plan_Group_ID | Attach Entity Plan Group ID | `null` — unresolved |
| Attach_Entity_Plan_ID | Attach Entity Plan ID | `null` — unresolved |
| Attach_Entity_Plan_Status | Attach Entity Plan Status | `null` — unresolved |
| Attach_Entity_Plan_Term | Attach Entity Plan Term | `null` — unresolved |
| Attach_Entity_Provider | Attach Entity Provider | `null` — unresolved |
| Attach_Entity_Referral | Attach Entity Referral | `null` — unresolved |
| Attach_Entity_Relative | Attach Entity Relative | `null` — unresolved |
| Attach_Entity_Review_Determination | Attach Entity Review Determination | `null` — unresolved |
| Attach_Entity_Service_Date_From | Attach Entity Service Date From | `null` — unresolved |
| Attach_Entity_Service_Date_Thru | Attach Entity Service Date Thru | `null` — unresolved |
| Attach_Entity_Service_Date_To | Attach Entity Service Date To | `null` — unresolved |
| Attach_Entity_Status | Attach Entity Status | `null` — unresolved |
| AttachmentControlNbr | AttachmentControlNbr | `null` — unresolved |
| Auth_Case_Category | Auth_Case_Category | `null` — unresolved |
| Auth_Case_CreateDate | Auth_Case_CreateDate | `null` — unresolved |
| Auth_Case_LineOfBusiness | Auth_Case_LineOfBusiness | `null` — unresolved |
| Auth_Case_Status | Auth_Case_Status | `null` — unresolved |
| Auth_Case_Subcategory | Auth_Case_Subcategory | `null` — unresolved |
| Auth_Case_SubSubcategory | Auth_Case_SubSubcategory | `null` — unresolved |
| Auth_CaseNumber | Auth_CaseNumber | `null` — unresolved |

###### customMetadataEvidence.recordInventories[1].evidenceScreenshots

1. IMG_0491389E-AA15-4741-B2DF-066942D4A06F.jpeg
2. IMG_0D04879D-90FC-46E8-8852-96DF832B8824.jpeg
3. IMG_5B44D25C-5BC3-4159-9B34-6CADBB1FEEDB.jpeg

#### customMetadataEvidence.coverageNotes

1. Inventory screenshots show field types/lengths, indexed flags and metadata relationship targets; they do not show field editor defaults, picklist values or relationship settings.
2. Button 7/7, Header 9/9 and Line 16/16 custom fields inventoried; Search 2/6 visible. Internal/External Website schema is absent from this batch.
3. Header current inventory has no Type_Attribute_Target__c although captured mapper uses it. Preserve this source mismatch for verification; do not invent a field.
4. Header/search record lists show names only and do not establish Send Communication membership or any field values.
5. Record inventories are partial: clipped rows excluded; repeated visible rows deduplicated by DeveloperName.
6. No LWC source received in this batch. MDT/LWC implementation remains deferred under existing scope.


### customMetadataEvidence.recordInventories · CNC_Line_Attributes__mdt

Forms, Letters and Documents: 16/16 custom field values captured for each. Other records remain identity-only. Field schema editor settings and deployment are separate work.

| DeveloperName | MasterLabel | Custom field capture |
| --- | --- | --- |
| Send_Communication_Case_Review | Send Communication Case Review | null — off-screen |
| Send_Communication_Cover_Letter | Send Communication Cover Letter | null — off-screen |
| Send_Communication_Documents | Send Communication Documents | 16/16 fields |
| Send_Communication_Email_Template | Send Communication Email Template | null — off-screen |
| Send_Communication_Forms | Send Communication Forms | 16/16 fields |
| Send_Communication_Letters | Send Communication Letters | 16/16 fields |
| Send_Communication_POD | Send Communication POD | null — off-screen |
| Send_Communication_Paragraph | Send Communication Paragraph | null — off-screen |
| Send_Communication_Review | Send Communication Review | null — off-screen |
| Send_Communication_Review_POD | Send Communication Review POD | null — off-screen |
| Send_Communication_Select_Entity | Send Communication Select Entity | null — off-screen |

| Field | Forms | Letters | Documents |
| --- | --- | --- | --- |
| CNC_Master_Attribute__c | {"referencedType":"CNC_Master_Attributes__mdt","developerName":"Send_Communication"} | {"referencedType":"CNC_Master_Attributes__mdt","developerName":"Send_Communication"} | {"referencedType":"CNC_Master_Attributes__mdt","developerName":"Send_Communication"} |
| Component_Name__c | "" — captured blank | "" — captured blank | "" — captured blank |
| Component_Type__c | FlexCards | FlexCards | FlexCards |
| isAccordian__c | false | false | false |
| Is_Selectable__c | true | true | true |
| Order__c | 1 | 1 | 7 |
| Query_Clause__c | "" — captured blank | "" — captured blank | "" — captured blank |
| Record_Limit_Per_Page__c | 50 | 50 | 50 |
| Section_Name__c | Send Communication Forms | Send Communication Letters | Send Communication Documents |
| Selectable_Type__c | Check Box | Radio | Check Box |
| Show_Filter_By__c | true | true | true |
| Show_Pagination__c | true | true | true |
| Show_Row_Number__c | false | false | false |
| Show_Search__c | false | false | false |
| Show_ViewAll__c | false | false | false |
| UI_Type__c | Datatable | Datatable | Datatable |

Remaining custom field values for these three records: none. All reference Master DeveloperName Send_Communication. Documents relationship explicitly verified by IMG_1DEB262E-FB1F-4515-9017-91CB1384832F.jpeg. Forms/Letters final selectable/page-limit values were user-confirmed. Do not request completed values again. No deployment claimed.

### customMetadataEvidence · Forms/Documents/Letters Header details

All nine records have all nine custom field values captured. Sources: IMG_DEC6A101-0268-49B2-9E71-1A4F3C201D88.jpeg and IMG_E72A1B8D-3153-4D59-AE16-CA98F13660EB.jpeg. No deployment.

| DeveloperName | API_Response__c | CNC_Line_Attributes__c | Column_Order__c | Data_Type__c | Default_Value__c | Help_Text__c | Is_Sortable__c | Response_Label__c | Wrap_Text__c |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Documents_Department | department | Send_Communication_Documents | 1 | text | "" — blank | "" — blank | true | Department | false |
| Documents_Group | group | Send_Communication_Documents | 2 | text | "" — blank | "" — blank | true | Group | false |
| Documents_Name | label | Send_Communication_Documents | 3 | text | "" — blank | "" — blank | true | Document | false |
| Forms_Department | department | Send_Communication_Forms | 1 | text | "" — blank | "" — blank | true | Department | false |
| Forms_Group | group | Send_Communication_Forms | 2 | text | "" — blank | "" — blank | true | Group | false |
| Forms_Name | label | Send_Communication_Forms | 3 | text | "" — blank | "" — blank | true | Form | false |
| Letters_Department | department | Send_Communication_Letters | 1 | text | "" — blank | "" — blank | true | Department | false |
| Letters_Group | group | Send_Communication_Letters | 2 | text | "" — blank | "" — blank | true | Group | false |
| Letters_Name | Name | Send_Communication_Letters | 3 | text | "" — blank | "" — blank | true | Letter | false |

### customMetadataEvidence · Scoped empty queries

| Type | Line filter | Result |
| --- | --- | --- |
| CNC_Button_Attribute__mdt | Send_Communication_Forms, Send_Communication_Documents, Send_Communication_Letters | 0 rows; No data exported. |
| CNC_Search_Attributes__mdt | Send_Communication_Forms, Send_Communication_Documents, Send_Communication_Letters | 0 rows; No data exported. |

Continuation: Header values complete; capture CNC_Master_Attributes__mdt.Send_Communication settings. Button/Search empty results apply only to these Line relationship filters.

### customMetadataEvidence · Master identity and Department query correction

```json
{
  "master": {
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
  },
  "headerQueryObservation": {
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
}
```

Continuation: Master Entity_Type__c=Member is now captured. Verify the Master schema/field count before claiming full record completion. Do not repeat captured values. Forms/Documents/Letters Line and nine Header records remain complete.

## Complete captured configuration supplement: caseIntegration

Generated from the canonical caseIntegration entry for the 2026-10-06 screenshot batch. This entry supersedes earlier null launch settings; it does not change target deployment status.

```json
{
  "requiredByUser": true,
  "objectApiName": "Case",
  "launchMechanism": "Case.Send_Communication Lightning Web Component quick action → cncSendCommunicationQuickAction → OmniStudio wrapper",
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
      "IMG_7AF88FDA-CA38-4108-8415-1330BC5A6D21.jpeg"
    ],
    "runtimeObservation": "Send Communication button visible on Case record page. No post-click screen or successful letter generation supplied."
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
    "Post-click runtime screen and source active OmniScript version",
    "Record page API name and activation assignments if needed for deployment",
    "Launcher HTML/js-meta.xml and full source before deployable recreation",
    "Downstream consumption of ContextId and working Print letter path"
  ],
  "storyImplications": {
    "confirmed": "Shared Case launcher checks ownership and requires an Account before opening the OmniScript.",
    "proposed": "Reuse this entry point for all three letter stories unless confirmed scope requires a change.",
    "unknown": "CS-1831/1832 role access for non-owners is not established by story wording; visible launcher blocks all non-owners. No role bypass is shown."
  }
}
```

## Runtime review: first post-launch screen — 2026-10-06, 10:37 PM CT

Generated from canonical runtimeReview; display observations only, not complete designer properties or deployment verification.

```json
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
}
```

Next: select Other Communication and Print, then capture the resulting screen. Recipient selection is not visible in this screenshot; do not invent an initial Recipient control.

## Runtime review: Other Communication / Print and Select Letter — 2026-10-06, 10:39 PM CT

Generated from canonical runtimeReview. Existing HOSTProviderFreeformLetter is visible; it has not yet been selected or generated. Template labels do not establish backend record identity or story completion.

```json
[
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
  }
]
```

Next: select the displayed letter row and use Next to capture the following screen. No print submission is required.


## Runtime review: Communication Address — 2026-10-06, 10:42 PM CT

Generated from canonical runtimeReview. Supersedes earlier runtime continuation points: the journey has reached Communication Address. Checked one-time address state and blank inputs do not establish defaults or persistence behavior.

```json
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
}
```

Next: use approved sandbox test details to complete the address, select Next and capture the following screen. No print submission is required.


## Runtime review: Additional Information, Review and failure — 2026-10-06, 10:46 PM CT

Generated from canonical runtimeReview. Supersedes prior continuation points: address entry progressed to manual letter inputs, review displayed the selected letter and Confirmation displayed a failure. No successful generation/delivery is established.

```json
[
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
```

Next: inspect the original OmniScript AdditionalInformation element and its visible properties/child list to identify the component that supplies these input fields. Trace only observed dependencies. Failure root cause remains unknown until actual action/response evidence arrives.


## Complete captured configuration supplement: AdditionalInformation — 2026-10-06, 10:50 PM CT

Generated from canonical stepElements by elementName. Step and embedded LWC identity captured; actual custom LWC properties/source remain pending.

```json
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
```

Next: select EnterAdditionalInformation inside the Step and capture its Custom LWC properties, including input parameters and conditional settings. Do not collect all outer elements.


## Complete captured configuration supplement: AdditionalInfo LWC partial source — 2026-10-06, 10:53 PM CT

Generated from canonical lwcSourceEvidence by component name. Active and commented code distinguished. Print token definition/rendering branch remains uncaptured; email implementation must not be assumed to apply to Print.

```json
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
    "IMG_499C774D-9BD7-43EA-A39C-F17D4A8FADF9.jpeg"
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
    "printBranchCaptured": false
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
    "getTokenDetails continuation after approximately line 523, especially non-email/Print branch",
    "Token definition source and exact API/manual classification",
    "Input handlers and OmniScript updates for manual Print values",
    "HTML rendering and validation",
    "Preview navigation and generation calls",
    "Complete file coverage and js-meta.xml",
    "OmniScript Custom LWC element input mappings"
  ],
  "notes": "Partial source observations only; no executable file reconstructed, no deployment. Directly seen tokenInputs state flow confirms token list reuse/refresh. It does not yet establish the source of Print field definitions or required CS-1474 tokens."
}
```

Next: continue getTokenDetails below approximately line 523, capturing the non-email branch and token-source call. Earlier request for Custom LWC element properties remains a later gap; do not interrupt this source review to repeat captured sections.


## Complete captured configuration supplement: AdditionalInfo manual token processing — 2026-10-06, 10:56 PM CT

Generated from canonical lwcSourceEvidence. Supersedes the prior Print-branch gap for captured methods. Full source/template data/downstream generation remain incomplete.

```json
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
    "HTML rendering and any additional handlers in uncaptured lines approximately 612–670",
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
```

Next: inspect HOSTProviderFreeformLetter template/token definitions. Capture exact names, mappingName, isRequired and isReadOnly. Upstream selectedTemplate.tokens source remains unknown; no new IP/Apex fetch call appears in captured getTokenDetails.


## Template settings and token JSON — 2026-10-06, 11:01 PM CT

Generated from canonical documentTemplateEvidence. This supersedes the previous request for the template token list; per-token metadata remains unknown.

```json
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
  "wordContentInspected": false,
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
    "mappingName": null,
    "isRequired": null,
    "isReadOnly": null,
    "sourceOfSelectedTemplateTokens": null
  },
  "interpretation": [
    "Empty strings are displayed Token JSON values, not evidence that runtime merge data is missing.",
    "The existing LWC suffix filter would include the visible _manual and _apimanual tokens, including Free_Form_Text_apimanual.",
    "No Brief Description token is visible in the displayed Token JSON. CS-1474 requires Brief Description and Free Form Content; inspect Word content and mapping before deciding changes.",
    "Custom class configuration identifies the next automatic-data dependency. Its implementation and runtime inputs/outputs are not yet reviewed.",
    "Template file content, all story merge-field mappings, personalized generation, print delivery, case association and storage success remain unverified."
  ],
  "nextEvidence": "CNC_CustomTokenDataExtractor Apex source: entry method, input contract, token construction and mapping. Then inspect actual Word template content."
}
```

Next: review CNC_CustomTokenDataExtractor entry method and token mapping. Do not infer runtime values from empty Token JSON entries or claim Brief Description is implemented without inspecting Word content.


## Custom extractor checkpoint — 2026-10-06, 11:05 PM CT

Generated from canonical apexSourceEvidence. Supersedes the prior request for this class: the displayed class passes through tokenMapping; automatic values must be traced upstream.

```json
{
  "name": "CNC_CustomTokenDataExtractor",
  "evidence": "Two user-provided screenshots, class lines 1–48, 2026-10-06 11:05 PM CT",
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
}
```
