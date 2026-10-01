# CNC_GetCaseInformation / CNCGetCaseInfo evidence

Status: partially verified from designer screenshots supplied 2026-10-01. Configuration has not been exported or executed here. This is not deployable metadata.

## Confirmed chain

Send Communication action IP-GETCaseDetails calls CNC_GetCaseInformation.
The IP designer shows name Get Case Information, Type CNC, SubType GetCaseInformation, version 3, Active Yes.
Its visible structure contains Procedure Configuration and one Data Mapper Extract Action: DR-E-GetCaseInfo.
DR-E-GetCaseInfo references CNCGetCaseInfo.

## Confirmed IP extract action properties

| Property | Visible setting |
| --- | --- |
| Element Name | DR-E-GetCaseInfo |
| Data Mapper Interface | CNCGetCaseInfo |
| Input Data Source | caseId |
| Input Filter Value | caseId |
| Ignore Cache | Unchecked |
| Send JSON Path | Blank |
| Send JSON Node | Blank |
| Response JSON Path | Blank |
| Response JSON Node | response |
| Send Only Additional Input | Unchecked |
| Return Only Additional Output | Unchecked |

No additional input/output rows are visible. Lower failure settings, execution settings and overall procedure settings are not fully captured.
The response node above belongs to the IP's Data Mapper action; it is NOT evidence of the OmniScript action's response mapping.

## Confirmed Data Mapper extraction

Interface: CNCGetCaseInfo. Type: Extract. Input: JSON. Output: JSON.

| Step | Object | Extract output path | Filter |
| --- | --- | --- | --- |
| 1 | Case | caseInfo | Id = caseId |
| 2 | User | loggedInUserInfo | Id uses the displayed $Vlocity.UserId expression |

The Case filter confirms that the Data Mapper expects caseId. It does not establish how the Case launcher or OmniScript supplies that key.
Verify the exact User expression/quoting from export before recreating it.

## Formula inventory

The screenshots show 13 formula entries. The following describes readable expressions; it does not invent Output tab mappings.

| # | Formula result path | Readable behavior |
| --- | --- | --- |
| 1 | relatedEntityCount | COUNTQUERY against Case_Sub_Entity__c filtered by Case__c using caseId |
| 2 | currentDate | FORMATDATETIME of NOW(), format MM/dd/yyyy |
| 3 | todayDate | FORMATDATETIME of NOW(), format MMMM dd, yyyy |
| 4 | serviceRepName | If loggedInUserInfo:FirstName is blank, use the first character of LastName; otherwise concatenate FirstName and the first character of LastName |
| 5 | caseInfo:relationship | Account.Record_Type__c Member or Unlisted Member maps to Member; otherwise Provider |
| 6 | localMemberName | For Member/Unlisted Member use caseInfo:Account.Name; otherwise caseInfo:Contact.Name |
| 7 | localMemberFirstName | For Member/Unlisted Member use caseInfo:Account.FirstName; otherwise empty string |
| 8 | localMemberLastName | For Member/Unlisted Member use caseInfo:Account.LastName; otherwise empty string |
| 9 | localEnterprisePersonId | For Member/Unlisted Member use caseInfo:Account.Enterprise_Person_Id__c; otherwise empty string |
| 10 | createdDate | FORMATDATETIME of caseInfo:CreatedDate, format MM/dd/yyyy |
| 11 | receivedDate | FORMATDATETIME of caseInfo:Received_Date__c, format MM/dd/yyyy |
| 12 | relatedEntitiesList | QUERY selects Entity_Type__c from Case_Sub_Entity__c filtered by Case__c using caseId |
| 13 | relatedEntities | TOSTRING(relatedEntitiesList) |

Formula 4's exact concatenation separator and the query strings' exact quoting must be checked in export or a close-up before writing executable formulas. Other readable expressions also require runtime validation.

Account.Record_Type__c is the field shown in the formulas. Do not replace it with RecordType.Name or RecordTypeId.
Member/Provider here is a computed relationship classification; do not assume this determines the recipient or communication channel without downstream evidence.

## Unknowns preventing completion

- Data Mapper Output tab: source fields, output JSON paths, types, defaults and any required mappings.
- Data Mapper Options captured below; execution/access behavior still unvalidated.
- Full IP procedure settings, execution conditions and failure behavior.
- OmniScript IP-GETCaseDetails input/response transformations.
- Runtime input and output for the Data Mapper, IP and OmniScript.
- Custom object/field dependencies in the target org.
- Case launch metadata and record-context mapping.

## Next capture

Stay on CNCGetCaseInfo. Open OUTPUT and capture every mapping row, including both input and output paths. Then capture OPTIONS. Use a sanitized Preview input/output to verify the mapping, without committing real member data.

## Source screenshots

IMG_9BEB38FE-B6BB-449C-967B-C99853AF92C9.jpeg: IP configuration.
IMG_C04BE25B-D1FA-47EF-8131-A8B2284A703A.jpeg: IP extract action/interface/input.
IMG_3A15CF28-0FB2-46B1-8158-E00F33E8E7E7.jpeg: IP extract action transformations.
IMG_74EE3F4E-2B08-4885-8CFE-7454CB913770.jpeg: Data Mapper extraction.
IMG_E3955B5C-CF29-4895-A585-3A46D9DB7953.jpeg through IMG_53323342-6ACB-4A08-B764-A6E5FD94511A.jpeg: formula list.

## Additional evidence: Output schema, Options and Preview

Captured 2026-10-01 from IMG_315DBEAB-E574-4D2A-AE32-4019151804F2.jpeg, IMG_0A86C7F2-D1DD-437D-9474-7094742B4D08.jpeg, IMG_6EC535E9-9A97-49E3-81F5-920F1BFBEB78.jpeg, IMG_C5A5BD9C-29F9-4C6D-87AA-362A4297BFCF.jpeg and IMG_368C17CA-290C-41A0-9B97-72E28D8E554D.jpeg.

### Confirmed visible output schema

The right-side designer schema lists these keys with Text placeholders:
- localMemberFirstName
- memberDOB
- providerBlueshieldId
- memberEmail
- localPostalCode
- currentDate
- relatedEntityCount
- localStreet
- loggedInUserId
- localCity
- caseDescription
- ownerName
- sourceSystem
- caseNumber
- todayDate
- providerNPI
- localFullAddress
- localMemberName
- createdDate
- localState
- localEnterprisePersonId
- providerUMPI
- localCountry
- caseType
- subscriberId
- localMemberId
- caseOwnerId
- Id
- localMemberLastName
- serviceRepName
- relatedEntities
- receivedDate

This is the designer schema, not returned record values or proof of a successful extraction. The source-to-output mapping columns are outside the screenshots. The complete mapping remains Unknown.

### Confirmed Options

- Time To Live In Minutes: 0.
- Check Field Level Security: unchecked.
- Salesforce Platform Cache Type: selection placeholder, no selected type visible.
- Overwrite Target For All Null Inputs: unchecked.

These are observed settings only; access and caching behavior have not been validated here.

### Confirmed Preview observation

Input key: caseId. Actual record identifier is intentionally omitted from this note.
Preview Ignore Cache is checked; this is separate from the IP action's Ignore Cache setting.
The Case query debug line says Query results found: 0.

The visible response includes caseType = Provider, relatedEntityCount = 0, date fields, serviceRepName and loggedInUserId. Personal values and identifiers are omitted.

This run does not verify successful Case retrieval. The Provider value is compatible with the configured formula's fallback when Case/Account fields are absent; it does not prove the queried Case is a provider Case.
The cause of the zero-row result is Unknown: inspect whether the input ID exists in the current org and is accessible to the executing user before changing the Data Mapper.

### Updated next step

1. Capture OUTPUT with both source/extract and output JSON path columns visible for every row, or export the Data Mapper.
2. Preview with a Case ID confirmed to exist and be accessible in this same org. Share sanitized output and the result-count line.
3. Then inspect the OmniScript action's input/response settings. Do not assume the Data Mapper's caseId key proves the launcher wiring.
