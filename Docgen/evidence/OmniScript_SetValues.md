# OmniScript initial and default values

Confirmed from screenshots supplied 2026-10-01. These are OmniScript Set Values configurations, not CNCGetCaseInfo Output mappings. No org changes or runnable metadata were created from this note.

## SV-InitialMapping

Name and field label: SV-InitialMapping.
Visible value: isLoggedInUserSameAsCaseOwner.
Expression: `IF(%caseOwnerId% = %loggedInUserId%, true, false)`.

The expression compares caseOwnerId and loggedInUserId. Its downstream use and behavior with missing values are not verified. MSG_CaseOwnerError is visible in the subsequent step, but its conditions/content have not been inspected; do not assume this flag blocks the user.

## MaterialAndCommunicationChannel

Visible title: Material and Outbound Channel Selection.
Visible Material Type choices: Forms, Documents, Letters, Other Communication, Member Materials Request (MMR) Documents.
Two Outbound Channel controls are visible, each showing Email and Print.
Visible note: Ensure Email is selected only for Non-PHI Blank Forms and Documents.
The displayed note alone does not establish enforced validation.
Radio element properties, stored choice values, defaults, and conditional visibility remain unknown. Do not equate the MMR display label with the expression literal POD Documents without inspecting the stored value.

## SV-DefaultMapping

| Value name | Use Expression | Captured expression/value |
| --- | --- | --- |
| isPrint | Yes | `IF(%OutboundChannel% = "Print" \|\| %OutboundChannel2% = "Print", true, false)` |
| isEmail | Yes | `IF(%OutboundChannel% = "Email", true, false)` |
| isAsyncLetterGeneration | Yes | `IF(%MaterialType% = "POD Documents", false, true)` |
| isDocumentUploaded | No | Value box contains `false`; actual JSON type unverified |
| selectedTemplate | Yes | `null` |

isPrint was captured across two horizontally scrolled screenshots. isEmail checks only OutboundChannel in the visible expression; do not add OutboundChannel2 to it.
isAsyncLetterGeneration is a flag assignment; actual generation branching still needs inspection.
These rows are confirmed, but completeness of the entire value list and lower properties is unverified.

## Outstanding work

- Capture any remaining SV-DefaultMapping rows below selectedTemplate and both Set Values elements' conditional properties.
- Inspect Material Type and both Outbound Channel radio properties, including stored values and conditions.
- CNCGetCaseInfo still needs readable source-to-output mapping rows or export.
- IP-GETCaseDetails still needs OmniScript-side input/response mapping.
- Preview checks are deferred at the user's request; no runtime validation claim should be made.

## Source evidence

Initial expression: IMG_5D08EC0C-10B2-4E36-8E54-7B9AD122309D.jpeg and IMG_AE75329B-337B-4591-B4CA-8AE63CC78B8B.jpeg.
Selection step: IMG_AC4A7924-E78B-4828-AF20-844420F5B8A4.jpeg.
Default values: IMG_F036D6B1-C5BC-4CA7-B7CC-E1606F0FF972.jpeg through IMG_F8053075-7EC9-4453-9604-42B481182A05.jpeg.
