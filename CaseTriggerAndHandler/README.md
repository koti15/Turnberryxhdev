# Case trigger and handler recovery

Recovered on October 5, 2026 from the commented source in myProdOrg. The live containers are `caseTrigger` and `caseTriggerHandler`; they contain an empty trigger and a placeholder method. The original names inside the comments are **CNC_CaseTrigger** and **CNC_caseTriggerHandler**.

## Files

- `force-app/main/default/triggers/CNC_CaseTrigger.trigger`: recovered trigger dispatch.
- `force-app/main/default/classes/CNC_caseTriggerHandler.cls`: recovered main handler, with limited documented repairs.
- `original/`: complete unchanged org bodies, including disabled SLA, decision-reason and alternative child-case implementations; provenance and hashes.
- `dependencies/`: source dependency inventory, compile-only result and review notes.
- `sfdx-project.json`: isolated Salesforce project; avoids automatically adding this incomplete trigger to the main deployment package.

## Actual behavior

Before insert: clone cleanup, article subject, inquirer/LOB/grievance/owner department, contact assignment and appeal iteration. Before update: owner restrictions, case validation, subject/inquirer/LOB/follow-up/contact/document/account/appeal/letter checks and reassignment. Before delete: deletion restriction. After update: invalid-case document processing. The original also routes owner tracking through a shared bypass flag; this is not corrected without reviewing CNC_Utils and the original intended behavior.

## Repairs and limits

Removed the empty container implementations and repaired transfer-damaged comment boundaries. Preserved intentionally commented decision, SLA and child-case alternatives. In handleBeforeUpdate: replaced null-sensitive `.equals` with null-safe comparison, added empty-input/old-map guard, used the supplied old map, removed an unused Account query and moved old-parent Case querying outside the record loop. These repairs are candidates, not production-verified behavior. Ambiguous recovered comment boundaries are documented in the review notes.

The trigger metadata is **Inactive**. The handler metadata uses Active (normal ApexClass metadata); neither has been deployed. No Salesforce trigger or handler was modified. Source recovery does not establish compilation or working runtime behavior.

## Validation

Balanced delimiters and all active trigger-to-handler method references checked. Salesforce Metadata API **checkOnly** validation `0Afbm00000iCbiQCAS` failed with 207 compiler diagnostics, primarily missing dependent classes, objects/settings, fields and labels, including cascading errors. Full line-specific errors are in `dependencies/compile-validation.json`; 207 diagnostics does not mean 207 separate dependencies. Unit tests could not run because the recovered class cannot compile against this target schema.

## Dependencies still needed

Actual source for CNC_Utils, CNC_Constants, CNC_AppealsUpdateController, CNC_CaseAutoReassignmentHandler and CNC_HandleCustomException; definitions for BCBSMN_Ignore_Rules__c, Authentication__c, Case_Documents__c and CNC_Grievance_Code_Mapping__c; referenced Case/Account fields, labels, record types and Integration Procedures. None of those helper classes or named custom objects/settings was found in this target. Do not manufacture business values or empty services to make compilation pass.

The inventory includes supporting references from dormant code separately. Active custom identifiers include both object and field names; see compiler errors for specific owning objects.
