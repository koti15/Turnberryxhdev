# Send Communication: single-file working record

Updated 2026-10-01. This file contains the reconstruction instructions, completed capture work, pending gaps and all structured configuration recorded so far. Codex can start and continue from this file.

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

## Capture progress versus implementation

| Scope | Completed capture | Pending work |
| --- | --- | --- |
| Overall structure | All 52 visible outer element names/types/order; reference identity | Remaining expanded children and detailed properties |
| Outer elements 1–5 | Captured action/value/layout evidence, with explicit gaps | Complete properties, exact exports and validation |
| IP-GetForms and dependencies | Action settings; four IP elements; mapper extracts, formulas/output evidence and response settings | Remaining settings, filter grouping, source dependencies and exact exports |
| Step1 | Visible child layout, basic Step settings and two LWC input panels | Remaining Step/button settings, child identities/conditions, CustomLWC4 lower properties and LWC source |
| Outer elements 8–52 | Tree inventory; isolated RA-updateLinks condition evidence | Detailed action/Step configuration and dependencies |
| Salesforce implementation | No implementation completion established by this record | Verify actual source, draft build, Case launch wiring and validation |
| Activation/deployment | None recorded | Only after separately requested with a known target |

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
Do not activate, deploy, generate/send real documents or email, or upload files without the relevant user instruction and known target.

## Current stopping point and next evidence

The captured sequence reaches Step1 and the two visible custom LWC property panels. Additional MaterialAndCommunicationChannel tooltips were supplied afterward and merged into its existing record.
Next Step1 capture: CustomLWC4 lower properties and Conditional View, then CustomLWC2 Conditional View. Remaining Step/button and messaging/heading properties are also missing.
Other earlier gaps remain tracked in canonical complete=false, missing, verification and null fields. Resolve these before claiming a same-to-same runnable copy.
Full exports of the reference OmniScript, referenced IPs, Data Mappers and custom component source are the most reliable route to a complete copy.

## Prompt to give Codex

Read Docgen/AGENTS.md and Docgen/CODEX_HANDOFF.md first. Use Docgen/spec/send-communication.partial.json as the sole canonical captured configuration and Docgen/OMNISCRIPT_TREE.md for outer order. Audit your existing changes against these files, then reconstruct the verified portion one-to-one in the documented order on a working branch. Preserve exact names, tokens, expressions, mappings and parent scope. Do not guess missing properties, duplicate components, redesign the flow, overwrite the reference, or mark notes as a completed build. Report the mismatch audit and exact blockers. Preview remains deferred; do not activate or deploy.

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

| Property | Captured value |
| --- | --- |
| name | CNCGetCaseInfo |
| interfaceType | Extract |
| inputType | JSON |
| outputType | JSON |
| formulaCountObserved | 13 |
| evidencePath | Docgen/evidence/CNC_GetCaseInformation.md |
| complete | false |
| formulaVerification | Formula 4 concatenation separator and query-string quoting require export/close-up. Preserve Account.Record_Type__c. Runtime validation pending. |

##### dataMappers[0] · CNCGetCaseInfo.extractSteps

###### dataMappers[0] · CNCGetCaseInfo.extractSteps[0]

| Property | Captured value |
| --- | --- |
| object | Case |
| outputPath | caseInfo |

**dataMappers[0] · CNCGetCaseInfo.extractSteps[0].filter**

| Property | Captured value |
| --- | --- |
| field | Id |
| operator | = |
| input | caseId |

###### dataMappers[0] · CNCGetCaseInfo.extractSteps[1]

| Property | Captured value |
| --- | --- |
| object | User |
| outputPath | loggedInUserInfo |
| filterExpressionStatus | UserId expression observed; exact quoting needs verification |

##### dataMappers[0] · CNCGetCaseInfo.outputMappings

| extractJsonPath | outputJsonPath | verification |
| --- | --- | --- |
| caseInfo:Account.Blue_Shield_Id__c | providerBlueshildId | Output spelling appears providerBlueshildId in mapping screenshot; earlier schema transcription was providerBlueshieldId. Confirm exact spelling from export or close-up before executable build. |
| caseInfo:Account.Member_Id__pc | localMemberId | — not recorded |
| caseInfo:Account.NPI__c | providerNPI | — not recorded |
| caseInfo:Account.PersonBirthdate | memberDOB | — not recorded |
| caseInfo:Account.PersonEmail | memberEmail | — not recorded |
| caseInfo:Account.PersonMailingCity | localCity | — not recorded |
| caseInfo:Account.PersonMailingCountry | localCountry | — not recorded |
| caseInfo:Account.PersonMailingPostalCode | localPostalCode | — not recorded |
| caseInfo:Account.PersonMailingState | localState | — not recorded |
| caseInfo:Account.PersonMailingStreet | localStreet | — not recorded |
| caseInfo:Account.Primary_Address__pc | localFullAddress | — not recorded |
| caseInfo:Account.Subscriber_Id__pc | subscriberId | — not recorded |
| caseInfo:Account.UMPI__c | providerUMPI | — not recorded |
| caseInfo:CaseNumber | caseNumber | — not recorded |
| caseInfo:Description | caseDescription | — not recorded |
| caseInfo:Id | Id | — not recorded |
| caseInfo:Owner.Name | ownerName | — not recorded |
| caseInfo:OwnerId | caseOwnerId | — not recorded |
| caseInfo:relationship | caseType | — not recorded |
| caseInfo:Source_System__c | sourceSystem | — not recorded |
| createdDate | createdDate | — not recorded |
| currentDate | currentDate | — not recorded |
| localEnterprisePersonId | localEnterprisePersonId | — not recorded |
| localMemberFirstName | localMemberFirstName | — not recorded |
| localMemberLastName | localMemberLastName | — not recorded |
| localMemberName | localMemberName | — not recorded |
| loggedInUserInfo:Id | loggedInUserId | — not recorded |
| receivedDate | receivedDate | — not recorded |
| relatedEntities | relatedEntities | — not recorded |
| relatedEntityCount | relatedEntityCount | — not recorded |
| serviceRepName | serviceRepName | — not recorded |
| todayDate | todayDate | — not recorded |

##### dataMappers[0] · CNCGetCaseInfo.visibleOutputSchemaKeys

1. localMemberFirstName
2. memberDOB
3. providerBlueshieldId
4. memberEmail
5. localPostalCode
6. currentDate
7. relatedEntityCount
8. localStreet
9. loggedInUserId
10. localCity
11. caseDescription
12. ownerName
13. sourceSystem
14. caseNumber
15. todayDate
16. providerNPI
17. localFullAddress
18. localMemberName
19. createdDate
20. localState
21. localEnterprisePersonId
22. providerUMPI
23. localCountry
24. caseType
25. subscriberId
26. localMemberId
27. caseOwnerId
28. Id
29. localMemberLastName
30. serviceRepName
31. relatedEntities
32. receivedDate

##### dataMappers[0] · CNCGetCaseInfo.options

| Property | Captured value |
| --- | --- |
| timeToLiveMinutes | 0 |
| checkFieldLevelSecurity | false |
| platformCacheType | `null` — unresolved/unset; see context |
| overwriteTargetForAllNullInputs | false |

##### dataMappers[0] · CNCGetCaseInfo.previewEvidence

| Property | Captured value |
| --- | --- |
| inputKey | caseId |
| caseQueryResultCount | 0 |
| successfulCaseRetrievalVerified | false |
| personalValuesOmitted | true |

##### dataMappers[0] · CNCGetCaseInfo.outputMappingCoverage

| Property | Captured value |
| --- | --- |
| visibleRows | 32 |
| allPreviouslyCapturedKeysRepresentedExceptSpellingDiscrepancy | true |
| rowDetailPropertiesVerified | false |

###### dataMappers[0] · CNCGetCaseInfo.outputMappingCoverage.spellingDiscrepancies

1. providerBlueshildId versus providerBlueshieldId

##### dataMappers[0] · CNCGetCaseInfo.formulaEvidence

| order | resultPath | readableBehavior | expression | verification |
| --- | --- | --- | --- | --- |
| 1 | relatedEntityCount | COUNTQUERY against Case_Sub_Entity__c filtered by Case__c using caseId | `null` — unresolved/unset; see context | Behavior transcribed from screenshots; exact executable expression not captured. |
| 2 | currentDate | FORMATDATETIME of NOW(), format MM/dd/yyyy | `null` — unresolved/unset; see context | Behavior transcribed from screenshots; exact executable expression not captured. |
| 3 | todayDate | FORMATDATETIME of NOW(), format MMMM dd, yyyy | `null` — unresolved/unset; see context | Behavior transcribed from screenshots; exact executable expression not captured. |
| 4 | serviceRepName | If loggedInUserInfo:FirstName is blank, use the first character of LastName; otherwise concatenate FirstName and the first character of LastName | `null` — unresolved/unset; see context | Behavior transcribed from screenshots; exact executable expression not captured. |
| 5 | caseInfo:relationship | Account.Record_Type__c Member or Unlisted Member maps to Member; otherwise Provider | `null` — unresolved/unset; see context | Behavior transcribed from screenshots; exact executable expression not captured. |
| 6 | localMemberName | For Member/Unlisted Member use caseInfo:Account.Name; otherwise caseInfo:Contact.Name | `null` — unresolved/unset; see context | Behavior transcribed from screenshots; exact executable expression not captured. |
| 7 | localMemberFirstName | For Member/Unlisted Member use caseInfo:Account.FirstName; otherwise empty string | `null` — unresolved/unset; see context | Behavior transcribed from screenshots; exact executable expression not captured. |
| 8 | localMemberLastName | For Member/Unlisted Member use caseInfo:Account.LastName; otherwise empty string | `null` — unresolved/unset; see context | Behavior transcribed from screenshots; exact executable expression not captured. |
| 9 | localEnterprisePersonId | For Member/Unlisted Member use caseInfo:Account.Enterprise_Person_Id__c; otherwise empty string | `null` — unresolved/unset; see context | Behavior transcribed from screenshots; exact executable expression not captured. |
| 10 | createdDate | FORMATDATETIME of caseInfo:CreatedDate, format MM/dd/yyyy | `null` — unresolved/unset; see context | Behavior transcribed from screenshots; exact executable expression not captured. |
| 11 | receivedDate | FORMATDATETIME of caseInfo:Received_Date__c, format MM/dd/yyyy | `null` — unresolved/unset; see context | Behavior transcribed from screenshots; exact executable expression not captured. |
| 12 | relatedEntitiesList | QUERY selects Entity_Type__c from Case_Sub_Entity__c filtered by Case__c using caseId | `null` — unresolved/unset; see context | Behavior transcribed from screenshots; exact executable expression not captured. |
| 13 | relatedEntities | TOSTRING(relatedEntitiesList) | `null` — unresolved/unset; see context | Behavior transcribed from screenshots; exact executable expression not captured. |

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

