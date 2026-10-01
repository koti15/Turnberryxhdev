# Send Communication: exact reconstruction handoff

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
