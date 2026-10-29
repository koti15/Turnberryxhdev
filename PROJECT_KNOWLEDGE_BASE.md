# Turnberry XH Customer Service — Project Knowledge Base

> Navigation and working context. This document is not a substitute for org metadata or approved design documents. Index refreshed 2026-10-28; original project context retained.

## Purpose
Use this repository as a reusable reference for Salesforce XH Customer Service development. Preserve *what was observed*, *where it was observed*, *how it was tested*, and *what remains unknown*. Never infer completed deployment from a Jira story or a saved screenshot.

## Project context
- Program: BCBS Minnesota Accelerate Health (XH), Customer Service portfolio.
- Stack encountered: Salesforce Service/Health Cloud, OmniStudio (OmniScripts, FlexCards, Integration Procedures, Data Mappers), Apex, Lightning Web Components, Flows, custom metadata, integration gateways, API endpoints, and Copado/Git deployments.
- Functional areas encountered: Call Intake, Host/Provider/Member Search, Case creation/navigation, communication/document generation, member/claim data, user access and sharing.
- Environments may differ: DEV, QA, SIT. Always record org/environment and component version.

## Start here by task
| Question | Starting point |
| --- | --- |
| Call Intake / member search / Host API mocks | [Call Intake knowledge index](CallIntake/README.md) |
| CS-1446 canonical Host Member mock | [CS-1446 reference](CallIntake/References/CS-1446-Host-Member-Canonical-Mock-Response.md) |
| CS-2050 member response transform | [CS-2050 draft and open checks](CallIntake/References/CS-2050-host-member-transform.md) · [draft DataPack README](datapacks/CS-2050-host-member-transform/README.md) |
| Send Communication / DocGen | [Docgen README](Docgen/README.md) |
| Case trigger/handler recovery and intake LOB | [CaseTriggerAndHandler README](CaseTriggerAndHandler/README.md) |
| Member Demographics FlexCard | [FlexCard README](Flexcards/MemberDemographics/README.md) |
| Sprint requirements and related cases | [Sprint context](config/docs/CONTEXT_HOME.md) · [Sprint 17 requirements](sprints/sprint17_2026-08-20/CS-784_CS-1587_REQUIREMENTS.md) |
| GitHub area coverage and gaps | [Coverage inventory](SYNC_COVERAGE.md) |
| DocGen remaining investigation | [Docgen pending work](Docgen/PENDING_WORK.md) |
| How to record new stories and investigations | [Reference convention](REFERENCE_CONVENTIONS.md) |

## How to answer future questions using this repo
1. Identify story ID and functional area.
2. Read the relevant area README, then story reference, then evidence/spec/config.
3. Cite exact file path and section in the answer.
4. Separate **verified configuration**, **user-observed behavior**, **Jira requirements**, and **hypotheses**.
5. Prefer latest dated evidence within the same org/component version; do not automatically generalize across environments.
6. For implementation, verify current org state before recommending edits.
7. Maintain a running checklist of pending questions and tests. Never mark an item done without evidence.

## Known boundaries
- CS-1446 is documentation only; no Salesforce changes were made by adding its reference.
- Existing Docgen records are partly verified, partly incomplete. Follow its dated notes and pending tracker.
- The 2026-10-28 [coverage inventory](SYNC_COVERAGE.md) enumerates the 13 top-level directories on the inspected default-branch tree. This does **not** establish that all Project conversations, branches or source files were reviewed.

## Data protection
This repository is currently **public**. Do not commit real member PHI/PII, production payloads, access tokens, passwords, private internal attachments, or unapproved proprietary source. Use sanitized examples and check organizational policy before adding customer/project information.

## October 29, 2026 — current knowledge checkpoint

[Coverage and access audit](SYNC_COVERAGE.md) reflects the non-truncated default-branch inventory at commit `a2cd9d16bb035318c86c1b895aadf4836d40126c`: **13 top-level directories, 332 tracked files and 101 directory entries**. All discovered README/index files were read; this is not an all-file content audit and **not** proof that all Turnberry ChatGPT Project conversations were accessible. A newer `datapacks/CS-2050-host-member-transform/verified-2026-10-28/` subarea is now indexed by the existing [Call Intake entry](CallIntake/README.md).

**CS-2050 incremental evidence:** the linked [October 28 implementation record](datapacks/CS-2050-host-member-transform/verified-2026-10-28/README.md) *reports* validated mock-path transformation for multiple, single and empty results, preserving submitted/adjudicated values. This run reviewed its documentation but did not independently access a Salesforce org. The IP remains inactive and live-path and selected-modal integration are open; do not interpret the original draft or later repository package as production-deployed work.

Historical summaries or Library screenshots are not automatically authenticated Project conversations. The coverage inventory explicitly separates source files, visible conversations, summary-only information and unavailable thread/folder enumeration. This public KB continues to contain navigation/status metadata only for this sync; proprietary working evidence belongs in approved private storage.
