# Call Intake — Knowledge Index

> Navigation and technical reference, index refreshed 2026-10-28. This index is not an assertion that every component below has been inspected in the current org.

## Functional scope
Call Intake workflows can involve member/provider identification, member search, Case creation, OmniStudio orchestration, integrations and navigation. Exact runtime paths vary by application, user permissions and environment.

## Available story reference
| Story | Topic | Status | Read |
| --- | --- | --- | --- |
| CS-1446 | Canonical Host Member mock responses and member lookup | Requirement and partial screenshot preview; full integration unverified | [CS-1446](References/CS-1446-Host-Member-Canonical-Mock-Response.md) |
| CS-2050 | Flatten submitted and adjudicated values into one selectable member row | Draft DataPack and synthetic fixtures; no org Preview or deployment verified | [Draft record](References/CS-2050-host-member-transform.md) · [Codex handoff](References/CS-2050-Host-Member-Transform-Codex-Handoff.md) |

## CS-1446 key components (from Jira, not yet org-verified)
- Integration Procedure: `IPMemberLookup`
- Custom metadata record: `HostMemberSearchV2` with `DataBody__c` JSON array
- Existing gateway: `MockIntegrationGateway.getDatabySource`
- Feature toggle: mock-only versus live HTTP branch; exact toggle name pending
- Request options: member ID or demographics (first name, last name, DOB)
- Response: `submitted` plus optional `adjudicated`
- Related discovery: CS-2048 (marked Done in supplied Jira)

## CS-2050 current implementation boundary

- A separate draft mapper `DRTransformHostMemberResponse` was committed on 2026-10-28 under `datapacks/CS-2050-host-member-transform/`. It maps **one** member object per invocation; it is **not** evidence of a working multi-member IP loop or FlexCard integration.
- The prior `memberSearchMockTransform` screenshot preview showed a `members` array containing nested `submitted` and `adjudicated` objects. A flattened UI response, unique `rowKey`, selected-modal contract and live/mock path behavior remain to be validated in the authorized org.
- [Draft DataPack setup and tests](../datapacks/CS-2050-host-member-transform/README.md). Do not replace existing metadata or claim deployment based on repository files alone.

## Other investigations to index as evidence becomes available
- Provider creation and created-provider-ID navigation
- Member and provider search response mapping
- Case creation output / Build Response node
- User access differences and intake FlexCard behavior

These are topics from prior discussions, **not verified as existing files in this folder**. Do not claim specific metadata names or solutions without checking captured evidence.

## Next technical evidence to capture
1. Current `IPMemberLookup` tree and element configuration in DEV.
2. Mock custom metadata type/record and its actual stored JSON.
3. Toggle condition and request-key construction.
4. Gateway output and response-node shape.
5. Runtime tests for both request forms and response variants.

## Repository navigation
[Project index](../PROJECT_KNOWLEDGE_BASE.md) · [Reference conventions](../REFERENCE_CONVENTIONS.md) · [Docgen](../Docgen/README.md)
