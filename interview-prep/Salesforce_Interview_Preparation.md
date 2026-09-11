# Salesforce Senior Developer Interview Preparation

## Purpose
This is a working interview-preparation guide. We will build it topic by topic and question by question. Each question will focus on a natural spoken answer, likely follow-ups, technical understanding, and verified project experience where available.

## Topics
1. Apex and Trigger Architecture
2. Salesforce Security and Sharing
3. Integrations: REST, Named Credentials, OAuth, MuleSoft
4. Async Apex: Queueable, Future, Batch, Scheduled Apex
5. Platform Events and Event-Driven Architecture
6. LWC Architecture and Communication
7. Debugging, Governor Limits, Production Support, and Testing
8. System Design and Architecture Trade-offs

---

# Topic 1: Apex and Trigger Architecture

## Q1. What is a trigger framework in Salesforce?

### Spoken interview answer
A trigger framework is a structured way of handling trigger logic instead of putting all the business logic directly inside the trigger. The trigger stays very small and passes the execution to handler classes. Then we separate logic for events like before insert, before update, after insert, and after update. It also helps us handle things like recursion and keeps the code easier to test and maintain.

### Understand it simply
A trigger is attached to an object and fires when records are inserted, updated, deleted, or undeleted.

A trigger framework is the architecture around that trigger. It decides how the trigger logic is organized and executed.

Think of it as:

`Object event -> Trigger -> Dispatcher/Framework -> Handler -> Business logic`

### Verified project example
In the BCBS Minnesota project, the trigger framework uses `ITriggerHandler`, `BaseTriggerHandler`, and `TriggerDispatcher`. The dispatcher handles execution and recursion control, while object-specific logic is kept in handler classes such as `CaseTriggerHandler`.

This means the Case trigger itself does not need to contain all of the Case business logic.

### Likely follow-up questions
- Why do we need a trigger framework?
- Why not put the logic directly in the trigger?
- Can we have multiple triggers on the same object?
- What is a trigger handler?
- How do you prevent trigger recursion?
- What is the difference between before and after triggers?
- When would you use before insert versus after insert?
- How do you bulkify a trigger?
- What are `Trigger.new` and `Trigger.oldMap`?
- How would you test a trigger framework?

### Key point to remember
**Trigger = Salesforce event entry point.**

**Trigger framework = organized architecture used to control and separate the logic that runs from the trigger.**

---

## Next Question
Q2. Why do we need a trigger framework instead of writing all the logic directly inside the trigger?

### Q2. Why keep business logic outside triggers?

**Spoken interview answer**

I keep triggers thin because business logic usually grows over time. The trigger should mainly route the execution, while handler or service classes contain the actual business logic. That makes the code easier to test, reuse, maintain, and extend without turning the trigger into one large block of code.

**Simple understanding**

A trigger is the entry point for an object event. As requirements grow, putting every rule directly in the trigger makes the code difficult to maintain. Moving the logic into handler and service classes separates responsibilities and makes future changes safer.

**Important clarification**

Keeping logic outside the trigger does not mean the trigger has no code at all. The trigger still declares the contexts it supports, such as before insert or after update, and delegates the work to the framework or handler.

**Verified project connection**

In the BCBS Minnesota Case trigger framework, the implementation separates the trigger infrastructure from Case-specific logic using ITriggerHandler, BaseTriggerHandler, TriggerDispatcher, and CaseTriggerHandler. The dispatcher also handles framework concerns such as recursion control and muting, while the Case handler contains Case-specific behavior.

**Likely follow-up questions**

- What should remain inside the trigger?
- What is the difference between a trigger handler and a service class?
- Why is one trigger per object recommended?
- How do you prevent trigger recursion?
- How do you handle before versus after trigger logic?
- How do you bulkify a trigger framework?
- How would you test the trigger framework?

### Q3. Tell me about your Apex trigger experience and a recent trigger framework you implemented.

**Spoken interview answer**

I have worked with Apex triggers throughout my Salesforce experience, mainly for business rules that need to run during record insert or update and are better handled in Apex than declarative automation. I normally follow one trigger per object and keep the trigger thin, with the actual processing in handler or service classes. In my recent Health Cloud project, I implemented that pattern for Case using a common trigger framework. The Case trigger delegates to a dispatcher, the dispatcher controls recursion and supports muting, and then it routes to the Case-specific handler based on the trigger context. We designed the processing to work in bulk, keep SOQL and DML out of loops, and make the framework easy to extend as new Case rules are added.

**Why this is a strong real-world answer**

This combines long-term trigger experience with a recent verified implementation. It also follows Salesforce engineering guidance: use one trigger per object, keep business logic outside the trigger, use context-specific handlers, prevent recursion, support bypass/muting when appropriate, and bulkify the processing.

**Recent project flow to understand**

`Case DML -> Case Trigger -> TriggerDispatcher -> recursion/mute checks -> CaseTriggerHandler -> context-specific business logic -> database transaction completes`

1. A Case insert or update starts the transaction.
2. The Case trigger is the entry point and stays small.
3. It delegates execution to the common `TriggerDispatcher`.
4. The framework checks recursion so the same automation does not repeatedly execute.
5. It checks the mute/bypass mechanism before running the business rule.
6. The dispatcher invokes `CaseTriggerHandler` for the correct trigger context.
7. Before-context logic can change fields on `Trigger.new` without doing another update on those same records.
8. Update logic can compare old and new values and run only when the relevant field actually changed.
9. Processing is designed for collections rather than one Case at a time, with SOQL/DML outside loops.
10. As requirements grow, additional business logic can be separated into helper/service classes instead of making the trigger or handler large.

**What NOT to claim**

Do not invent a Case business process just to make the framework sound more impressive. If the interviewer asks exactly which Case rules were implemented, answer from the verified project material. The strength of this example is the framework design, recursion/muting control, context separation, bulkification, and maintainability.

**Likely follow-up questions**

- Why one trigger per object?
- Why keep the trigger thin?
- What is the responsibility of the dispatcher versus the handler?
- How do you prevent recursion?
- How does a trigger bypass or mute mechanism work?
- Why would you use a custom setting or custom metadata for bypass control?
- How do you bulkify this framework?
- What happens if 200 Cases are updated together?
- Why should SOQL and DML stay outside loops?
- What belongs in before update versus after update?
- How do you compare old and new values?
- When would you move logic from a handler into a service class?
- How do you test recursion and bulk behavior?

**Salesforce best-practice basis**

Salesforce developer guidance recommends one trigger per object, keeping logic outside the trigger, context-specific handlers, recursion prevention, bypass controls, and bulkified processing. Those principles are the basis for the interview explanation above.

### Q4. Why do you prefer one trigger per object?

**Spoken interview answer**

I prefer one trigger per object because Salesforce does not guarantee the execution order when multiple triggers exist on the same object. With one trigger, I have a single entry point and can control the order through the handler framework. It also makes recursion handling, debugging, testing, and future changes much easier. If we have multiple business rules, I keep them in separate handler or service methods instead of creating additional triggers.

**Simple understanding**

One object can technically have multiple triggers, but that makes execution harder to control. One trigger acts as the entry point; handler and service classes organize the individual business rules.

**Important follow-ups to prepare**

- Can one Salesforce object technically have multiple triggers?
- How do you control execution order between multiple business rules?
- Trigger handler versus service class?
- How do you prevent recursion?
- What happens when 200 records are processed?

### Q5. What logic did you actually have inside the recent Case trigger framework?

**Spoken interview answer**

In the recent Case framework, the Case trigger itself only delegated execution. The Case-specific rules were handled in `CaseTriggerHandler`. One example was setting default Case values during insert when they were missing. For update processing, we compared the old and new Case values and executed the rule only when the relevant field changed, such as Status. Framework-level concerns like recursion control and muting were handled by the dispatcher and mute service, so those concerns were not duplicated inside each Case rule.

**Verified project anchors**

- `CaseTriggerHandler`
- Default Subject behavior
- Status change handling for Description
- `TriggerDispatcher`
- Recursion guard
- `MuteService`
- `BCBSMN_Ignore_Rules__c`

**Important rule**

If asked for a business rule beyond these verified examples, do not invent one.

### Q6. Trigger handler versus service class — what is the difference?

**Spoken interview answer**

A trigger handler is responsible for trigger context. It knows whether I am in before insert, after update, and so on, and decides which operation should run. A service class contains reusable business logic that should not depend heavily on the trigger context. If the same logic may be called from a trigger, an API, Queueable Apex, or another service, I prefer putting that logic in a service class instead of tying it directly to the trigger handler.

**Simple rule**

`Trigger -> Handler -> Service`

The handler understands **when** the logic should run.

The service understands **what** the business operation should do.

### Q7. Before trigger versus after trigger — when do you use each?

**Spoken interview answer**

I use a before trigger when I need to validate or change fields on the same records before Salesforce saves them. Because the records are already in `Trigger.new`, I can update their field values directly without doing another DML statement. I use an after trigger when I need the saved record ID or when I need to create or update related records based on the final record values.

**Important exception**

An after trigger does **not** mean the Salesforce transaction has already permanently committed. It is an after-save stage within the same transaction. If a later operation fails and the transaction rolls back, those changes can also roll back.

### Q8. What are Trigger.new, Trigger.old, Trigger.newMap, and Trigger.oldMap?

**Spoken interview answer**

`Trigger.new` contains the new versions of the records, and `Trigger.old` contains their previous versions when the context supports it. The map versions give me the records by ID, which is very useful during update and delete processing. For example, during an update I commonly compare a value from `Trigger.oldMap` with the corresponding value in `Trigger.newMap` and execute logic only when that field actually changed.

### Q9. How do you identify whether a field actually changed?

**Spoken interview answer**

In an update trigger, I compare the new record against the old record by ID. For example, I can compare `newCase.Status` against `oldCase.Status`. I normally collect only the records where the relevant value changed and then process that collection in bulk. That avoids running expensive logic every time a record is updated for an unrelated field.

### Q10. What does bulkification mean?

**Spoken interview answer**

Bulkification means writing the code for a collection of records instead of assuming only one record enters the transaction. A Salesforce trigger can receive many records at once, so I avoid SOQL or DML inside loops. I collect IDs into sets, query all required records in one or a small number of queries, organize the data in maps, perform the business processing in memory, and then do bulk DML on collections.

### Q11. What happens if 200 records enter your trigger?

**Spoken interview answer**

The same trigger invocation can receive up to 200 records in a normal trigger batch, so the code has to process the entire collection. I never write something like query one related record for every Case. I collect all of the required IDs first, query the related data together, map it by ID, process all Cases, and then perform bulk DML. I also test the code with bulk data rather than only one record so governor-limit problems appear during testing instead of production.

### Q12. What Salesforce governor limits are especially important in triggers?

**Spoken interview answer**

The limits I watch most closely in trigger processing are SOQL queries, DML statements, CPU time, heap, and query/DML row counts. The common synchronous limits people immediately look for are 100 SOQL queries and 150 DML statements per transaction, but I do not design close to those numbers. The goal is to use a small predictable number of queries and DML statements regardless of whether the transaction contains one record or a full trigger batch.

### Q13. How do you prevent trigger recursion?

**Spoken interview answer**

First, I avoid unnecessary DML that causes the trigger to fire again. Then I use the framework's recursion control so the same business operation is not repeatedly executed during the transaction. In more complex frameworks, I prefer tracking the operation or processed record IDs instead of depending only on one static Boolean, because a simple Boolean can incorrectly stop valid processing when records arrive in multiple groups within the same transaction.

**Recent project connection**

The BCBS trigger framework has recursion control in the `TriggerDispatcher`.

### Q14. Why can a static Boolean be a bad recursion solution?

**Spoken interview answer**

A static Boolean works for a very simple one-time operation, but it is too broad for many real transactions. Once it becomes false, it can prevent valid trigger processing later in the same transaction, especially when automation causes multiple DML operations or the records are processed in separate groups. I prefer tracking the operation and, when appropriate, the record IDs that have already been processed.

### Q15. What is your trigger mute/bypass pattern?

**Spoken interview answer**

A bypass mechanism lets us intentionally skip specific automation for an approved context, such as controlled data processing or a support scenario. In the recent framework, muting was centralized through the dispatcher and `MuteService`, using the BCBSMN ignore-rules setting. I keep the bypass decision at the framework boundary rather than spreading if-statements throughout business logic. It also has to be tightly controlled so normal users cannot silently bypass required business rules.

### Q16. Custom Setting versus Custom Metadata for trigger configuration?

**Spoken interview answer**

I use Custom Metadata when the configuration is part of application metadata and should move through deployments with the solution. A hierarchy Custom Setting can be useful when the value needs organization-, profile-, or user-level overrides at runtime. For something like a user/profile-specific automation bypass, a hierarchy setting can be useful. For stable framework configuration that belongs with the release, Custom Metadata is generally a better fit.

### Q17. How do you control the order of multiple business rules?

**Spoken interview answer**

I keep one trigger as the object entry point and control the sequence inside the handler/framework instead of relying on multiple triggers. If rule B depends on rule A, I make that ordering explicit in the handler or service orchestration. I also try to reduce artificial ordering dependencies because tightly coupled rules become hard to change and test.

### Q18. What is Salesforce order of execution and why does it matter?

**Spoken interview answer**

Order of execution is the sequence Salesforce follows when a record is saved—validation and before-save processing, before triggers, save, after triggers, additional automation, and later transaction stages. It matters because multiple kinds of automation can touch the same record. When I debug recursion or unexpected field values, I look at the complete transaction, not just the Apex trigger, because Flow, validation, workflow-like automation, rollups, and related updates can affect the outcome.

**Interview caution**

Do not try to recite every Salesforce order-of-execution step unless the interviewer specifically asks for the exact sequence. Explain the important stages accurately first.

### Q19. How do you test a trigger framework?

**Spoken interview answer**

I test the business behavior rather than only chasing code coverage. I create the required test data, perform the actual insert or update that should fire the trigger, and assert the resulting record state. I include positive and negative conditions, bulk data, old-versus-new field changes, recursion-sensitive scenarios, and bypass behavior when the framework supports bypassing. I also verify that unrelated updates do not execute the rule unnecessarily.

**Recent project anchors**

The project includes `TestDataFactory` and `TriggerFrameworkTest` as part of the trigger-framework testing approach.

### Q20. How do you make trigger code easier to test?

**Spoken interview answer**

I separate trigger context from business logic. The trigger handler translates `Trigger.new`, `Trigger.oldMap`, and the execution context into normal collections and then calls service methods. That lets me test business logic directly when appropriate, while still having end-to-end tests that perform real DML and prove the trigger wiring works.

### Q21. When would you use asynchronous Apex from a trigger?

**Spoken interview answer**

I use asynchronous processing when the work should not extend the user's save transaction—for example, an external callout or heavy processing that can safely happen after the record operation. Queueable Apex is usually my first choice because it supports structured state, job IDs, chaining, and callouts when the class implements `Database.AllowsCallouts`. But I only move work async if the business process can tolerate the separate transaction and eventual result.

### Q22. Queueable versus Future from a trigger?

**Spoken interview answer**

For new development, I usually prefer Queueable. It supports more complex inputs, gives me a job ID, is easier to structure and monitor, and supports chaining. Future methods can still work for simple legacy asynchronous operations, but Queueable generally gives me better control for production integration and processing patterns.

### Q23. Can you perform a callout directly from a trigger?

**Spoken interview answer**

I do not make the external callout as part of the trigger's normal DML transaction. I separate it using an asynchronous boundary such as Queueable Apex with `Database.AllowsCallouts`, or an event-driven design when the architecture needs stronger decoupling. I pass the minimum business identifiers or required data and then handle integration status, retry, and errors in that separate process.

### Q24. How do you update related records safely from a trigger?

**Spoken interview answer**

I collect all related IDs from the trigger records, query those related records in bulk, use maps to connect them back to the source records, and add only the records that really require a change to a DML collection. Then I perform one bulk insert or update. I also consider recursion because updating a related object can cause automation that comes back to the original object.

### Q25. How do you handle partial DML failures?

**Spoken interview answer**

It depends on the business requirement. Normal DML like `update records` is all-or-none for that statement. When the requirement explicitly allows successful records to continue even if some records fail, I can use `Database.insert` or `Database.update` with `allOrNone=false` and inspect each `SaveResult`. Then I log or return the specific failures. I don't use partial success automatically because sometimes the business transaction is supposed to be atomic.

# Topic 2: Salesforce Security and Sharing

## Q1. Profile versus Permission Set versus Permission Set Group?

### Spoken interview answer
A Profile defines the user's baseline access, such as object permissions, field permissions, apps, tabs, and system permissions. A Permission Set gives additional permissions without changing the profile. A Permission Set Group lets us bundle multiple permission sets together for a job function. I normally keep profiles relatively minimal and use permission sets or permission set groups to provide role-specific access.

### Important clarification
A normal Permission Set adds access. It does not remove access the user already has.

A Muting Permission Set inside a Permission Set Group can mute permissions contributed by that group. It does not globally deny a permission that the user still receives through the profile, another permission set, or another permission set group.

## Q2. What controls record-level access in Salesforce?

### Spoken interview answer
Record-level access starts with Organization-Wide Defaults. Then Salesforce can open access through the role hierarchy, sharing rules, teams, manual sharing, and Apex managed sharing depending on the object and requirement. So two users can have exactly the same object permissions but still see different records because record-level sharing is separate from CRUD and field-level permissions.

## Q3. What does `with sharing` mean in Apex?

### Spoken interview answer
`with sharing` tells Apex to enforce the current user's record-level sharing rules for the class execution. It is about which records the user can access through sharing. It does not automatically enforce object CRUD or field-level security, so I handle those separately using appropriate platform security mechanisms.

## Q4. What does `without sharing` mean?

### Spoken interview answer
`without sharing` means the class does not enforce the current user's record-sharing restrictions during that Apex execution. I only use it for a deliberate system-level operation where bypassing record sharing is part of the approved design. It does not mean the code can ignore every Salesforce security control. CRUD/FLS and authorization to invoke the operation still need to be designed separately.

## Q5. Give a real example where you used a controlled `without sharing` pattern.

### Spoken interview answer
In my current Health Cloud project, MEA users were intentionally not given broad Account update access. For a Clone Case path, the correct design was to reuse the existing member Account and remove an unnecessary Account upsert. But for the Unlisted Host Member path, the business genuinely needed to create or upsert an Account when no member existed.

Instead of giving the MEA user general Account edit access, we designed a narrow Apex gateway for that specific operation. The gateway runs `without sharing` for the controlled Account DML, documents why the sharing bypass is required, and is only invoked from the required OmniStudio path. Access to the Apex class is controlled through permissions, while the user's normal Account access remains restricted.

### Why this is strong
This shows that `without sharing` is not being used as an easy way around security. The first choice was to remove unnecessary DML. Elevated execution is used only for the path that genuinely requires it.

# Topic 3: Integrations — Apex, OmniStudio, MuleSoft, Authentication, Error Handling

## Q1. Describe your Salesforce integration experience.

### Spoken interview answer
I have worked with REST and SOAP integrations, MuleSoft, Named Credentials, OAuth-based authentication, OmniStudio Integration Procedures, and Apex callout frameworks. In PG&E, Salesforce was integrated with MuleSoft and CC&B for utility service processes. We used OmniScripts and LWCs on the UI, Integration Procedures for orchestration, DataRaptors for Salesforce data and transformation, and Apex Remote Actions when custom logic or a reusable callout handler was required. We also had centralized logging and retry handling for outbound failures.

In Health Cloud, I work more with OmniStudio-based integrations and data transformation between OmniScripts, FlexCards, Integration Procedures, and backend APIs.

## Q2. Explain the PG&E OmniStudio integration architecture.

### Spoken interview answer
The common pattern was OmniScript or LWC on the front end, Integration Procedure on the server side, DataRaptor for Salesforce data extraction or transformation, and then either an HTTP Action or an Apex Remote Action for the external integration. Salesforce called MuleSoft, and MuleSoft handled the backend integration with CC&B.

So the layered flow was typically:

`OmniScript / LWC -> Integration Procedure -> DataRaptor / Apex helper -> MuleSoft -> CC&B`

Not every integration used every layer, but this was the common separation of responsibilities.

## Q3. How did you handle integration errors and retry at PG&E?

### Spoken interview answer
We had a centralized outbound retry framework instead of putting retry loops inside individual callouts. Failed integration details were logged, and a scheduled batch process picked up eligible failures based on retry configuration and next-run time. The framework used components such as `CCSP_RetryBatch` and `CCSP_RetryBatchService`, with retry behavior controlled through configuration.

The important design point is that the user transaction did not repeatedly retry a failing external system. We persisted enough information to understand the failure and retry recoverable requests separately.

## Q4. What is the responsibility of OmniScript, Integration Procedure, DataRaptor, and Apex?

### Spoken interview answer
I keep OmniScript focused on the guided user process and UI-level flow. The Integration Procedure handles server-side orchestration. DataRaptors or Data Mappers handle Salesforce data extraction, load, and transformation. Apex is used when the requirement needs custom server-side logic that is difficult or inappropriate to build declaratively, such as a reusable integration handler or specialized business processing.

The goal is not to use Apex everywhere. I use the simplest layer that cleanly owns the responsibility.

## Q5. How did your PG&E integrations support different endpoints and HTTP methods?

### Spoken interview answer
We did not hard-code every API flow separately. The integration layer could resolve web-service details based on the business functionality and then execute the appropriate HTTP operation. The project supported HTTP methods such as GET, POST, and PUT, and the callout context included things such as the endpoint, request body, authorization token, target system, source system, and content type.

That allowed us to reuse the orchestration and callout patterns while keeping endpoint-specific details outside the UI logic.

## Q6. Give a concrete Integration Procedure example from PG&E.

### Spoken interview answer
One example was the credit-check flow. The OmniScript guided the user through the credit-check process, and the Integration Procedure handled the backend interaction through MuleSoft with the external credit system. Supporting DataRaptors retrieved the Salesforce context and persisted the Salesforce-side information needed by the process. We also had separate error-processing logic for Mule responses.

The value of the Integration Procedure was that the OmniScript did not need to understand how the external API worked. It only sent the process data and consumed the structured result.

## Q7. How did you handle partial success in a multi-record integration?

### Spoken interview answer
One PG&E service-request flow could process multiple premises and service points. The external callout could return success, partial success, or complete failure. We treated those states differently. If the request had success or partial success, the OmniScript could continue to the next business step while presenting the relevant issues. If it was a complete failure, navigation was blocked.

That is important in multi-record integrations because treating one failed item as if the entire operation always failed can create a poor user experience, but allowing the process to continue blindly is also wrong. The response has to preserve item-level results.

## Q8. How do Integration Procedures work?

### Spoken interview answer
An Integration Procedure is a server-side OmniStudio orchestration. The caller sends JSON to it, and the IP executes a sequence of actions such as Data Mapper/DataRaptor operations, Set Values, transformations, Apex Remote Actions, HTTP Actions, child Integration Procedures, conditional blocks, loops, and Response Actions. At the end, it returns only the response the caller needs.

A common flow is:

`OmniScript / LWC / FlexCard -> Integration Procedure -> data/actions/integration -> Response Action -> caller`

## Q9. What kinds of actions and blocks do you commonly use in an Integration Procedure?

### Spoken interview answer
The common actions I use are Data Mapper or DataRaptor Extract/Post/Transform, Set Values, Remote Action for Apex, HTTP Action for REST integrations, Integration Procedure Action for calling another IP, and Response Action. For orchestration I use Conditional Blocks, Loop Blocks when necessary, Try-Catch patterns, and caching where the data is a good fit.

I avoid adding steps just because the platform provides them. The IP should stay small and readable.

## Q10. What are Integration Procedure best practices?

### Spoken interview answer
I keep Integration Procedures modular and focused on related operations, minimize unnecessary data calls, avoid putting expensive actions inside loops, reduce the JSON passed between steps, and return only the data the caller needs. I use caching only for data that is safe to cache and does not change frequently. If processing is long running, I look at an asynchronous or chainable approach instead of making the UI wait.

I also keep UI behavior in OmniScript/LWC and backend orchestration in the IP rather than mixing those responsibilities.

## Q11. What are Send JSON Path and Response JSON Path?

### Spoken interview answer
Send JSON Path controls what portion of the current JSON I send into an action, and Response JSON Path controls which part of that action's response I keep. I use those properties to prevent the IP from carrying large unnecessary JSON structures through every step. That improves performance and makes the integration easier to understand and debug.

## Q12. Data Mapper/DataRaptor versus Integration Procedure versus Apex?

### Spoken interview answer
For a focused Salesforce read/write or transformation, I use a Data Mapper/DataRaptor. For multiple server-side steps, conditions, multiple data sources, REST actions, or orchestration, I use an Integration Procedure. If the requirement needs complex reusable custom logic that does not fit cleanly in the declarative components, I use Apex.

Simple rule:

`Focused Salesforce data operation -> Data Mapper`

`Multi-step orchestration -> Integration Procedure`

`Complex custom logic -> Apex`

## Q13. Why not put everything directly in OmniScript?

### Spoken interview answer
OmniScript should manage the guided user experience, not become the backend integration engine. If I put all data access, transformations, and callout logic directly into the UI process, the OmniScript becomes tightly coupled and difficult to reuse. Moving server-side operations into Integration Procedures lets multiple OmniScripts, FlexCards, LWCs, Apex, or API clients reuse the same backend logic.

It also reduces unnecessary client/server payload and makes troubleshooting cleaner.

## Q14. How does an Integration Procedure call Apex?

### Spoken interview answer
I use a Remote Action in the Integration Procedure. The action invokes an Apex class and method and sends the portion of the IP JSON the Apex logic requires. The Apex method performs the custom operation and returns a structured result that the IP can use in later steps or return to the caller.

At PG&E, a concrete example was `CCSP_IntegrationHandlerClass.makeAPICall`, which was invoked as a Remote Action for API processing.

## Q15. How did you support multiple endpoints using one reusable Apex callout pattern?

### Spoken interview answer
The reusable Apex handler was not tied to one hard-coded URL. The caller provided or resolved the business functionality and integration context. Configuration or supporting data supplied the endpoint and method, and the common handler performed the callout with the standard headers, authentication context, logging, and error handling.

That meant different APIs could reuse the same callout mechanics while keeping their request and response transformations separate.

### Important accuracy point
Do not say every PG&E external call went through this Apex class. Some Integration Procedures could execute HTTP Actions directly. The project used a mixed approach.

## Q16. How does the Apex handler know which endpoint to call?

### Spoken interview answer
The integration uses a business functionality or integration key to resolve the appropriate web-service configuration. In the PG&E design, components such as `CCSP-GetWebServiceDetails-DR` were used to retrieve web-service details for the requested functionality, and later designs also referenced external endpoint configuration containing things like endpoint, method, and authentication type.

The important idea is configuration-driven endpoint resolution instead of scattering URLs through Apex or the UI.

## Q17. How do you handle different request and response shapes with a reusable integration handler?

### Spoken interview answer
I separate transport from transformation. The common handler owns things such as endpoint execution, headers, authentication, timeout/error handling, and logging. The caller or a transformation layer builds the request payload and transforms the response into the business shape the process needs.

That keeps the shared callout class reusable without filling it with large if/else blocks for every API payload.

## Q18. How did PG&E handle multi-record or bulk integration scenarios?

### Spoken interview answer
There were business flows that worked with multiple premises, service points, Customer Contacts, and cases. The OmniStudio design had bulk-oriented Integration Procedures and transformations so the process could operate on collections instead of creating a separate UI/server pattern for each record. The integration handler could then be reused as part of that orchestration.

I would be careful not to say every multi-record flow was always one physical HTTP request. The exact external API contract determines whether the payload can be batched or whether the server-side orchestration makes controlled multiple calls.

## Q19. What was the Get Calls or Mother API pattern?

### Spoken interview answer
The Mother API was a GET-based integration pattern where Salesforce requested backend information through MuleSoft, and MuleSoft called CC&B and returned the requested data. It was used for information such as alerts and account financial details. The Salesforce UI did not connect directly to CC&B; MuleSoft remained the integration layer between Salesforce and the backend.

## Q20. How would you summarize the PG&E integration architecture to an interviewer?

### Spoken interview answer
At PG&E, I worked with a layered OmniStudio integration architecture. OmniScripts and LWCs handled the user experience, Integration Procedures handled orchestration, DataRaptors handled Salesforce data extraction and transformation, and Apex Remote Actions were used where we needed custom logic or a reusable callout handler.

For external integrations, Salesforce called MuleSoft and MuleSoft integrated with CC&B. We had reusable patterns such as `CCSP_IntegrationHandlerClass.makeAPICall`, configurable endpoint and HTTP-method handling, centralized token handling, response transformation, error logging, and scheduled retries. We also supported multi-record flows such as multiple premises, service points, Customer Contacts, and cases rather than designing everything as a single-record callout.

## Q21. How do long-running Integration Procedures work?

### Spoken interview answer
First I try to reduce the execution time by removing unnecessary actions, minimizing payloads, and combining data operations where appropriate. If the process is still genuinely long running and the caller does not need the result immediately, I use an asynchronous mode or chainable processing supported by the OmniStudio runtime. The choice depends on whether the caller needs a response, whether processing has to continue independently, and the transaction limits involved.

The key is not to keep an OmniScript waiting on a long external operation when the business process can be asynchronous.

## Q22. How do you handle errors inside an Integration Procedure?

### Spoken interview answer
I separate the user-facing error from the technical support details. The IP can route failure paths and return a controlled message to the caller, while the integration layer captures request/response context, correlation information, and the technical error for troubleshooting. Recoverable outbound failures can be retried through a centralized mechanism rather than looping inside the user's transaction.

At PG&E, the design included global error handling, Mule-response processing, integration log records, and scheduled retry components.

## Q23. How do you test an Integration Procedure?

### Spoken interview answer
I use the Integration Procedure Preview with representative input JSON and inspect the output of important steps. I test positive, negative, null/empty, conditional, and multi-record scenarios. I validate the request transformation, response mapping, Send JSON Path, Response JSON Path, and final Response Action.

If the IP invokes Apex that makes an HTTP callout, the Apex layer should also have unit tests using `HttpCalloutMock` rather than depending on a live endpoint.

# Authentication and Named Credentials

## Q24. What is a Named Credential?

### Spoken interview answer
A Named Credential lets Salesforce store and reference an external endpoint together with the authentication configuration so Apex and other Salesforce integration features do not have to hard-code URLs or credentials. In the current Salesforce model, the Named Credential represents the endpoint and transport configuration, while an External Credential defines the authentication protocol, principals, and credentials.

## Q25. What is an External Credential?

### Spoken interview answer
An External Credential defines how Salesforce authenticates to an external system. It contains the authentication protocol and principals, while one or more Named Credentials can reference it for endpoints. That separation allows the same authentication configuration to be reused across multiple endpoints when appropriate.

### Project accuracy
Do not say the PG&E project used the modern External Credential architecture unless the interviewer asks generally. The PG&E design document reflects its own Named Credential/Auth Provider implementation and predates some of the current model.

## Q26. Explain OAuth Client Credentials flow.

### Spoken interview answer
Client Credentials is a server-to-server OAuth flow. There is no interactive user login. The client sends its client ID and client secret to the token endpoint and receives an access token representing the application's service identity. When that access token expires, the client normally requests another access token using the client credentials rather than using a user refresh token.

### Project accuracy
Do not claim PG&E used Client Credentials Flow. The documented PG&E design used a different authentication architecture.

## Q27. What authentication did PG&E actually use for Mule integration?

### Spoken interview answer
The documented PG&E Mule integration used two authentication layers. Salesforce used a Named Credential with Basic Authentication to reach the Mule public endpoint. Separately, the process retrieved an access token through the PG&E Auth Provider/SSO configuration and added that token to the HTTP header. The CC&B applications used that token to determine whether the context user had permission.

The Auth Provider was based on OpenID Connect, while the `CCSP_Mule` Named Credential used a Named Principal with Password Authentication.

### Important project guardrail
Do not simplify this into “we used OAuth Client Credentials.” That is not what the PG&E design document says.

# Topic 4: Async Apex

## Q1. Why do we use asynchronous Apex?

### Spoken interview answer
I use asynchronous Apex when work does not need to complete inside the user's current transaction or when it should have a separate set of governor limits. Typical examples are external callouts after DML, high-volume background processing, scheduled maintenance, or work that can safely complete later. The important design question is whether the business process can tolerate eventual completion and how the user or support team will know if it succeeds or fails.

## Q2. Queueable versus Future?

### Spoken interview answer
For new code I normally prefer Queueable. It supports non-primitive member data, returns a job ID, can be chained, and is easier to structure and monitor. Future is simpler and still exists for legacy/basic async work, but it has more restrictive parameters and less control.

## Q3. When do you use Batch Apex?

### Spoken interview answer
I use Batch Apex when I need to process a large number of records that cannot safely fit in one transaction. The start method identifies the dataset, execute processes manageable chunks with fresh governor limits, and finish performs final processing or notification. I keep each execute scope bulk-safe because a batch chunk is still a normal Salesforce transaction with limits.

## Q4. When do you use Scheduled Apex?

### Spoken interview answer
Scheduled Apex starts a job at a defined time or recurring schedule. I use it when the business process is time-based, such as launching a batch retry job periodically. If the scheduled job will process a large dataset, the scheduled class often starts a Batch Apex job rather than trying to do all the work inside the scheduler transaction.

## Q5. How do you perform a callout from Queueable?

### Spoken interview answer
The Queueable class implements `Database.Queueable` and `Database.AllowsCallouts`. I pass the minimum information the job needs, perform the external callout inside `execute`, handle the response, and update a status/log record if the design requires it. The callout is in a separate transaction from the original record save.

# Topic 5: Platform Events and Event-Driven Architecture

## Platform Events Q1 — What is a Platform Event?

### Interview answer
“A Platform Event is Salesforce's event-message mechanism for loosely coupled, event-driven processing. A publisher creates an event and one or more subscribers react to it asynchronously. The publisher does not need to know every subscriber.

I use that pattern when the business event should be decoupled from the current transaction—for example, Salesforce publishes that something happened and MuleSoft or an Apex subscriber handles downstream processing.”

### Simple model
`Publisher → Event Bus → Subscriber(s)`

The event represents something that **happened**, not a command to a particular class.

## Platform Events Q2 — Where have you used Platform Events?

### Interview answer
“I have worked with Platform Events as part of Salesforce event-driven patterns, especially where a process needs to be decoupled from the originating transaction. I look at them when an integration or downstream operation doesn't need to block the user's transaction, or when more than one consumer may need the same business event.

I don't use Platform Events just to make something asynchronous. If Salesforce owns one background operation, Queueable can be simpler. Platform Events are more valuable when the event itself is part of the architecture.”

### Project guardrail
Do **not** claim the panelist's antivirus pipeline as one of your own project implementations. It is useful architecture preparation, not verified user project history.

## Platform Events Q3 — Platform Event vs Queueable Apex?

### Interview answer
“I use Queueable when Salesforce owns a specific background job—for example, after a record update I need one asynchronous Apex callout and possibly job chaining.

I use a Platform Event when I want publish-subscribe decoupling. The publisher says a business event occurred and does not need to know whether Apex, MuleSoft, or another supported subscriber handles it. Platform Events can also support multiple consumers.

So Queueable is task-oriented; Platform Events are event-oriented.”

## Platform Events Q4 — Platform Event vs Change Data Capture?

### Interview answer
“CDC is primarily for publishing Salesforce record changes. Salesforce generates the change event when a tracked record is created, updated, deleted, or undeleted.

A custom Platform Event represents a business event that I define. Its payload and publication conditions can be independent of a specific CRUD change.

If an external consumer simply needs Account changes, CDC may be the cleaner solution. If I need something like `MemberIntakeCompleted` with a custom business payload and business-specific publication point, I would consider a Platform Event.”

## Platform Events Q5 — How do you publish a Platform Event from Apex?

### Interview answer
“I create instances of the Platform Event sObject and publish them using `EventBus.publish`. I treat the publisher as bulk code, so if multiple business records generate events I build a list and publish the collection instead of publishing inside a loop.

I also think about transaction semantics before publishing. If the event tells downstream systems that committed business data exists, I want the publication behavior aligned with the successful business transaction rather than letting consumers act on a state that later rolls back.”

### Coding shape to remember
```apex
List<Order_Ready__e> events = new List<Order_Ready__e>();
for (Order__c orderRec : orders) {
    events.add(new Order_Ready__e(
        OrderId__c = orderRec.Id,
        CorrelationId__c = createCorrelationId(orderRec)
    ));
}
List<Database.SaveResult> results = EventBus.publish(events);
```

The code is intentionally bulk-oriented.

## Platform Events Q6 — How do you subscribe to a Platform Event?

### Interview answer
“There are several subscriber models depending on the consumer. In Salesforce, Apex can subscribe with a trigger on the Platform Event. Supported external/event clients can subscribe through Salesforce's event APIs, and middleware such as MuleSoft can consume Salesforce events as part of an integration architecture.

The subscriber should be designed independently from the publisher and should assume it can receive events in batches.”

## Platform Events Q7 — How does an Apex Platform Event trigger differ from an object trigger?

### Interview answer
“The syntax looks similar because both use Apex triggers, but the intent is different. An object trigger runs as part of record DML on an sObject. A Platform Event trigger is a subscriber that processes event messages asynchronously.

I still bulkify the event trigger. I assume `Trigger.new` can contain multiple events, collect keys, query in bulk, and perform bulk DML. I don't put a query or DML statement per event.”

## Platform Events Q8 — What happens if a Platform Event subscriber fails?

### Interview answer
“I separate event publication from subscriber processing. A successful publish does not mean every downstream business operation succeeded. If an Apex event trigger fails, I design the subscriber so recoverable processing can be retried or resumed according to the platform-supported event-trigger behavior, and I persist enough business context to make reprocessing safe.

For external subscribers such as MuleSoft, I define retry and error ownership in the integration layer. The important point is that retries must be idempotent so the same logical event does not perform the business action twice.”

### What the interviewer is testing
They want to hear more than “Platform Events retry automatically.” Discuss:
- subscriber failure
- retry/replay strategy
- durable business status
- idempotency
- operational monitoring

## Platform Events Q9 — What is Replay ID?

### Interview answer
“A Replay ID is the event-stream position Salesforce assigns to an event. Subscribers can use replay functionality to resume consumption from an appropriate position within the supported retention window.

I don't use Replay ID as my business idempotency key. It is useful for stream position and replay. For business deduplication, I use a stable business or correlation/idempotency identifier.”

## Platform Events Q10 — Can Platform Events be delivered more than once?

### Interview answer
“I design event consumers as if duplicate delivery or duplicate business requests can happen. Distributed systems should not depend on exactly-once business processing unless the architecture explicitly provides it.

I include a stable request/correlation identifier and make the consumer idempotent—for example, by storing processed request IDs, using a unique external key, or checking the current business state before applying the operation.”

## Platform Events Q11 — What is idempotency?

### Interview answer
“Idempotency means processing the same logical request more than once produces the same final business state as processing it once.

For example, if MuleSoft receives the same `CreateMember` event twice, it should not create two members. We can use a unique business request ID or external ID and have the consumer recognize that the request was already completed.”

## Platform Events Q12 — Why use a correlation ID?

### Interview answer
“A correlation ID lets me trace one business request across transaction boundaries and systems. I generate or preserve one ID at the start and include it in the Platform Event, Salesforce integration log, MuleSoft log, and downstream request.

Then support can search one value and see the full path instead of trying to match timestamps across several systems.”

### Architecture
`Salesforce request [CID-123]`
→ `Platform Event [CID-123]`
→ `MuleSoft [CID-123]`
→ `External API [CID-123]`
→ callback/log result `[CID-123]`

## Platform Events Q13 — Platform Event vs direct synchronous callout?

### Interview answer
“If the user needs the external result immediately to continue the current transaction and the API is fast/reliable enough, a synchronous server-side callout may be appropriate.

If the external work can complete later, I prefer not to make the user transaction wait. An event-driven design decouples Salesforce from downstream availability and latency. But it introduces eventual consistency, retry, monitoring, and status-management requirements, so it is a tradeoff rather than automatically better.”

## Platform Events Q14 — Platform Event vs LMS?

### Interview answer
“They solve completely different scopes. Lightning Message Service is for communication between UI components in a Salesforce user session. Platform Events are server/event-bus messages that can support asynchronous backend and external subscribers.

I would never use LMS as an integration event bus, and I would not use Platform Events just to send a local UI selection between two LWCs.”

## Platform Events Q15 — When should the event be published relative to the database transaction?

### Interview answer
“If the event tells consumers that Salesforce business data is ready, I want consumers to act only on successfully committed state. Otherwise a consumer could start processing a record that later rolls back.

Salesforce Platform Events support publish behavior that can be configured around commit semantics. For business events tied to the transaction's successful state, publish-after-commit behavior is the safer design. If the event has different semantics, I choose deliberately rather than assuming every event should behave the same way.”

## Platform Events Q16 — How do you prevent duplicate external processing?

### Interview answer
“I assume duplicates are possible. The consumer identifies the logical request using a stable key and checks or enforces whether the business action has already completed. For database writes, that may be a unique external ID or an upsert. For an external call, it may be a downstream idempotency key plus a local processing record.

I do not deduplicate only in JavaScript or static Apex state because that does not survive separate transactions.”

## Platform Events Q17 — How do you handle event ordering?

### Interview answer
“I avoid designing a distributed process that depends on a global ordering assumption. If order matters for one business entity, I include entity/version or sequence information and make the consumer detect stale or out-of-order work.

For example, if two events update the same logical object, the consumer can compare a business version or timestamp before applying the later state. The exact mechanism depends on the requirement, but I make ordering explicit rather than relying on timing.”

## Platform Events Q18 — How do you bulkify a Platform Event publisher/subscriber?

### Interview answer
“On the publisher side, I create a list of events and publish the list instead of calling `EventBus.publish` inside a loop. On the subscriber side, I assume the trigger receives multiple events and use sets/maps, bulk SOQL, and bulk DML.

If the subscriber needs callouts or heavy processing, I design the next asynchronous boundary carefully rather than doing uncontrolled work per event. Event-driven does not remove governor limits.”

## Platform Events Q19 — How do you test Platform Events?

### Interview answer
“I test both sides independently and then the business behavior end-to-end. For the publisher, I verify the conditions and event payload. For Apex subscribers, I publish representative events in a test and use the platform test event-delivery mechanism so the subscriber runs within the test.

I include bulk events, duplicate/idempotency cases, invalid payloads, and subscriber failure paths. If the subscriber performs a callout through Queueable or another service, I use `HttpCalloutMock` for that boundary rather than making a real external request.”

## Platform Events Q20 — How do you monitor and troubleshoot an event-driven integration?

### Interview answer
“I design observability before production. The event carries a correlation ID and enough business identity to trace it. Salesforce logs the publish/processing status that matters, MuleSoft logs the same correlation ID, and downstream responses are associated with it.

I distinguish transport failure from business failure. A message can be delivered successfully but rejected by the downstream business rule. Those need different support actions. For recoverable failures, I define retry ownership and limits; for permanent failures, I capture enough information for support or a controlled replay/reprocess path.”

## Platform Events Q21 — Design: Salesforce → Platform Event → MuleSoft → external system.

### Interview answer
“I would keep the Salesforce transaction focused on validating and saving the business data. Once the business state is ready, Salesforce publishes a Platform Event containing the record/business ID, correlation ID, operation, and the minimum payload needed by the consumer.

MuleSoft subscribes to the event and performs the downstream orchestration. It calls the external system, applies its retry/error policy, and logs the same correlation ID. If Salesforce needs the final result, MuleSoft can call a secured Salesforce API/callback or update through another supported integration path. Salesforce stores the final processing status so the UI and support team can see whether it is pending, successful, or failed.

I would make the MuleSoft consumer idempotent, define what happens to duplicates, decide who owns retry for each failure type, and avoid publishing an event that represents committed business data before the transaction is actually committed.”

### Architecture
`Salesforce transaction → Platform Event → MuleSoft subscriber → downstream API`

If a result must return:
`downstream result → MuleSoft → secured Salesforce callback/API → status update`

### Panel-style follow-ups to expect
- What if MuleSoft is down?
- What if it receives the event twice?
- What if the external system succeeds but the callback to Salesforce fails?
- Where is the source of truth for status?
- How do you correlate all logs?
- How do you replay/reprocess safely?

## Platform Events Q22 — What if the external system succeeds but Salesforce never receives the callback?

### Interview answer
“That is a classic distributed-system partial failure. I would not blindly resend the business operation because the downstream system may already have completed it.

I use a correlation/idempotency key so MuleSoft or Salesforce can query/reconcile the downstream result safely. The callback itself should also be idempotent. If callback delivery fails, retrying the callback should update the same Salesforce processing record rather than create another business transaction.

This is why I separate the business request ID from the transport attempt and persist processing status.”

## Platform Events Q23 — Platform Event or Queueable for an Apex callout after record save?

### Interview answer
“If there is one Salesforce-owned asynchronous task and no need for publish-subscribe semantics, Queueable is usually simpler. I can enqueue the job, perform the callout with `Database.AllowsCallouts`, and chain additional work if required.

If the record change represents a business event that multiple consumers may need, or I want Salesforce and external consumers decoupled, Platform Events become more attractive. I would not add an event bus to a simple one-consumer problem without a reason.”

## Platform Events Q24 — Platform Event or CDC for MuleSoft synchronization?

### Interview answer
“If MuleSoft simply needs to know that Salesforce records changed and the record-change stream contains what it needs, CDC is worth considering because Salesforce produces those change events for me.

If I need a business-specific contract—only publish after certain rules, use a custom payload, or represent an operation that is not just record CRUD—I would use a custom Platform Event. I choose based on the semantic contract, not just the transport.”

## Platform Events Q25 — What are the main risks of event-driven architecture?

### Interview answer
“The tradeoff for loose coupling is operational complexity. I have to handle eventual consistency, duplicate delivery, out-of-order processing where relevant, subscriber failures, retry ownership, schema evolution, monitoring, and reconciliation.

So I do not choose Platform Events simply because asynchronous architecture sounds better. If the business requires an immediate atomic result, a synchronous transaction may be the right design. Event-driven architecture is strongest when the business can tolerate the separate transaction boundary and we design the recovery path properly.”

---

# Topic 6: Lightning Web Components (LWC) Architecture and OmniStudio Integration

## LWC Q1 — Tell me about your experience with Lightning Web Components. Where have you used LWC in your projects?

### Spoken interview answer
“I’ve used LWC quite a bit, both as standalone Salesforce components and together with OmniStudio.

In my PG&E project, we used LWCs heavily inside service processes like Start Service, Stop Service, and Transfer Service. OmniScript handled the guided flow, while custom LWCs were used where we needed richer interaction, reusable UI behavior, or more control than the standard OmniStudio elements provided. We had custom components for service agreements, service points, premise selection, and alerts. Those components worked with Integration Procedures, DataRaptors, and in some cases Apex Remote Actions to get or process data, with MuleSoft integrating to CC&B.

One example was the alerts functionality, where a parent LWC and child alert components handled displaying and actioning alerts, while Integration Procedures and Apex handled backend validation and processing. That kept UI behavior in LWC and the business/integration logic on the server side.

In my current Health Cloud project, I’ve also worked with custom LWC inside OmniScript. One issue involved required fields inside a FlexCard. Because those FlexCard inputs were not registered as normal OmniScript inputs, the standard validation could display an error but was not reliably blocking Next. We used a headless LWC at the OmniScript step level to validate the shared OmniScript JSON, block navigation when required data was missing, and clear the error once the data was corrected.

I don’t replace OmniStudio with LWC by default. OmniScript is very good for guided step-by-step flows, standard inputs, conditional steps, and orchestrating Integration Procedures. I use custom LWC when the requirement needs specialized interaction, richer reusable UI, complex client-side behavior, or validation that is difficult to express cleanly with the standard OmniStudio elements.”

### Architecture rule to remember
`OmniScript → guided process`
`FlexCard → contextual display/actions`
`LWC → custom/reusable interactive UI`
`Integration Procedure → backend orchestration`
`Apex → custom server-side logic when needed`

## LWC Q2 — How does an LWC communicate with an OmniScript?

### Interview answer
“When I embed a custom LWC inside an OmniScript, I normally use the OmniStudio LWC integration model so the component can participate in the OmniScript context instead of acting like an isolated component.

The LWC can read the OmniScript data JSON, use the values it needs, and write values back into that JSON. If the user changes something inside the LWC, I update the shared OmniScript data so later steps, Integration Procedures, or conditional logic can consume it.

I try to keep OmniScript as the owner of the process state and the shared JSON, and use the LWC for specialized UI behavior. That avoids maintaining two independent state models that can get out of sync.”

### Follow-up names to know
- `OmniscriptBaseMixin`
- `omniJsonData`
- `omniApplyCallResp()`
- `omniUpdateDataJson()`
- OmniScript validation/navigation hooks

## LWC Q3 — How exactly did your headless LWC block OmniScript Next?

### Interview answer
“In the BCBS Health Cloud flow, the required values were rendered inside a FlexCard, so the OmniScript step did not see them as normal OmniScript input elements. We could use Set Errors to display a message, but displaying an error was not enough to participate in the step’s navigation validation.

We synchronized the important FlexCard values into the OmniScript JSON and placed a headless custom LWC at the step level. The LWC read those values from the shared JSON and implemented the validation contract expected by OmniScript. When OmniScript evaluated the step before navigating, the LWC returned an invalid result if Call Type, the relationship value, or the Plan-to-Plan requirement was missing. Because the component participated in step validation, Next was blocked rather than just showing a warning.

When the user corrected the value, the FlexCard updated the OmniScript JSON, the LWC re-evaluated the state, and the validation message cleared. The key was that the custom component participated in OmniScript validation; simply rendering an error message did not change the navigation result.”

### Why this is a strong project story
This was not a case of replacing OmniStudio with custom code unnecessarily. The standard composition created a boundary: the values lived in a FlexCard rather than native OmniScript inputs. LWC was used only to bridge that validation gap.

## LWC Q4 — What are the files in an LWC bundle?

### Interview answer
“The core bundle usually contains the HTML template, JavaScript controller, and the `.js-meta.xml` configuration file. CSS is optional and scoped to the component. We can also have Jest tests and other supporting JavaScript modules depending on the design.

The HTML defines the template, JavaScript contains state and behavior, the metadata XML controls where the component can be exposed and any design properties, and CSS handles component-level styling.”

## LWC Q5 — What are the important LWC lifecycle hooks?

### Interview answer
“The hooks I use most are `constructor`, `connectedCallback`, `renderedCallback`, `disconnectedCallback`, and `errorCallback`.

I use `connectedCallback` for initialization that depends on the component being inserted into the DOM, such as subscribing to a message channel or starting data setup that does not require rendered elements. `renderedCallback` runs after rendering, so I use it only for work that genuinely needs rendered DOM and guard it carefully because updating reactive state there can create repeated renders. `disconnectedCallback` is where I clean up subscriptions or listeners. `errorCallback` can act as an error boundary for descendant component errors.”

### Important trap
Do not update reactive state unconditionally inside `renderedCallback`; it can create a rerender loop.

## LWC Q6 — What is `@api`?

### Interview answer
“`@api` exposes a property or method as part of a component’s public API. A parent can pass data to a child through public properties, and a parent can call a public child method when that is the appropriate component contract.

I keep the public API small and intentional. If every internal property is public, the child becomes tightly coupled to its parent.”

## LWC Q7 — Do we still need `@track`?

### Interview answer
“For primitive fields, normal class properties are reactive, so I do not add `@track` everywhere. LWC also observes assignment of new object or array references. `@track` is mainly relevant when I need the framework to observe mutations inside a plain object or array structure rather than replacing the reference.

As a general pattern, I prefer immutable-style updates—for example creating a new array with `map` or spread—because the state change is explicit and easier to reason about.”

## LWC Q8 — How does parent-to-child communication work?

### Interview answer
“For parent-to-child communication, the child exposes a public property using `@api`, and the parent binds a value to that property in the template. For behavior, the child can expose a public `@api` method and the parent can locate the child and call it when there is a good reason.

For normal data flow I prefer properties; public methods are useful for imperative child behavior such as reset or validate.”

### Example
```js
// child.js
import { LightningElement, api } from 'lwc';
export default class Child extends LightningElement {
    @api recordId;
}
```

```html
<c-child record-id={selectedRecordId}></c-child>
```

## LWC Q9 — How does child-to-parent communication work?

### Interview answer
“The child dispatches a custom DOM event and includes any required payload in `detail`. The parent listens for that event in its template and updates its own state or invokes the next operation.

I keep the event semantic—for example `memberselected`—rather than exposing the child’s internal implementation.”

### Example
```js
this.dispatchEvent(new CustomEvent('memberselected', {
    detail: { memberId: this.selectedId }
}));
```

## LWC Q10 — How do sibling or unrelated LWCs communicate?

### Interview answer
“If they share a parent, I usually lift the state to that parent: one child raises an event and the parent passes the updated value to the other child.

If the components are not in the same component tree, Lightning Message Service is usually the supported option. The publisher sends a message on a Lightning Message Channel and subscribers react to it. I avoid creating custom global pub-sub solutions unless the runtime has a specific limitation that requires one.”

## LWC Q11 — What is Lightning Message Service?

### Interview answer
“Lightning Message Service allows components that do not have a direct parent-child relationship to communicate through a Lightning Message Channel. LWC, Aura, and supported Visualforce contexts can participate depending on where they run.

I use LMS for UI-level cross-component communication, not as a backend integration mechanism. The publisher does not need a direct reference to each subscriber.”

## LWC Q12 — Wire versus imperative Apex?

### Interview answer
“I use `@wire` when data is naturally reactive to parameters and the Apex method is a read operation that can be cacheable. Salesforce manages invocation as the reactive parameters change.

I use imperative Apex when I need explicit control over when the call happens—for example after a button click, after validation, for create/update/delete operations, or when the method cannot be cacheable. Imperative calls return a Promise, so I handle success and errors explicitly.

The decision is driven by the interaction model, not by a rule that one is always better.”

## LWC Q13 — Why does wired Apex require `cacheable=true`?

### Interview answer
“A wired Apex method is treated as a data-read operation and participates in the client caching model, so the Apex method must be `@AuraEnabled(cacheable=true)`. That method should not perform DML or change server state.

If I need a mutation, I call Apex imperatively instead.”

## LWC Q14 — How do you call Apex imperatively?

### Interview answer
“I import the Apex method from `@salesforce/apex`, call it from JavaScript, pass the expected parameter object, await or chain the returned Promise, and handle both success and failure. I also control loading state so the user can see that processing is happening.”

### Example
```js
import getMembers from '@salesforce/apex/MemberController.getMembers';

async loadMembers() {
    this.isLoading = true;
    try {
        this.members = await getMembers({ accountId: this.recordId });
    } catch (error) {
        this.errorMessage = this.reduceError(error);
    } finally {
        this.isLoading = false;
    }
}
```

## LWC Q15 — How do you refresh wired data?

### Interview answer
“I keep the complete wired result and pass it to `refreshApex` after the underlying data changes. I do not call refresh repeatedly without a reason because it creates unnecessary server traffic.

If I am using Lightning Data Service/UI API, I use the appropriate LDS record-notification/refresh mechanism rather than assuming `refreshApex` is the answer for every data source.”

## LWC Q16 — Lightning Data Service/UI API versus Apex?

### Interview answer
“I prefer Lightning Data Service or UI API when the requirement is standard Salesforce record access that those APIs support, because I get platform caching and security behavior without writing a custom Apex controller.

I use Apex when the data retrieval or operation requires complex queries, aggregation, custom business logic, multiple objects, an external integration, or behavior that UI API does not provide cleanly.

I do not create Apex just to execute a simple record read that the standard platform data APIs already solve.”

## LWC Q17 — How do you handle errors in LWC?

### Interview answer
“I handle errors at the boundary where they occur. For imperative Apex I catch the rejected Promise; for wire I handle the `error` result. I normalize the Salesforce error shape into a useful user message instead of displaying a raw object.

The UI message should explain what the user can do, while detailed technical information belongs in server-side logging when appropriate. I also reset loading state in a `finally` block so the UI does not remain stuck after a failure.”

## LWC Q18 — How do you secure an LWC?

### Interview answer
“I never treat JavaScript as a security boundary. A user can inspect or manipulate client-side code, so authorization has to be enforced server-side.

I expose only the Apex methods the component needs, use the correct sharing model, and enforce CRUD/FLS using the current Salesforce security APIs/patterns appropriate for the operation. For integrations, credentials remain in Named Credentials/External Credentials or the secure server-side layer, never in the LWC.

I also avoid trusting a record ID or business flag simply because the browser sent it. Apex validates the request against the user and business rules.”

## LWC Q19 — How do you improve LWC performance?

### Interview answer
“I start by reducing work rather than micro-optimizing JavaScript. I avoid unnecessary Apex calls, fetch only the fields and rows the UI needs, use cacheable reads where appropriate, debounce search input, paginate or lazy-load large datasets, and avoid expensive logic in getters or `renderedCallback`.

I also avoid rerendering large trees unnecessarily and use stable keys when rendering lists. For OmniStudio integrations, I trim the Integration Procedure request and response instead of sending the complete OmniScript JSON if the component only needs a small portion.”

## LWC Q20 — What is debouncing and when would you use it?

### Interview answer
“Debouncing delays an operation until the user stops generating the event for a short interval. A common example is type-ahead search. Without debouncing, typing ten characters can generate ten server calls. With debounce, I cancel the previous timer and invoke the search only after the user pauses.

I still handle stale-response scenarios if multiple asynchronous searches can be in flight.”

## LWC Q21 — How would you design a reusable configurable datatable?

### Interview answer
“I separate the table engine from the business-specific configuration. The reusable LWC receives column configuration, row data or a data-provider contract, key field, selection settings, and supported actions through public properties. The parent decides which columns and actions are appropriate for its use case.

If the table is reused across many business processes, I can move stable configuration such as field names, labels, types, sortable/editable flags, and action metadata into Custom Metadata. The server resolves that metadata and the LWC converts it into `lightning-datatable` column definitions.

I would not put every possible business rule into one giant generic table. The reusable layer should own rendering, selection, sorting, pagination, loading, and common events, while domain-specific operations remain in the parent/service layer.”

### Architecture
`Parent/business component`
→ provides table configuration + query/filter context
→ `Reusable Datatable LWC`
→ Apex/UI API data provider
→ emits row/action/selection events back to parent

## LWC Q22 — How do you implement sorting in `lightning-datatable`?

### Interview answer
“For a small in-memory dataset I can clone the array and sort it in JavaScript based on `fieldName` and `sortDirection`. For a large or server-paginated dataset, I send the selected sort field/direction to the server so sorting applies to the complete result set, not only the current page.

I also whitelist allowed sort fields on the server. I do not concatenate an arbitrary browser-supplied field name into dynamic SOQL without validation.”

## LWC Q23 — How do you implement pagination?

### Interview answer
“For small datasets, client-side pagination is fine because all rows are already loaded. For a large dataset, I use server-side pagination and request only the current page.

I prefer a stable pagination strategy appropriate for the query. Simple `OFFSET` can work for limited datasets but has platform limitations and becomes less attractive at scale. Keyset-style pagination using a stable ordered field/ID can be better for large result sets. The UI keeps page state but the server remains responsible for the real query.”

## LWC Q24 — How do you implement inline editing?

### Interview answer
“I mark supported columns editable and handle the datatable `draftValues` on save. I transform the drafts into the update request, persist them through LDS or bulk-safe Apex, report record-specific failures if partial success is allowed, clear the successful drafts, and refresh the displayed data.

I do not send one Apex/DML request per edited row. I submit the changed rows as a collection.”

## LWC Q25 — How do you implement custom datatable cell types?

### Interview answer
“If the standard datatable types cannot render the required UX, I create a custom datatable type or a reusable cell/component pattern depending on the requirement. I keep the custom cell focused—for example a specialized status display or controlled action—and communicate changes using the datatable/event contract rather than letting the cell perform unrelated business logic directly.

Before creating a custom type, I check whether a standard column type, `typeAttributes`, or row action already solves it.”

## LWC Q26 — How would you handle thousands of records in a table?

### Interview answer
“I do not load thousands of full records into the browser just because the API can return them. I move filtering, sorting, and pagination to the server, select only the fields required by the table, and return a bounded result. If the experience supports it, I use incremental loading.

For very large datasets I also review the SOQL selectivity and pagination design, because moving the problem to Apex without optimizing the query does not solve it.”

## LWC Q27 — When would you choose LWC instead of OmniScript?

### Interview answer
“I choose OmniScript when the requirement is primarily a guided business process: multiple steps, conditional navigation, standard form inputs, validations, save/resume, and server orchestration through Integration Procedures.

I choose or embed LWC when the step needs a custom interactive experience that is awkward with standard OmniStudio elements—for example richer tables, specialized component composition, complex client-side interactions, browser APIs, or a validation contract the standard elements cannot provide.

Often the best architecture is not LWC *versus* OmniScript. It is OmniScript owning the overall journey and a focused LWC solving one specialized UI requirement inside it.”

### BCBS example
The headless validation component is the best proof: OmniScript remained the guided process; LWC solved a specific FlexCard/step-validation limitation.

## LWC Q28 — When should LWC call an Integration Procedure versus Apex directly?

### Interview answer
“If the backend operation is already part of an OmniStudio orchestration—multiple Data Mapper operations, transformations, conditional logic, external HTTP Actions, or reusable OmniStudio services—I prefer calling/reusing the Integration Procedure rather than duplicating that orchestration in an Apex controller.

I call Apex directly when the LWC needs focused custom server logic that belongs in Apex and an IP would only add another layer without value.

At PG&E, we used both patterns: LWCs interacted with Integration Procedures for service data and orchestration, and some Integration Procedures used Apex Remote Actions such as the reusable integration handler for specialized callout processing.”

## LWC Q29 — Give me a PG&E LWC architecture example.

### Interview answer
“One example was the Start Service alert functionality. The UI used a parent LWC with child alert components so alert rendering and user interaction were componentized. The server-side process used Integration Procedures and Apex where required for validation and backend processing.

That is representative of how we separated responsibilities at PG&E: OmniScript controlled the service journey, LWC handled richer interactive UI, Integration Procedure orchestrated server operations, DataRaptors handled Salesforce data and transformation, and MuleSoft handled the external CC&B integration.”

### Other verified component anchors to remember
- `ccspServiceAgreementTable` → `CCSP_GetServiceAgreements` IP
- Service Point LWC → `CCSP_GetServicePoint` IP / service-point DataRaptor
- `ccspConnectCheckKF` → credit-check experience
- Start-service alert parent/child LWC pattern

## LWC Q30 — How do you test LWC?

### Interview answer
“I separate client and server testing. For the LWC I use Jest to test rendered behavior, public properties, events, user interactions, loading/error states, and mocked Apex or wire responses. I do not try to prove Apex business logic through Jest.

Apex controllers/services have their own unit tests covering permissions/business behavior, bulk processing, success/failure, and `HttpCalloutMock` where integration is involved. Then the team still needs end-to-end testing for the assembled OmniScript/LWC/IP flow, because unit tests cannot prove all runtime configuration and mappings are wired correctly.”

---

# LWC + Platform Events — Combined Architecture Scenarios

## Scenario 1 — LWC needs an external result immediately
Use a synchronous server-side boundary when latency is acceptable:

`LWC → Apex or Integration Procedure → Named Credential/integration layer → external API → response → LWC`

Keep credentials out of JavaScript. Show loading/error state. Define timeout behavior.

## Scenario 2 — LWC starts long-running external processing
Do not keep the browser waiting for a long external process:

`LWC → server request/status record → Queueable or Platform Event → integration/downstream`

Return a request/status ID to the UI. Update final status asynchronously. The UI can refresh/poll appropriately or use a supported event/message mechanism depending on the architecture.

## Scenario 3 — OmniScript needs rich custom UI and backend orchestration

`OmniScript → custom LWC → OmniScript JSON → Integration Procedure → Data Mapper/Apex/HTTP Action`

OmniScript owns the process. LWC owns specialized interaction. IP owns orchestration. Apex owns custom server logic.

## Scenario 4 — Event-driven MuleSoft integration

`Salesforce business transaction → Platform Event → MuleSoft → external system → callback/status update`

Required design topics: after-commit semantics, correlation ID, idempotency, retry ownership, observability, reconciliation, and callback failure.

# Final Rapid-Review Checklist — LWC

Be able to answer without hesitation:
- Why LWC instead of only OmniStudio?
- Parent → child and child → parent.
- LMS for unrelated components.
- Lifecycle hooks and `renderedCallback` loop risk.
- `@api`, reactivity, and modern `@track` usage.
- Wire vs imperative Apex.
- `cacheable=true` rules.
- LDS/UI API vs Apex.
- Apex/security boundary.
- Error/loading handling.
- `refreshApex` and targeted refresh.
- Performance/debounce/caching/pagination.
- Configurable datatable architecture.
- Inline edit/custom cells/server pagination.
- OmniScript JSON communication.
- Headless validation LWC and why Set Errors was insufficient.
- LWC → IP vs LWC → Apex.
- PG&E layered UI/IP/Apex/MuleSoft architecture.
- BCBS validation story.
- Testing with Jest + Apex tests.

# Final Rapid-Review Checklist — Platform Events

Be able to answer without hesitation:
- What Platform Events solve.
- Publisher/subscriber model.
- Bulk `EventBus.publish`.
- Apex event trigger bulkification.
- Platform Event vs Queueable.
- Platform Event vs CDC.
- Publish/commit semantics.
- Subscriber failure and retry/resume concepts.
- Replay ID vs business idempotency key.
- Duplicate delivery and idempotent consumers.
- Ordering/version strategy.
- MuleSoft subscription architecture.
- Correlation IDs.
- Observability and retry ownership.
- Testing/event delivery.
- External success + callback failure.
- Event-driven architecture tradeoffs.
