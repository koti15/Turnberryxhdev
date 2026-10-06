# CS-1956 DSU update — October 6, 2026

Yesterday I worked on troubleshooting CS-1956. I checked the debug logs and traced the Call Intake flow through the IP and Data Mapper. I found a Host default in the mapper, while the story requires ITS Host. Before making changes, I'm checking the complete save path and which other flows use this mapping. Once that's confirmed, I'll make the required change, retest Account creation and New Case behavior, and prepare it for deployment.

## Current scope and status

- Both captured mappers, `DRTransformOOSMember` and `DRTransformToHostModel`, have a Host default for `hostMemberData:Line_of_Business__pc`.
- The same issue affecting other member flows has not been confirmed; caller and save-path checks remain pending.
- No Salesforce changes have been deployed for this fix.

See [CS-1956_STORY.md](CS-1956_STORY.md) for requirements and [FINDINGS.md](FINDINGS.md) for evidence.
