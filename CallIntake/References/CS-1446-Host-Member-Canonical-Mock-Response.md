# CS-1446 — Update Mock Response Metadata with Canonical API Body

> Reference notes only. No Salesforce metadata or implementation changes have been made.
> Source: Jira CS-1446, copied 2026-10-26. The originally mentioned "CS-22" does not match the Jira key in the supplied content.

## Business objective
DEV has no live ITS Host Member API connection. Replace the invented mock response used by OmniStudio with the supplied canonical POST /member response structure, preserving `submitted` and optional `adjudicated` segments. Configure the existing IP to select mock data via a feature toggle, without calling the live API in mock mode.

## Scope / named components
- Custom metadata record DeveloperName: `HostMemberSearchV2` (case sensitive)
  - `Type__c = Integration`
  - `ObjectType__c = Member`
  - `DataBody__c`: one top-level JSON array of canonical response versions; each entry has a `mockKey`.
- Existing Integration Procedure: `IPMemberLookup`
- Existing Apex gateway: `MockIntegrationGateway.getDatabySource` — reuse; no new Apex expected.
- Gateway inputs: `source`, `matchField`, `matchValue`, `resultKey`.
- IP should build `mockKey` in a Set Values element; feature-toggle condition routes to MockData or LiveData. LiveData uses correct HTTP Action. Inactive `mockMemberData` node may be removed after inspection.
- SIT endpoint supplied in Jira comment: `POST https://api-sit.xceleratehealth.net/its-host/member`. Do not assume DEV has connectivity.

## API inputs
Member ID: `{"memberId":"123456789"}`
Demographics: `{"firstName":"Jane","lastName":"Doe","dateOfBirth":"1992-05-23"}`

## Response shape
The API spec describes `MemberResponse` with required `submitted` and optional `adjudicated`, both `MemberSegment` objects. Fields shown: `subscriberId`, `firstName`, `lastName`, `dateOfBirth`, `isCoupeEmployee`, `source` (ENGEN/FACETS). The schema requires `isCoupeEmployee`, `subscriberId`, `firstName`, `lastName` on each segment.

Example mock entry (illustrative only, NOT the final approved test dataset):
```json
{
  "mockKey": "123456789",
  "submitted": {
    "subscriberId": "123456789",
    "firstName": "John",
    "lastName": "Smith",
    "dateOfBirth": "1980-01-15",
    "isCoupeEmployee": false,
    "source": "ENGEN"
  }
}
```
Add `adjudicated` for cases that have it. Keep all versions in a single JSON array. Each version should have a uniquely addressable key unless deliberately testing multiple results with the same key. The Jira notes permit adjusting duplicated mock member IDs to make scenarios independently testable.

## Acceptance criteria
1. Replace invented response body with supplied canonical response; preserve both submitted and adjudicated structures.
2. With mock-only feature toggle enabled, retrieve canonical response from custom metadata without calling live API.

## DEV investigation checklist
- [ ] Open `IPMemberLookup` and capture complete element tree.
- [ ] Find custom metadata type and `HostMemberSearchV2` record; inspect current `DataBody__c`.
- [ ] Inspect current `MockIntegrationGateway.getDatabySource` Remote Action and parameter casing.
- [ ] Locate actual feature-toggle name and conditions.
- [ ] Inspect Set Values request-key construction for member ID and demographics.
- [ ] Confirm IP response shape (array vs object), response node, and downstream consumers.
- [ ] Identify existing HTTP Action and inactive `mockMemberData` node.
- [ ] Compare latest approved canonical test data against Jira comment and attached spec/doc.
- [ ] Test submitted-only, submitted+adjudicated, member ID search, demographic search, and multiple matches.
- [ ] Verify mock mode makes no live call; check live path configuration separately.

## Clarifications / source inconsistencies
- Jira sample request/response document has four scenarios; Brian's later comment contains a five-member array. Confirm which exact dataset QA will use.
- Jira says JSON key `mockKey` but describes `matchField` as `MockKey`; verify gateway matching behavior.
- Example mock values and Jira comment differ from sample document. Do not overwrite canonical values by assumption.
- The pasted YAML is partial (visible lines 147–207 only); original attachments were not separately uploaded.
- Source documentation uses both `isCoupeEmployee` and `isCoupleEmployee` in different contexts; preserve the MemberSegment field name specified by the actual API schema.
- Related completed discovery story: CS-2048.
- Jira estimate: 3 points; comment mentions 3–5 points.

## Status
Documentation captured; implementation not started; DEV metadata and IP configuration not yet inspected.
