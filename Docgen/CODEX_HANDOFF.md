# Send Communication: single-file working record

Updated 2026-10-01. This file contains the reconstruction instructions, completed capture work, pending gaps and all structured configuration recorded so far. Codex can start and continue from this file.

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

Partial record inventory; namespace blank/language en_US captured. Forms and Letters each have 14/16 custom field values captured; other rows remain identity-only. Sources include IMG_54F0625D-D0F5-4CF5-8FB0-87CAA9385FAE.jpeg and prior result images.

| DeveloperName | MasterLabel | Custom field capture |
| --- | --- | --- |
| Send_Communication_Case_Review | Send Communication Case Review | null — off-screen |
| Send_Communication_Cover_Letter | Send Communication Cover Letter | null — off-screen |
| Send_Communication_Documents | Send Communication Documents | null — off-screen |
| Send_Communication_Email_Template | Send Communication Email Template | null — off-screen |
| Send_Communication_Forms | Send Communication Forms | 14/16 fields; partial |
| Send_Communication_Letters | Send Communication Letters | 14/16 fields; partial |
| Send_Communication_POD | Send Communication POD | null — off-screen |
| Send_Communication_Paragraph | Send Communication Paragraph | null — off-screen |
| Send_Communication_Review | Send Communication Review | null — off-screen |
| Send_Communication_Review_POD | Send Communication Review POD | null — off-screen |
| Send_Communication_Select_Entity | Send Communication Select Entity | null — off-screen |

| Field | Send_Communication_Forms | Send_Communication_Letters |
| --- | --- | --- |
| Section_Name__c | Send Communication Forms | Send Communication Letters |
| Selectable_Type__c | Check Box | Radio |
| Show_Filter_By__c | true | true |
| Show_Pagination__c | true | true |
| Show_Row_Number__c | false | false |
| Show_Search__c | false | false |
| Show_ViewAll__c | false | false |
| UI_Type__c | Datatable | Datatable |
| isAccordian__c | false | false |
| Component_Name__c | "" — captured blank | "" — captured blank |
| Component_Type__c | FlexCards | FlexCards |
| Order__c | 1 | 1 |
| Query_Clause__c | "" — captured blank | "" — captured blank |
| CNC_Master_Attribute__c | {"referencedType":"CNC_Master_Attributes__mdt","developerName":"Send_Communication"} | {"referencedType":"CNC_Master_Attributes__mdt","developerName":"Send_Communication"} |

Remaining: Is_Selectable__c and Record_Limit_Per_Page__c for each. Both records have QualifiedApiName matching DeveloperName. Prior unassigned observation IMG_FF76DE60-C085-4B1E-BEB0-9F7A9707D0C3.jpeg is resolved by the visible Forms/Letters filter and identical values in both rows of IMG_54F0625D-D0F5-4CF5-8FB0-87CAA9385FAE.jpeg. Master reference DeveloperName=Send_Communication; exact original org ID not needed. Records are not deployed by this capture.
