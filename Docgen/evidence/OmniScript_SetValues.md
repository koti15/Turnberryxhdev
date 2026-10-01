# OmniScript initial and default values

Confirmed from screenshots supplied 2026-10-01. These are OmniScript Set Values configurations, not CNCGetCaseInfo Output mappings. No org changes or runnable metadata were created from this note.

## SV-InitialMapping

Name and field label: SV-InitialMapping.
Visible value: isLoggedInUserSameAsCaseOwner.
Expression: `IF(%caseOwnerId% = %loggedInUserId%, true, false)`.

The expression compares caseOwnerId and loggedInUserId. Its downstream use and behavior with missing values are not verified. MSG_CaseOwnerError condition evidence is now captured in the canonical specification; its content and enforcement behavior remain unverified.

## MaterialAndCommunicationChannel

Visible layout, choices and condition evidence are maintained once in [the canonical specification](../spec/send-communication.partial.json), under stepElements → MaterialAndCommunicationChannel. Detailed control properties and exact exported conditions remain unverified.

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

- Verify full SV-DefaultMapping list coverage and both Set Values elements' conditional properties.
- Inspect Material Type and both Outbound Channel radio properties, including stored values and conditions.
- CNCGetCaseInfo still needs readable source-to-output mapping rows or export.
- IP-GETCaseDetails still needs OmniScript-side input/response mapping.
- Preview checks are deferred at the user's request; no runtime validation claim should be made.

## Source evidence

Initial expression: IMG_5D08EC0C-10B2-4E36-8E54-7B9AD122309D.jpeg and IMG_AE75329B-337B-4591-B4CA-8AE63CC78B8B.jpeg.
Selection step: IMG_AC4A7924-E78B-4828-AF20-844420F5B8A4.jpeg.
Default values: IMG_F036D6B1-C5BC-4CA7-B7CC-E1606F0FF972.jpeg through IMG_F8053075-7EC9-4453-9604-42B481182A05.jpeg.

## Additional default values captured 2026-10-01

| Value name | Displayed value / expression | Verification |
| --- | --- | --- |
| selectedEntity | `=null` | Summary only; expression checkbox not inspected |
| preSelectedLetterTemplate | `=null` | Summary only; expression checkbox not inspected |
| preSelectedCaseEntity | `=null` | Summary only; expression checkbox not inspected |
| preSelectedForms | `=null` | Summary only; expression checkbox not inspected |
| addresseeCommName | `=null` | Text element; summary only |
| mailingAddress | `=null` | Text element; summary only |
| isFormshasAttachments | `true` | Summary only; mode and runtime type unverified |
| isPOD | `IF(%MaterialType% = "POD Documents", true, false)` | Use Expression checked in editor |
| hasMaximumPOD | `false` | Summary only; mode and runtime type unverified |
| isLetterReviewRequired | `false` | Summary only; mode and runtime type unverified |
| isSubscription | `IF(%isAMMrSubscription% = "Yes", true, false)` | Use Expression checked in editor; input token casing to confirm against export |

An unnamed cropped row is excluded. These are assignments; downstream behavior is not yet captured. Conditional View is collapsed. The screenshot reaches the end of this panel, but complete list coverage across earlier screenshots remains unverified.

Sources: IMG_7DFCA1A4-7C55-46C3-B654-362011E52892.jpeg, IMG_47BA71CB-70C1-4B37-8C9F-41946A519535.jpeg, IMG_2621C783-D206-4B51-9D9F-AA7C9152FBA2.jpeg, IMG_618FD0B5-B06D-4F47-B8F7-906CAA0CC8CA.jpeg, IMG_301BEC87-F5B9-4FC0-AE52-A5FDEE7C24A3.jpeg.
