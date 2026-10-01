# Send Communication OmniScript overall tree

Observed: English, version 43, Active true. Description: MMR- email go live prep.
Captured: 2026-10-01.

This is the ordered visible designer tree transcribed from the six supplied screenshots. Step children are collapsed and are not enumerated here.

Saved = supplied configuration evidence recorded for elements 1–5. Pending = element name/type recorded, detailed configuration still to capture. In progress = some new evidence captured, dependency details still pending. These statuses track documentation progress, not org implementation. Any exact-property gaps in the first four remain in the linked evidence notes.

## Overall tree and capture status

| # | Element | Type | Status |
| --- | --- | --- | --- |
| 1 | IP-GETCaseDetails | Integration Procedure Action | Saved |
| 2 | SV-InitialMapping | Set Values | Saved |
| 3 | MaterialAndCommunicationChannel | Step | Saved |
| 4 | SV-DefaultMapping | Set Values | Saved |
| 5 | ExtractEmailBodyForMMR | Data Mapper Extract Action | Saved |
| 6 | IP-GetForms | Integration Procedure Action | In progress |
| 7 | Step1 | Step | Pending |
| 8 | SV-FormSelectionValues | Set Values | Pending |
| 9 | SE-FormSelectionError | Set Errors | Pending |
| 10 | IP-GetPODDocs | Integration Procedure Action | Pending |
| 11 | SelectPODDocs | Step | Pending |
| 12 | SetValues1 | Set Values | Pending |
| 13 | SE-PODSelectionError | Set Errors | Pending |
| 14 | SE-PODSelectionCountError | Set Errors | Pending |
| 15 | IP-GetLetterData | Integration Procedure Action | Pending |
| 16 | SelectEmailAndLetters | Step | Pending |
| 17 | SV-LetterSelectionValues | Set Values | Pending |
| 18 | SE-LetterSelectionError | Set Errors | Pending |
| 19 | IP-GetCaseEntityDetails | Integration Procedure Action | Pending |
| 20 | SV-EntityMapping | Set Values | Pending |
| 21 | SelectEntity | Step | Pending |
| 22 | SV-EntitySelection | Set Values | Pending |
| 23 | SE-EntitySelectionError | Set Errors | Pending |
| 24 | IP-GETAPITokenData | Integration Procedure Action | Pending |
| 25 | SV-SetCommAddressData | Set Values | Pending |
| 26 | SelectAddress | Step | Pending |
| 27 | SV-AddressMapping | Set Values | Pending |
| 28 | SE-CommAddError | Set Errors | Pending |
| 29 | DR-CheckIfParagraphsExists | Data Mapper Extract Action | Pending |
| 30 | SelectParagraphs | Step | Pending |
| 31 | IP-GetPatientDemographics | Integration Procedure Action | Pending |
| 32 | SV-ResetTokenMapping | Set Values | Pending |
| 33 | RA-SetDefaultTokenMapping | Remote Action | Pending |
| 34 | sv-podMappings | Set Values | Pending |
| 35 | SelectEmail | Step | Pending |
| 36 | RA-updateLinks | Remote Action | Pending |
| 37 | AdditionalInformation | Step | Pending |
| 38 | RA-InsertSelectedForms | Remote Action | Pending |
| 39 | IP-DeleteLetterData | Integration Procedure Action | Pending |
| 40 | IP-GenerateLetterinAsync | Integration Procedure Action | Pending |
| 41 | Set Generation_Options | Set Values | Pending |
| 42 | ReviewandSubmitAsync | Step | Pending |
| 43 | ReviewandSubmitSync | Step | Pending |
| 44 | set-sectionName | Set Values | Pending |
| 45 | ReviewPOD | Step | Pending |
| 46 | SV-BuddyFileMapping | Set Values | Pending |
| 47 | RA-SendEFilesToS3 | Remote Action | Pending |
| 48 | SV-UploadSuccess | Set Values | Pending |
| 49 | RA-SendEmail | Remote Action | Pending |
| 50 | RA-createContactPoint | Remote Action | Pending |
| 51 | Confirmation | Step | Pending |
| 52 | RA-creteATrackCommunicationRecord | Remote Action | Pending |

## Saved elements

1. IP-GETCaseDetails: [IP/DR evidence](evidence/CNC_GetCaseInformation.md).
2. SV-InitialMapping: [Set Values evidence](evidence/OmniScript_SetValues.md).
3. MaterialAndCommunicationChannel: visible screen/choices recorded in [Set Values evidence](evidence/OmniScript_SetValues.md); detailed control properties remain unverified.
4. SV-DefaultMapping: 16 assignments recorded in [Set Values evidence](evidence/OmniScript_SetValues.md).

5. ExtractEmailBodyForMMR: canonical properties and GetMMREmailTemplate definition saved in [partial specification](spec/send-communication.partial.json). Response transformations, conditions, error/user messages and Data Mapper Options/Formulas remain unverified.

## Next element

IP-GetForms — in progress. Visible Forms/Documents condition and discovered IP/DR properties are saved in the canonical specification. Referenced IP identity/invoke mode and visible remote properties are now captured in the canonical specification. Still needed: remaining user/error-message properties, full referenced IP definition/settings, any earlier CNCGetHeaderAttributes Output rows/row details and missing profileName source step (all 11 formulas, 46 output mapping paths and Options now captured). The IP designer identity and four-element tree are now confirmed and merged into the canonical procedure record. DR-E-GetForms mapper reference, input mappings and visible transformations are captured. CNCGetInternalAndExternalLinks Extract and eight Output mappings are now captured. No formulas or configured options confirmed by user. ResponseAction visible settings, right-side node fields and expanded Additional Output Response are captured. The full IP SV-DefaultMapping sectionName expression is now captured. Next capture: remaining DR action properties. Other dependency gaps above remain tracked. Extract OR/AND grouping remains unverified. A similarly named SV-DefaultMapping in the IP is stored separately from the OmniScript element.

## Visible condition evidence

The RA-updateLinks tooltip shows `(isPOD = true AND isEmail = true)`. This is the only condition exposed by these tree screenshots. Other eye icons do not establish their condition text.

## Transcription limits

- This is the visible outer tree, not the full expanded child hierarchy.
- Exact label punctuation/casing, including Set Generation_Options and the final RA-creteATrackCommunicationRecord spelling, should be confirmed from properties/export before executable source is created.
- Action labels do not establish which objects/records/files are saved or deleted; actual action properties and implementation must be inspected.
- Preview remains deferred.
- Implementation and deployment remain pending.

## Source screenshots

- IMG_32747BB1-44F4-4042-B621-D0803ACBBBA5.jpeg
- IMG_6DEFBD37-5BB5-4656-ABB3-0451ACAFB032.jpeg
- IMG_A6047F95-A130-4DF6-B4C8-FC30B2668577.jpeg
- IMG_B4D7FFA4-34B2-428C-8F4D-CAE20646F9D7.jpeg
- IMG_0B8CD2B8-2F3F-4456-8E16-98469A98486F.jpeg
- IMG_9ECBF03F-7E51-455D-9A3B-65293944794F.jpeg

Detailed outstanding properties: [OMNISCRIPT_STATUS.md](OMNISCRIPT_STATUS.md). Machine-readable captured configuration: [partial specification](spec/send-communication.partial.json).
