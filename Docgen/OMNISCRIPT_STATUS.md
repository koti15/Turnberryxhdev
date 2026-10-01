# OmniScript elements and work status

Updated: 2026-10-01. Scope: Send Communication, observed English version 43.

## Status meaning

- Saved: the stated evidence is committed to Git.
- Partial: some configuration is saved; specified details remain pending.
- Pending: required configuration has not been captured.
- Deferred: user chose to leave Preview for later.

Saved evidence does not mean the element has been created in Salesforce. Implementation, activation and deployment are pending for every component. No runnable OmniScript export is committed. This is the captured inventory, not a claim that the full designer tree or execution order is complete.

## Captured OmniScript elements

| Element | Type / scope | Capture status | Saved evidence | Pending |
| --- | --- | --- | --- | --- |
| IP-GETCaseDetails | Integration Procedure Action | Partial | CNC_GetCaseInformation; Default invoke mode | OmniScript-side input/response mappings, conditions and remaining properties |
| SV-InitialMapping | Set Values | Partial | isLoggedInUserSameAsCaseOwner expression | Full list coverage, conditions and downstream validation |
| MaterialAndCommunicationChannel | Step | Partial | Title, visible material choices and two channel controls | Full child tree, stored options, defaults, required settings and conditions |
| MaterialType | Selection input referenced by expressions | Partial | Visible choices; POD Documents literal in expressions | Exact radio properties; confirm label-to-value mapping |
| OutboundChannel | Selection input referenced by expressions | Partial | Email/Print display; used in isPrint/isEmail | Exact properties, options, default and conditions |
| OutboundChannel2 | Selection input referenced by expressions | Partial | Email/Print display; used in isPrint | Exact properties, options, default and conditions |
| MSG_CaseOwnerError | Visible message element | Pending | Name recorded | Type/properties, message text, visibility condition and navigation effect |
| SV-DefaultMapping | Set Values | Partial | 16 assignments below | Full list coverage, conditions, summary-only modes/types and subscription input casing |

The parent placement and exact ordering of children require the complete designer tree/export.

## SV-InitialMapping values

| Value | Capture status | Saved expression | Pending |
| --- | --- | --- | --- |
| isLoggedInUserSameAsCaseOwner | Saved | `IF(%caseOwnerId% = %loggedInUserId%, true, false)` | Conditions and downstream use |

## SV-DefaultMapping values

| Value | Capture status | Saved expression / displayed value | Pending |
| --- | --- | --- | --- |
| isPrint | Saved | `IF(%OutboundChannel% = "Print" \|\| %OutboundChannel2% = "Print", true, false)` | Conditional properties and downstream use |
| isEmail | Saved | `IF(%OutboundChannel% = "Email", true, false)` | Conditional properties and downstream use |
| isAsyncLetterGeneration | Saved | `IF(%MaterialType% = "POD Documents", false, true)` | Conditional properties and downstream use |
| isDocumentUploaded | Saved | `false` | Runtime value type |
| selectedTemplate | Saved | `null` | Conditional properties and downstream use |
| selectedEntity | Saved | `=null` | Expression/literal mode and runtime type |
| preSelectedLetterTemplate | Saved | `=null` | Expression/literal mode and runtime type |
| preSelectedCaseEntity | Saved | `=null` | Expression/literal mode and runtime type |
| preSelectedForms | Saved | `=null` | Expression/literal mode and runtime type |
| addresseeCommName | Saved | `=null` | Expression/literal mode and runtime type |
| mailingAddress | Saved | `=null` | Expression/literal mode and runtime type |
| isFormshasAttachments | Saved | `true` | Expression/literal mode and runtime type |
| hasMaximumPOD | Saved | `false` | Expression/literal mode and runtime type |
| isLetterReviewRequired | Saved | `false` | Expression/literal mode and runtime type |
| isPOD | Saved | `IF(%MaterialType% = "POD Documents", true, false)` | Conditional properties and downstream use |
| isSubscription | Saved | `IF(%isAMMrSubscription% = "Yes", true, false)` | Confirm exact casing against export |

## IP and DR dependencies

| Component / section | Capture status | Saved | Pending |
| --- | --- | --- | --- |
| CNC_GetCaseInformation identity | Saved | Name, CNC/GetCaseInformation, observed v3 active | Export/runtime format and target org dependencies |
| DR-E-GetCaseInfo | Partial | CNCGetCaseInfo, caseId input, response node response; visible transformation/cache settings | Remaining execution/failure properties and full procedure settings |
| CNCGetCaseInfo Extract | Partial | Case and User extraction paths; Case Id = caseId | Exact User filter expression quoting |
| CNCGetCaseInfo Formulas | Partial | 13 formula results and readable behavior | Exact expression text where cropped/unclear |
| CNCGetCaseInfo Output | Partial | 32 source-to-output paths | Blueshield key spelling; row detail types/defaults/required settings |
| CNCGetCaseInfo Options | Saved | Visible TTL, FLS, cache selection and null settings | Access/runtime validation |
| Preview validation | Deferred | Prior observation recorded | No further Preview requested at present |

## Later scope awaiting configuration

These are pending discovery areas already recorded in README. They are not invented element names or verified execution order.

| Scope / recorded name | Status | Needed |
| --- | --- | --- |
| Forms, POD and letter selection | Pending | Full elements, properties, choices and conditions |
| Entity and address selection | Pending | Elements, mappings and validations |
| IP-GETAPITokenData and patient demographics | Pending | Action properties, IP definition and data sources |
| Paragraph selection and default token mapping | Pending | Elements, Data Mapper/Apex references and token configuration |
| AdditionalInformation and Remote Actions | Pending | Elements, component properties and token assembly |
| Generation and review | Pending | Actual IP/class/method, template, payload and sync/async conditions |
| File storage, delivery and confirmation | Pending | Actual persistence/delivery actions, Case links and errors |

## Implementation and deployment

| Work | Status | Needed |
| --- | --- | --- |
| Obtain faithful deployable source | Pending | Actual export/retrieval and confirmed runtime format |
| Create/recreate OmniScript, IP and DR | Pending | Resolve configuration gaps and commit executable source |
| Case launch wiring | Pending | Launcher identity and exact record context mapping |
| Persistence behavior | Pending | Identify which later actions save records/files; no DML inferred from Set Values |
| Runtime validation | Deferred for Preview | Follow user instruction; document validation when requested |
| Deployment | Pending | Requested target, authentication, dependencies and verified deployable source |

## Update rule

After each screenshot/export batch, update the relevant row and evidence file. Mark capture complete only when the entire element configuration is verified. Record implementation source paths and validation results separately before changing implementation/deployment status.

Evidence: [IP/DR](evidence/CNC_GetCaseInformation.md), [Set Values](evidence/OmniScript_SetValues.md), [partial specification](spec/send-communication.partial.json).
