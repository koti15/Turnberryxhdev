# Pending Send Communication implementation

Updated 2026-10-01. Status: pending evidence or implementation, not completed. See [CODEX_HANDOFF.md](CODEX_HANDOFF.md) for the working record and [deployment/captured-audit.json](deployment/captured-audit.json) for the detailed deployment blockers.

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

### Still unresolved for CNCGetCaseInfo

The screenshots above do **not** establish:
- full Case extract field list / relationship traversal configuration
- full User extract field list beyond the visible Id filter
- Data Mapper output mappings
- Data Mapper Options settings
- Preview/runtime output
- providerBlueshildId versus providerBlueshieldId output spelling
- any formulas beyond formula 13 (none are shown)
- whether additional extract/filter conditions exist off-screen


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
| CNCGetCaseInfo | Formula expressions 1–13 and visible Case/User filter inputs are now captured. Still need full extract field coverage, output mappings, options, preview/runtime evidence, and resolve providerBlueshildId versus providerBlueshieldId output spelling | Partially resolved by 2026-10-01 screenshots |
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

These five MDT types currently exist only as shells with no captured field definitions or configuration records:

- CNC_Line_Attributes__mdt
- CNC_Header_Attribute__mdt
- CNC_Button_Attribute__mdt
- CNC_Search_Attributes__mdt
- CNC_Internal_and_External_Website__mdt

For later MDT implementation, request screenshots of **Manage Records -> each record detail with every value**, plus **Fields & Relationships -> each field definition with API name, type and relevant settings**. Record photos alone do not establish the schema. An exact sanitized metadata export is preferable. No LWC or MDT creation is included in the latest development scope.

## Continuation rules

Use exact authorized org/source or new screenshots to resolve gaps. Keep unknown configuration unresolved; do not invent formulas, control values, field definitions or template content. After each new screenshot batch, merge evidence into the existing canonical JSON and refresh the same handoff's generated configuration section. Mark implementation completed only after actual writes and verification, and record deployment results separately from evidence capture.
