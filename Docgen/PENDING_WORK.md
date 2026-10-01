# Pending Send Communication implementation

Updated 2026-10-01. Status: pending evidence or implementation, not completed. See [CODEX_HANDOFF.md](CODEX_HANDOFF.md) for the working record and [deployment/captured-audit.json](deployment/captured-audit.json) for the detailed deployment blockers.

## Current scope

The user authorized further development of missing components except LWCs and custom metadata (MDT). Those dependencies remain deferred, not resolved. Correct the existing inactive v4 draft in myProdOrg; do not create another skeleton. This documentation update does not deploy anything. Previously deployed configuration is partial and has not been runtime validated.

## Pending non-LWC/non-MDT work

| Component | Required evidence / remaining work | Status |
| --- | --- | --- |
| IP-GETCaseDetails / CNC_GetCaseInformation | Exact Case input and response mappings, execution condition, remaining procedure and error-handling settings, and Case launcher/context wiring | Pending exact evidence |
| CNCGetCaseInfo | All 13 executable formula expressions; exact User filter; resolve providerBlueshildId versus providerBlueshieldId output spelling | Pending exact evidence |
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
