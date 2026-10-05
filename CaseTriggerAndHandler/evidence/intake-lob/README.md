# Intake Line of Business investigation

Upload screenshots and configuration captures here to investigate why an Unlisted Member Account has `Line_Of_Business__pc = Host` and an intake Case has `LOB__c = ITS Host`.

## Screenshots needed first

1. Call Intake Case OmniScript save action properties, including the referenced Integration Procedure or Data Mapper name.
2. If it calls an Integration Procedure, its save action properties and referenced Data Mapper Load name.
3. Data Mapper Load mappings targeting Case `LOB__c`, including source paths, formulas, default values, and relevant conditions.
4. Save action debug input/output showing the LOB value and its JSON path. Include any Set Values element feeding that path.

Suggested filenames: `01-omniscript-save-action.png`, `02-ip-save-action.png`, `03-case-lob-mapping.png`, and `04-save-debug-input-output.png`. Use additional numbered files when multiple screenshots are needed.

If these do not reveal the assignment, the next evidence needed is the Unlisted Member creation mapping for Account `Line_Of_Business__pc` (or Contact `Line_Of_Business__c`) and any Case before-save Flow that assigns `LOB__c`.

## Confirmed findings and limits

The debug log supplied in the `debuglogs` LWC HTML comments shows the incoming Case already contains `LOB__c = ITS Host` when the before-insert handler receives it. The Account query returns `Line_of_Business__pc = Host`. The captured handler only fills Case LOB during insert when it is blank.

The log does not identify the original writer of either value. Intake mappings and before-save automation remain candidates to investigate, not confirmed causes. Uploaded screenshots are evidence; they do not represent implemented or deployed changes.

Redact unrelated member information, credentials, and tokens before uploading. Preserve component names, field names, JSON paths, formulas, and configuration values needed for the investigation.
