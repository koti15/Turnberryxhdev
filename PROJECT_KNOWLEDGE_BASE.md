# Turnberry XH Customer Service — Project Knowledge Base

> Navigation and working context. This document is not a substitute for org metadata or approved design documents. Last updated 2026-10-26.

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
| Send Communication / DocGen | [Docgen README](Docgen/README.md) |
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
- Other areas may exist in this repository that have not yet been inventoried. Do not treat this index as a complete repository audit.

## Data protection
This repository is currently **public**. Do not commit real member PHI/PII, production payloads, access tokens, passwords, private internal attachments, or unapproved proprietary source. Use sanitized examples and check organizational policy before adding customer/project information.
