# Pending Send Communication implementation

Updated 2026-10-01. Status: pending evidence or implementation, not completed. See [CODEX_HANDOFF.md](CODEX_HANDOFF.md) for the working record and [deployment/captured-audit.json](deployment/captured-audit.json) for the detailed deployment blockers.

## Latest LWC / MDT scope update ? 2026-10-01

User now authorizes LWC and MDT implementation. Previous exclusions below are historical. Both Step1 LWCs deployed as scoped SelectForms/PDF-upload adaptations from source supplied in org comments; full originals preserved, broader missing integrations remain pending. Existing LWC children enabled, script inactive. 29 captured MDT fields deployed across four types. Remaining: Master relationship target/schema, three Line picklist value sets, four uncaptured Search fields, Internal/External Website schema, Header Type_Attribute_Target__c discrepancy and actual MDT record field values (captured names alone are not records). See CODEX_HANDOFF.md latest implementation checkpoint and deployment results. No need to resend either LWC source.

## Evidence audit before requesting more images

Do not treat implementation pending as evidence missing. Review this file, canonical JSON, handoff and existing evidence/source before asking for a repeat capture. A new request must identify the specific absent property and the existing records checked. Historical captured-audit.json blockers describe an earlier deployment checkpoint and can be superseded by newer evidence.

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

New screenshots establish complete field inventories for CNC_Button_Attribute__mdt (7/7), CNC_Header_Attribute__mdt (9/9) and CNC_Line_Attributes__mdt (16/16), and 2/6 fields for CNC_Search_Attributes__mdt. Exact API names, visible types/lengths, indexed flags and metadata relationship targets are merged into the canonical JSON and CODEX_HANDOFF.md. This is captured evidence, not deployment.

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


## Forms/Letters record values complete — user confirmation, 2026-10-01

The user confirmed the final two queried values for both Forms and Letters. All 16 custom field values for these two records are now captured in the canonical specification. Do not request their record values again. Documents record values and other previously recorded dependency gaps remain pending. Capture completion does not establish deployment or runtime verification.

## Current scope

The user authorized further development of missing components except LWCs and custom metadata (MDT). Those dependencies remain deferred, not resolved. Correct the existing inactive v4 draft in myProdOrg; do not create another skeleton. This documentation update does not deploy anything. Previously deployed configuration is partial and has not been runtime validated.

## Newly captured evidence — CNCGetCaseInfo Data Mapper

Screenshots captured from OmniStudio Data Mapper `CNCGetCaseInfo` establish the following exact configuration details.

### Extract steps

1. **Case**
   - Extract Output Path: `caseInfo`
   - Interface Field API Name: `Id`
   - Input JSON node used for filter value: `caseId`

2. **User**
   - Extract Output Path: `loggedInUserInfo`
   - Interface Field API Name: `Id`
   - Input JSON node used for filter value: `$Vlocity.UserId`

### Captured formulas 1–13

1. `COUNTQUERY("SELECT COUNT() FROM Case_Sub_Entity__c WHERE Case__c = '{0}'",caseId)`
   - Formula Result Path: `relatedEntityCount`

2. `FORMATDATETIME(NOW(),"MM/dd/yyyy")`
   - Formula Result Path: `currentDate`

3. `FORMATDATETIME(NOW(),"MMMM dd, yyyy")`
   - Formula Result Path: `todayDate`

4. `IF(ISBLANK(loggedInUserInfo:FirstName),SUBSTRING(loggedInUserInfo:LastName,0,1),CONCAT(loggedInUserInfo:FirstName," ",SUBSTRING(loggedInUserInfo:LastName,0,1)))`
   - Formula Result Path: `serviceRepName`

5. `IF(caseInfo:Account.Record_Type__c = "Member" || caseInfo:Account.Record_Type__c = "Unlisted Member","Member","Provider")`
   - Formula Result Path: `caseInfo:relationship`

6. `IF(caseInfo:Account.Record_Type__c = "Member" || caseInfo:Account.Record_Type__c = "Unlisted Member",caseInfo:Account.Name,caseInfo:Contact.Name)`
   - Formula Result Path: `localMemberName`

7. `IF(caseInfo:Account.Record_Type__c = "Member" || caseInfo:Account.Record_Type__c = "Unlisted Member",caseInfo:Account.FirstName,"")`
   - Formula Result Path: `localMemberFirstName`

8. `IF(caseInfo:Account.Record_Type__c = "Member" || caseInfo:Account.Record_Type__c = "Unlisted Member",caseInfo:Account.LastName,"")`
   - Formula Result Path: `localMemberLastName`

9. `IF(caseInfo:Account.Record_Type__c = "Member" || caseInfo:Account.Record_Type__c = "Unlisted Member",caseInfo:Account.Enterprise_Person_Id__c,"")`
   - Formula Result Path: `localEnterprisePersonId`

10. `FORMATDATETIME(caseInfo:CreatedDate,"MM/dd/yyyy")`
    - Formula Result Path: `createdDate`

11. `FORMATDATETIME(caseInfo:Received_Date__c,"MM/dd/yyyy")`
    - Formula Result Path: `receivedDate`

12. `QUERY("SELECT Entity_Type__c FROM Case_Sub_Entity__c WHERE Case__c = '{0}'",caseId)`
    - Formula Result Path: `relatedEntitiesList`

13. `TOSTRING(relatedEntitiesList)`
    - Formula Result Path: `relatedEntities`

### Reconciled capture status for CNCGetCaseInfo

Already captured: exact formulas 1–13, visible Case/User filters, 32 output mapping paths, Options, and a prior Preview observation returning zero Case rows. These are implementation/verification work, not requests to resend evidence. Exact formulas and User filter are now merged into the canonical JSON.

Remaining evidence gaps: output spelling providerBlueshildId versus providerBlueshieldId, row-level output settings where required, and any actual additional extraction settings identified during implementation. Existing capture does not prove successful runtime retrieval. Preview remains deferred; do not request it again as missing capture.

## Newly captured evidence — Case_Sub_Entity__c field inventory

Salesforce Inspector screenshots show field-definition rows for `Case_Sub_Entity__c`. This evidence supports the schema used by CNCGetCaseInfo formulas 1, 12 and 13.

Visible field definitions captured:

| Label | Qualified API name | Data type | Length | Indexed |
| --- | --- | --- | ---: | --- |
| Record ID | Id | Lookup() | 18 | true |
| Owner | OwnerId | Lookup(User,Group) | 18 | true |
| Deleted | IsDeleted | Checkbox | 0 | true |
| Entity Name | Name | Auto Number | 80 | true |
| Created Date | CreatedDate | Date/Time | 0 | true |
| Created By | CreatedById | Lookup(User) | 18 | false |
| Last Modified Date | LastModifiedDate | Date/Time | 0 | false |
| Last Modified By | LastModifiedById | Lookup(User) | 18 | false |
| System Modstamp | SystemModstamp | Date/Time | 0 | true |
| Object Access Level | UserRecordAccessId | Lookup(User Record Access) | 18 | false |
| Account Name | Account_Name__c | Lookup(Account) | 18 | true |
| BCBS MN Id | BCBS_MN_Id__c | Text(15) | 15 | false |
| Billing Provider Name | Billing_Provider_Name__c | Text(255) | 255 | false |
| Billing Provider PRPR Id | Billing_Provider_PRPR_Id__c | Text(15) | 15 | false |
| Case | Case__c | Lookup(Case) | 18 | true |
| Class ID | Class_ID__c | Text(100) | 100 | false |
| Contact Name | Contact_Case_Name__c | Lookup(Contact) | 18 | true |
| Entity Service Date End | Entity_Service_Date_End__c | Date | 0 | false |
| Entity Service Date From | Entity_Service_Date_From__c | Date | 0 | false |
| Location Vendor BCBS Id | Location_Vendor_BCBS_Id__c | Text(15) | 15 | false |
| Location Vendor Name | Location_Vendor_Name__c | Text(255) | 255 | false |
| Plan Code Reference Id | Plan_Code_Reference_Id__c | Text(30) | 30 | false |
| Plan Resource Id | Plan_Resource_Id__c | Text(100) | 100 | false |
| Plan Type Code | Plan_Type_Code__c | Text(10) | 10 | false |
| Plan Type | Plan_Type__c | Text(50) | 50 | false |
| Prior Authorization | Prior_Authorization__c | Text(30) | 30 | false |
| Referrals Id | Referrals_Id__c | Text(30) | 30 | false |
| Prior Authorization Type | Prior_Authorization_Type__c | Text(50) | 50 | false |
| Servicing Provider Name | Servicing_Provider_Name__c | Text(255) | 255 | false |
| Servicing Provider bcbsId | Servicing_Provider_bcbsId__c | Text(50) | 50 | false |
| Is Primary | Is_Primary__c | Checkbox | 0 | false |
| Entity Total Charge | Entity_Total_Charge__c | Currency(18, 0) | 0 | false |
| Member Plan | Member_Plan__c | Lookup(Member Plan) | 18 | true |
| URIText | URIText__c | Formula (Text) | 1300 | false |
| Billing Provider NPI | Billing_Provider_NPI__c | Text(25) | 25 | false |

Additional screenshots resolve this schema gap.

**Entity Type**
- Label: Entity Type
- API: `Entity_Type__c`
- Type: Picklist
- Displayed length: 255
- Indexed: false
- Description: stores entity type such as plan, claim or prior authorization
- Visible active values: Claim, Prior Authorization, Member, Provider, Plan, Referral, Claim Line
- No field dependencies or validation rules are shown

**Member Plan**
- API: `Member_Plan__c`
- Type: Lookup(Member Plan)
- Length: 18
- Indexed: true
- Related To: Member Plan
- Related List Label: Case Sub Entity
- Child Relationship Name: Case_Sub_Entity
- No lookup filter is defined

**URLText**
- Label: URLText
- API: `URLText__c`
- Type: Formula (Text)
- Captured formula:
  `CASE(Entity_Type__c, 'Claim', '/lightning/n/Claims_Details_Page?c__claimId=' & Entity_Value__c, '')`
- Meaning: only Claim entities receive a URL; the Claims Details Lightning page is opened with `Entity_Value__c` supplied as `c__claimId`.

Additional visible field:
- Entity Value — `Entity_Value__c` — Text(255) — length 255 — indexed false.


## Pending non-LWC/non-MDT work

| Component | Required evidence / remaining work | Status |
| --- | --- | --- |
| IP-GETCaseDetails / CNC_GetCaseInformation | Exact Case input and response mappings, execution condition, remaining procedure and error-handling settings, and Case launcher/context wiring | Pending exact evidence |
| CNCGetCaseInfo | Exact formulas 1–13, visible Case/User filters, 32 output paths, Options and prior zero-row Preview observation are captured. Implement from existing evidence. Remaining exact gaps: output spelling and row-level/extraction details actually required by implementation; successful runtime retrieval unverified and Preview deferred | Partially resolved by 2026-10-01 screenshots |
| MaterialAndCommunicationChannel | Child names/types; Material Type and both channel controls' stored values/defaults/properties; exact conditions and guidance comparison; case-owner message and enforcement | Pending exact evidence and implementation |
| SV-DefaultMapping | Expression/literal mode and runtime type for the nine assignments listed below; confirm isDocumentUploaded literal type and isSubscription token casing | Pending exact evidence; 7 of 16 assignments configured |
| ExtractEmailBodyForMMR / GetMMREmailTemplate | Exact input/filter literal quoting, action response transformations/conditions, mapper options and actual email template content | Pending exact evidence and implementation |
| CNC_GetEmailFormsDetails | Remaining procedure/execution/failure settings and dependency validation; its four captured elements exist but are not a validated executable chain | Pending exact evidence and validation |
| CNCGetHeaderAttributes | Missing Profile source extraction, two blank-source mapping rows, output row types/defaults/options and full output coverage | Pending exact evidence; MDT dependency deferred |
| CNCGetInternalAndExternalLinks | Exact OR/AND filter grouping, false literal semantics and output row properties/defaults/types | Pending exact evidence; MDT dependency deferred |
| Step1 | Remaining child names/types, headings/messages/line-break properties and conditions, Step/button settings and conditional views | Pending exact evidence and implementation; LWC implementation deferred |
| Salesforce custom fields | Exact field definitions: type, length/precision, defaults, picklist values, relationship target where applicable; then create verified missing fields | Pending schema evidence and implementation |
| Outer elements 8-52 | Detailed child/action configuration and dependencies; tree names alone are not implementation | Pending capture; outside current seven-element implementation scope |
| Validation | Verify exact deployed configuration after future changes; runtime Preview remains deferred; keep script inactive | Pending after dependencies/settings are resolved |

### Nine unresolved default assignments

- selectedEntity
- preSelectedLetterTemplate
- preSelectedCaseEntity
- preSelectedForms
- addresseeCommName
- mailingAddress
- isFormshasAttachments
- hasMaximumPOD
- isLetterReviewRequired

### Missing field definitions

- Account.Blue_Shield_Id__c
- Account.Member_Id__pc
- Account.NPI__c
- Account.Primary_Address__pc
- Account.Subscriber_Id__pc
- Account.UMPI__c
- Case.Source_System__c

Do not infer field types from names. Person Account __pc field backing definitions must be verified before creation.

## Deferred dependencies and requested evidence

LWCs cncDynamicTableSections and cncAttachmentsUploadSection are absent from target/source. Their captured input mappings exist, but source, dependencies and remaining component conditions are pending. Do not replace them with invented components.

The target's earlier MDT checkpoint records shells only. New evidence now captures Button 7/7, Header 9/9, Line 16/16 and Search 2/6 field inventories; actual record detail values remain uncaptured. See canonical customMetadataEvidence. Five original dependencies are:

- CNC_Line_Attributes__mdt
- CNC_Header_Attribute__mdt
- CNC_Button_Attribute__mdt
- CNC_Search_Attributes__mdt
- CNC_Internal_and_External_Website__mdt

For later MDT implementation, request screenshots of **Manage Records -> each record detail with every value**, plus **Fields & Relationships -> each field definition with API name, type and relevant settings**. Record photos alone do not establish the schema. An exact sanitized metadata export is preferable. No LWC or MDT creation is included in the latest development scope.

## Continuation rules

Use exact authorized org/source or new screenshots to resolve gaps. Keep unknown configuration unresolved; do not invent formulas, control values, field definitions or template content. After each new screenshot batch, merge evidence into the existing canonical JSON and refresh the same handoff's generated configuration section. Mark implementation completed only after actual writes and verification, and record deployment results separately from evidence capture.

## Case Sub Entity implementation checkpoint

Object and 26 captured custom fields deployed successfully to myProdOrg, job `0Afbm00000hoDJ4CAM`. See [CODEX_HANDOFF.md](CODEX_HANDOFF.md) and deployment result. Member Plan lookup and old URIText spelling remain unresolved. Connected-user field access remains pending; automatic review rejected permission-set creation/deployment. No formula/runtime completion is claimed.

## Member Plan checkpoint

Created development Member_Plan__c target and Case_Sub_Entity__c.Member_Plan__c lookup in myProdOrg; deployment `0Afbm00000hr962CAA` succeeded, 2/2 components. Missing target/lookup blocker resolved for development. Original Member Plan schema is still uncaptured; development choices are recorded in the handoff. Case Sub Entity has 27 deployed custom fields. Field access and all unrelated OmniScript gaps remain pending.

## Forms/Letters follow-up deployment

Five previously pending MDT fields are now deployed; 34 captured fields total across Button/Header/Line/Search. Master type and Send_Communication identity reference record created, full original Master schema still unknown. Forms/Letters records deployed with 14 captured values each and independently verified; Is_Selectable__c and Record_Limit_Per_Page__c remain uncaptured. Documents configuration, Header/Button/Search record values, Search four remaining fields, Website schema/records and Header Type_Attribute_Target__c discrepancy remain pending. See latest handoff checkpoint and deployment result `0Afbm00000hqeS2CAI`.
