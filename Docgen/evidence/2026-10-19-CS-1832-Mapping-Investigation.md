# CS-1832 Ancillary Letter — mapping investigation

Updated: October 19, 2026. Environment shown: XHDev1. Sources: supplied photographs of template token queries, OmniScript version 44, Integration Procedure designers, Data Mapper formulas/transforms, Apex source, and Brian working-session transcript. Updated through 18:33 CT. Configuration observations are distinguished from runtime validation. No configuration change was made as part of this investigation.

## Critical clarification — Account field versus LOB

The DR condition checks **Account.Record_Type__c**, not Line of Business and not a proven standard RecordType label. An ITS Host LOB selection alone does not force Subscriber ID. If the custom field does not match either configured literal, the local source is Member_Id__pc. Separately, an available apiMemberId can override the local value in SV-AddressMapping. The Account's actual custom field value for the user's test case was not captured. Do not state that the working result proved Subscriber ID was used.

The brief member-ID ask from Brian and the broader investigation are distinguished in the dated [call notes](../call-notes/2026-10-19-Brian-DocGen-Working-Session.md). Exact structured configuration is maintained in the [canonical specification](../spec/send-communication.partial.json).

## Captured formulas

Expressions below are readable behavioral transcriptions, not deployable metadata. Confirm exact identifiers/literals in the designer before editing.

| # | Formula result path | Captured behavior |
|---|---|---|
| 1 | relatedEntityCount | Counts Case_Sub_Entity__c records for the input caseId using COUNTQUERY. |
| 2 | currentDate | Formats NOW() as MM/dd/yyyy. |
| 3 | todaysDate | Formats NOW() as MMMM dd, yyyy. |
| 4 | serviceRepName | If loggedInUserInfo:FirstName is blank, first character of LastName; otherwise lowercase FirstName plus first character of LastName. |
| 5 | caseInfo:relationship | Account.Record_Type__c equal to Member, Unlisted Member, or ITS Host produces Member; otherwise Provider. |
| 6 | localMemberName | For Member or Unlisted Member, Account.Name; otherwise Contact.Name. |
| 7 | localMemberFirstName | For Member or Unlisted Member, Account.FirstName; otherwise empty string. |
| 8 | localMemberLastName | For Member or Unlisted Member, Account.LastName; otherwise empty string. |
| 9 | localEnterprisePersonId | For Member or Unlisted Member, Account.Enterprise_Person_Id__c; otherwise empty string. |
| 10 | createdDate | Formats caseInfo:CreatedDate as MM/dd/yyyy. |
| 11 | receivedDate | Formats caseInfo:Received_Date__c as MM/dd/yyyy. |
| 12 | relatedEntitiesList | Queries Entity_Type__c from Case_Sub_Entity__c for input caseId. |
| 13 | relatedEntities | TOSTRING(relatedEntitiesList). |
| 14 | localMemberId | IF on Account.Record_Type__c: ITS Host OR a second member-type literal selects Account.Subscriber_Id__pc; otherwise Account.Member_Id__pc. The second literal appears to read Engen Member; confirm the exact spelling in the UI. |

## Findings supported by these images

- Formula 14 branches on Account.Record_Type__c, not directly on a Line of Business field. The call's Line of Business discussion must be reconciled with the actual extraction and later formulas; do not equate the two fields without tracing.
- ITS Host is included in relationship formula 5 but is absent from the visible Member/Unlisted Member conditions in formulas 6–9. This is an inconsistency to review, not proof that every condition must be changed.
- A distinct Unlisted ITS Host value is not visible in formula 5. If that is the actual extracted value, the visible expression falls through to Provider. Confirm the actual value first.
- Formula 14 produces localMemberId. The final assignment was subsequently found in SV-AddressMapping; see the confirmed trace below.
- Initial formula images did not establish DOS or Patient Account Number sources. Later CNCTransformAPITokenMapping images establish both configured sources; runtime availability remains to be checked.
- Formula 2/3 result paths differ from the token mapping todayDate. A later output/remapping may reconcile them; do not rename them on this evidence alone.

## Current letter configuration context

- Ancillary Letter is active, appears in Send Communication, and generated a preview.
- Member_ID_or_Patient_Account_Number maps to memberId. Its name does not implement fallback to patient account number.
- Claim_DOS maps to claimDateofService; Patient_Acct_Num maps to patientAccountNumber. Runtime population still requires verification.
- In the working session, member population succeeded after multiple test-data/mapping changes. A single cause has not been isolated with a controlled comparison.
- Replacing/reuploading the document cleared mapping values during the session; re-query the current version's tokens and restore mappings as necessary.
- Revised Word layout used left tab stops. Confirm the active/downloaded document matches the final file and has Dear Provider restored. Older document content was observed; platform caching was suspected but not conclusively isolated.

## Brian's requested investigation, in order

1. Trace localMemberId from formula 14 through the mapper OUTPUT tab; capture its output JSON path. Then follow the Send Communication Set Values/default mappings to locate final memberId.
2. In EXTRACT, capture the source fields for Record_Type__c, Subscriber_Id__pc, and Member_Id__pc, including object/relationship paths. Do not assume Account record-type label equals the custom Record_Type__c value.
3. Determine whether Host Subscriber ID is plain or composite (name/subscriber ID/DOB). Locate an existing plain subscriber ID if available; Brian mentioned an extraction formula and related story if needed.
4. Confirm intended Host versus ITS Host Line of Business values and actual listed/unlisted record-type values with the appropriate owner. Capture which existing conditions depend on each.
5. Document the Member/Provider relationship behavior for ITS Host and unlisted Host records; flag the formulas 6–9 conditions for review rather than changing them automatically. Brian said localEnterprisePersonId probably does not apply to Host and to leave it alone for now.
6. Trace claimDateofService and patientAccountNumber to their source data and any conditions that leave them blank.
7. Prepare a short common findings list for Brian/team discussion. Any shared mapper changes require separate scope and coordination with Provider Appeals/run-the-business teams; no shared logic change was approved in this session.

## Evidence checklist

| Item | Status | Next evidence |
|---|---|---|
| Formulas 1–14 | Captured with transcription caveat | Exact second record-type literal in formula 14 |
| localMemberId source selection | Visible formula | EXTRACT source paths and OUTPUT row |
| Final memberId assignment | Confirmed | SV-AddressMapping chooses apiMemberId when neither empty nor null, otherwise localMemberId |
| Host plain subscriber ID | Open | Source-field meaning and representative sanitized result |
| LOB/record-type rules | Open | Confirmed expected values and controlled test |
| Relationship classification | Potential gap identified | Actual unlisted Host extracted value |
| DOS / patient account source | Configuration confirmed | Runtime values and execution remain to be validated |
| Final layout and token mappings | Revalidation pending | Current active file, current token rows, fresh preview |

For each investigated field record: source object/field → formula/condition → output key → subsequent assignment → Word token → sanitized observed result. Avoid recording real member identifiers.

## Immediate next step

Superseded by the follow-up findings below. Inspect only; do not change shared mappings yet.

## Follow-up evidence — API token transform

Screenshots supplied through 18:14 CT, October 19. Send Communication OmniScript shows active version 44 (description MMR-email go live prep). Send Communication API Mapping IP shows active version 8. Mapping inventory and formulas are configuration evidence; actual execution conditions still require preview/debug verification.

### Confirmed upstream/output observations

- CNCGetCaseInfo OUTPUT maps localMemberId to localMemberId unchanged. It also exposes localMemberName and other local member keys. No rename to memberId is shown there.
- Get Case IP's DRE-GetCaseInfo calls CNCGetCaseInfo, takes caseId and has Response JSON Node response. Full IP response to the OmniScript remains to be verified; this action setting alone does not establish the final OmniScript path.
- User reports memberId absent from inspected SV-InitialMapping, SV-DefaultMapping and SV-EntityMapping. This is a reported negative finding, not a full metadata search.
- Current Ancillary token rows confirm memberId, claimDateofService and patientAccountNumber mapping keys, with all 12 expected mappings present in the supplied query images.

### CNCTransformAPITokenMapping — Member ID found

Formula 7:

```text
IF(ISNOTBLANK(claimResp:memberInfo:memberId),
   claimResp:memberInfo:memberId,
   %localMemberId%)
```

Formula result path: claimResp:memberInfo:memberId.
TRANSFORMS row: claimResp:memberInfo:memberId → apiMemberId.

This establishes a configured fallback: use the claim response memberId when nonblank, otherwise localMemberId. The transform outputs apiMemberId. Later screenshots confirm SV-AddressMapping performs the final apiMemberId/localMemberId selection into root memberId; see the trace below. Preserve the Word mapping memberId.

### DOS source found

Formula 9 produces claimDateOfService (capital O in Of): when claimResp:claimInfo:serviceDateFrom and serviceDateThru are both nonblank, concatenate From + ' - ' + Thru; otherwise use whichever is nonblank (the final branch returns Thru).

TRANSFORMS row: claimDateOfService → claimDateofService (lowercase o in of).
Separate rows: claimResp:claimInfo:serviceDateFrom → claimServiceBeginDate; claimResp:claimInfo:serviceDateThru → claimServiceEndDate.
Word token Claim_DOS is configured to claimDateofService, matching the transform output. Runtime claim response availability and whether the IP executes must still be tested.

### Patient Account Number source found

TRANSFORMS row: claimResp:claimInfo:patientAccountNumber → patientAccountNumber.
Word token Patient_Acct_Num is configured to patientAccountNumber. There is no fallback shown on this row. Blank source data or a nonexecuted action can therefore leave the value blank; verify the actual payload before attributing cause.

### Additional captured transform context

- Mapper description says it transforms claim, patient and provider API data.
- Additional inputs include claimResp, providerResp, selectedLetterType and planResp. Send Only Additional Input is unchecked in the image; verify complete input payload if needed.
- Formula 1 selects provider locations of type MA with status true. Formula 2 selects provider mailing address for Provider letters, otherwise claimResp:memberInfo:address.
- Formulas 3–4 compose street/full address; 5 supplies claim number from claimResp:claimInfo:claimNumber or selected Claim entity value; 6 fills member birthdate from claim response or memberDOB. Formula 8 filters planResp by selected Plan entity/resource ID.
- Visible TRANSFORMS include claimResp member first/full/last name → apiMemberFirstName/apiMemberName/apiMemberLastName; claimResp member enterprise person ID → apiEnterprisePersonId; fullAddress → apiFullAddress; providerResp provider fields → providerBlueShieldId, billingProviderName, providerNPI, providerPRPR and providerTaxId.

### Brian review summary

1. DOS and patient account sources are now traced to claimResp:claimInfo via CNCTransformAPITokenMapping.
2. Member fallback exists in API transform formula 7. SV-AddressMapping then assigns root memberId from apiMemberId or localMemberId. This later finding resolves the earlier missing-assignment question.
3. localMemberId itself depends on the Account record-type formula already captured; plain Host subscriber ID and record-type/LOB expectations remain open.
4. Capture runtime input/output and affected conditions before proposing shared mapper changes. Review scope separately with Brian and affected teams.

## Confirmed resolution — where localMemberId becomes memberId

Found in the OmniScript Set Values element **SV-AddressMapping**, element name **memberId**. Supplied screenshots include the expression editor and a full expression copied into Notepad. Both Provider and non-Provider branches select the same value.

Behavioral transcription of the captured expression:

```text
IF(%selectedTemplate:letterEntity% = "Provider",
   IF((%apiMemberId% != "" && %apiMemberId% != NULL),
      %apiMemberId%, %localMemberId%),
   IF((%apiMemberId% != "" && %apiMemberId% != NULL),
      %apiMemberId%, %localMemberId%))
```

| Stage | Configured operation | Result |
|---|---|---|
| CNCGetCaseInfo Formula 14 | Select Subscriber_Id__pc for ITS Host or the second member-type literal; otherwise Member_Id__pc | localMemberId |
| CNCGetCaseInfo OUTPUT | localMemberId → localMemberId | Local value retained |
| CNCTransformAPITokenMapping Formula 7 | Claim response memberId when nonblank, otherwise localMemberId | claimResp:memberInfo:memberId |
| CNCTransformAPITokenMapping TRANSFORMS | claimResp:memberInfo:memberId → apiMemberId | API mapping output |
| SV-AddressMapping / memberId | apiMemberId if neither empty nor null; otherwise localMemberId | Root memberId |
| RA-SetDefaultTokenMapping | CNC_SendCommunication.transformTokenData matches token mapping name against top-level input keys | Word-token entry in tokenMapping |
| CNC_CustomTokenDataExtractor | Passes prepared tokenMapping to tokenMap | Supplies prepared token values to DocGen |

The original question is resolved at the configuration level: **SV-AddressMapping is the assignment point.** There is no patient-account-number fallback in this memberId expression. The combined Word-token name does not itself implement that behavior. The mapper/IP path and selected runtime branch still need a representative debug result to prove actual values for a specific case.

## Apex observations — token replacement consumes prepared keys

Fresh active-source screenshots show CNC_SendCommunication.transformTokenData. It reads selectedTemplate, loops its tokens, obtains token Name and MappingName through CNC_Constants, and checks input.containsKey(mappingAPIName). When present, it copies the top-level input value into a map keyed by Word token name:

```apex
if (input.containsKey(mappingAPIName)) {
    tokenMapping.put(tokenName, (String) input.get(mappingAPIName));
}
```

- It outputs tokenMapping and showAdditionalInfoSection using the corresponding CNC_Constants keys.
- Visible logic flags manual-token handling for token names containing the manual marker and matching the manual/apimanual suffix conditions. Email also enables the additional-information flag.
- No member-specific rename from localMemberId or apiMemberId is present in the photographed method. It consumes the mapping key configured on each selected template token.
- A missing top-level key is skipped by the visible containsKey guard. A present-but-null key is a different case; no nonblank guard is shown in that assignment.
- CNC_CustomTokenDataExtractor is the final adapter for the prepared map, not the source selector for member ID, DOS, or patient account number.
- RA-SetDefaultTokenMapping Remote Class = CNC_SendCommunication; Remote Method = transformTokenData. Pre-Transform and Post-Transform Data Mapper Interface fields are blank.
- Its photographed Send JSON Path/Node and Response JSON Path/Node are all blank. These four blank fields do not prove that all additional-input settings are absent; that section was not fully captured.

## Other actions and conditions inspected

| Component | Observation | Interpretation / limit |
|---|---|---|
| IP-GETAPITokenData | Eye tooltip confirms (selectedEntity <> null OR isPOD = true) | Configured to run when an entity is selected or POD is true; actual execution requires runtime evidence |
| API Mapping IP / ResponseAction | Send JSON Path = DR-T-TokenMapping; other photographed response transformation fields blank; no additional output shown | No apiMemberId → memberId rename visible here |
| SV-ResetTokenMapping | tokenMapping value displayed as '='; isRefreshTokens = true | Resets/prepares token refresh; no memberId assignment in shown entries. Exact reset expression/type was not expanded |
| SV-ResetTokenMapping | memberEmail and podEmailAddress reference IP-GetPatientDemographics:memberInfo:memberEmailA... | Email paths truncated in photographs; do not invent suffix/index |
| IP-GetPatientDemographics (OmniScript) | Extra Payload memberId = %memberId%; Send Only Extra Payload checked | Consumes the already assigned root memberId |
| Patient demographics IP / member transform action | Send JSON Path = HTTPGetPatient2:entry:resource; Additional Input localMemberId = %memberId%; Send Only Additional Input unchecked | Renames an existing IP input memberId to the mapper input localMemberId, not the original root assignment |
| Same member transform action | Response JSON Path/Node blank; no additional output shown | No root-memberId assignment established by these fields |
| Same member transform action | Execution formula shown as ISNOTBLANK(%HTTPGetPatient2%) && %HTTPGetPatient2:success% != false | Transform depends on patient response being present and not explicitly unsuccessful |

An earlier Conditional View photograph showed Remote Properties without enough selected-element identity. A later screenshot showing IP-GETAPITokenData selected and its eye tooltip resolved that ambiguity. Do not attribute conditions solely from an unidentified properties panel.

## CNCTransformMemberInfo — patient identifier selection

This is a separate member-demographics transform, distinct from CNCTransformAPITokenMapping. Input and output types shown are JSON.

| Formula | Behavior visible in photographs | Formula result path | Status shown |
|---|---|---|---|
| 1 | Filter entry:resource:telecom for system phone | phone | Not shown disabled |
| 2 | Filter telecom for system email | email | Not shown disabled |
| 3 | Filter address for type physical | physicalAddress | Not shown disabled |
| 4 | Filter address for type postal | postalAddress | Not shown disabled |
| 5 | Filter identifier for system matching pmi-id | pmiId | Is Disabled checked |
| 6 | Filter identifier for system matching maxis-id | maxisId | Is Disabled checked |
| 7 | Filter identifier for system matching mmp-id and value matching localMemberId | memberRec | Is Disabled unchecked |

Formula 7 uses localMemberId as a matching criterion. It does not directly copy or rename localMemberId. The selected API identifier record supplies memberRec:value. Exact filter-string escaping should be taken from designer metadata before any edit.

| Input JSON path | Output JSON path |
|---|---|
| birthDate | memberInfo:birthDate |
| email:value | memberInfo:memberEmailAddress |
| gender | memberInfo:gender |
| link:relation | memberInfo:relationship |
| maxisId:value | memberInfo:maxisId |
| memberGivenName | memberInfo:memberGivenName |
| memberRec:value | memberInfo:memberId |
| name1:family | memberInfo:memberFamilyName |
| name1:text | memberInfo:memberFullName |
| phone:value | memberInfo:phone |
| physicalAddress | memberInfo:physicalAddress |
| pmiId:value | memberInfo:pmiId |
| postalAddress | memberInfo:postalAddress |

The photographed output uses name1, with digit 1. Disabled identifier formulas still have visible transform rows; a visible output row alone does not prove its formula executes. The demographics response is nested memberInfo:memberId; it must not be confused with root memberId used earlier by the OmniScript.

## Complete Ancillary Letter token mapping inventory

Query photographed: SELECT Id, Token_API_Mapping_Name__c, Name FROM DocumentTemplateToken WHERE DocumentTemplateName = 'Ancillary Letter'. Multiple screenshots show the two sets of six rows. Record IDs are intentionally omitted here because replacing the Word file can regenerate token records.

| Word token Name | Token_API_Mapping_Name__c |
|---|---|
| Current_Date_system | todayDate |
| Provider_Name_apimanual | addresseeName |
| Provider_Address_apimanual | mailingAddressStreet |
| City_apimanual | mailingAddressCity |
| State_apimanual | mailingAddressState |
| Zip_Code_apimanual | mailingAddressPostalCode |
| Patient_Full_Name_manual | memberName |
| Claim_Number_or_Authorization_Number_manual | claimNumber |
| Member_ID_or_Patient_Account_Number | memberId |
| Case_Number | caseNumber |
| Claim_DOS | claimDateofService |
| Patient_Acct_Num | patientAccountNumber |

Ancillary Letter has fixed body text; no Free_Form_Text token was shown. The mapping key's exact case matters: claimDateOfService is the formula result, while claimDateofService is the transform output and template mapping.

## Observed OmniScript execution order

Active version 44, English, description MMR-email go live prep. These are photographed element names/order, not an assertion that all conditional branches run:

1. IP-GETCaseDetails; SV-InitialMapping; MaterialAndCommunicationChannel; SV-DefaultMapping.
2. ExtractEmailBodyForMMR; IP-GetForms; Step1; SV-FormSelectionValues; SE-FormSelectionError.
3. IP-GetPODDocs; SelectPODDocs; SetValues1; SE-PODSelectionError; SE-PODSelectionCountError.
4. IP-GetLetterData; SelectEmailAndLetters; SV-LetterSelectionValues; SE-LetterSelectionError.
5. IP-GetCaseEntityDetails; SV-EntityMapping; SelectEntity; SV-EntitySelection; SE-EntitySelectionError.
6. IP-GETAPITokenData; SV-SetCommAddressData; SelectAddress; SV-AddressMapping; SE-CommAddError.
7. DR-CheckIfParagraphsExists; SelectParagraphs; IP-GetPatientDemographics; SV-ResetTokenMapping; RA-SetDefaultTokenMapping.
8. sv-podMappings; SelectEmail; RA-updateLinks; AdditionalInformation; RA-InsertSelectedForms; IP-DeleteLetterData.
9. IP-GenerateLetterinAsync; Set Generation Options; ReviewandSubmitAsync; ReviewandSubmitSync; set-sectionName; ReviewPOD; SV-BuddyFileMapping (partially visible).

The active API Mapping IP version 8 structure shown: SetEntityInputs → IP-GETClaimInfo → IP-GetClaimInfov2 → SetProviderInputs → IP-GETProviderDetails → IP-GetMemberPlan → DR-T-TokenMapping → ResponseAction. Description mentions cloning version 7 and PA-373 claim EOB v2 work. No change to that IP was made here.

## Runtime observations and what remains unproven

- User's search of an earlier runtime JSON did not find apiMemberId. That JSON showed early/incomplete selection state. This is not proof apiMemberId is absent after IP-GETAPITokenData executes.
- The exact missing-assignment question is now answered: SV-AddressMapping supplies memberId. Repeated searches in the extractor or token remote method are unnecessary for locating that assignment.
- Runtime verification should compare localMemberId, apiMemberId, and memberId immediately after SV-AddressMapping, then the selected template token mapping and tokenMapping immediately after RA-SetDefaultTokenMapping. Use sanitized values or presence/equality flags in notes.
- Confirm both paths: populated API value wins; absent API value falls back to localMemberId. No shared metadata edit is needed just to verify existing behavior.
- Verify DOS and patientAccountNumber with a selected claim returning those source fields. Account-level member data does not establish availability of claim-level DOS/patient account number.
- Still open: exact second record-type literal in CNCGetCaseInfo Formula 14; complete extraction relationship paths; plain versus composite Host subscriber ID; intended listed/unlisted Host classification; final current Word layout; fresh preview against the current token records; QA deployment and business acceptance.
- Member ID working in Brian's session followed several changes, including different Account source data, ITS Host LOB selection and restored memberId token mapping after a temporary localMemberId experiment. No single causal change has been isolated.
- Brian's direction remains: document common sources/conditions, discuss shared mapper issues with Brian and Provider Appeals/run-the-business owners (Tracy/Susan as appropriate), and scope common changes separately. No unilateral shared mapper correction is approved by these observations.

## Concise explanation for Brian

The Ancillary template token points to memberId. CNCGetCaseInfo prepares localMemberId from Account data, the API token mapper outputs apiMemberId with a local fallback, and SV-AddressMapping assigns the final memberId by preferring a nonempty/non-null apiMemberId and otherwise using localMemberId. CNC_SendCommunication.transformTokenData then copies that root value into the Word-token map. DOS and patient account number come from claimResp:claimInfo through CNCTransformAPITokenMapping. Source-data meaning and Host classification still require review; this investigation has traced configuration and has not changed shared logic.
