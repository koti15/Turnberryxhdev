# CS-2050 — Host Member Response Transform: Codex Handoff

This is a sanitized requirement summary from Salesforce screenshots and Jira discussion. Use synthetic test data only. Verify org metadata and approved requirements before implementation.

## Objective
Transform the canonical Host Member API response into the member-search FlexCard contract. One selectable flat row per person must contain BOTH as-submitted and as-adjudicated values. Brian's guidance: flatten both sets into a single row, and make both available in the selected modal.

## Related work
- CS-1446: canonical mock metadata and gateway response.
- CS-2050: transformation and FlexCard-ready output.
- CS-2048: submitted/adjudicated handling discovery; verify selected-modal contract.

## Observed components
- IP: intakeWizard_IPMemberLookup (confirm exact org API name).
- Canonical mock Remote Action: GetCanonicalAPI, gateway getDatabySource, metadata source HostMemberSearchV2, matchField mockKey, matchValue %memberId%, resultKey members.
- Data Mapper Transform: memberSearchMockTransform. Preview now returns members as an array with nested submitted and adjudicated, but not yet flat.
- FlexCard consumes {members}; columns use subscriberId, firstName, lastName, dob; keyField rowKey; publishes selectedRow on BCBSMNMember / recordSelected (verify names and consumers in org).
- Existing ClaimLookup IP is a reference for separate mock/live branches, Data Mapper, Response Action and toggle conditions. Do NOT copy claim-specific toggles.

## Synthetic canonical input
```json
{"members":[{"mockKey":"TEST001","submitted":{"subscriberId":"TEST001","firstName":"ALEX","lastName":"DOE","dateOfBirth":"1985-08-06"},"adjudicated":{"subscriberId":"TEST001","firstName":"ALEXANDER","lastName":"DOE","dateOfBirth":"1985-08-06"}}]}
```

## Proposed flat output
```json
{"members":[{"rowKey":"TEST001-1","subscriberId":"TEST001","firstName":"ALEX","lastName":"DOE","dob":"1985-08-06","submittedSubscriberId":"TEST001","submittedFirstName":"ALEX","submittedLastName":"DOE","submittedDob":"1985-08-06","adjudicatedSubscriberId":"TEST001","adjudicatedFirstName":"ALEXANDER","adjudicatedLastName":"DOE","adjudicatedDob":"1985-08-06"}]}
```

Display uses submitted values PROVISIONALLY; verify expected display precedence. Additional flattened field names are proposed, not approved. Confirm whether selected modal needs these flat aliases or nested original objects. Preserve both data sets.

## Data Mapper mappings proposed
Input path -> output path:
- members|1:submitted:subscriberId -> members|1:subscriberId
- members|1:submitted:firstName -> members|1:firstName
- members|1:submitted:lastName -> members|1:lastName
- members|1:submitted:dateOfBirth -> members|1:dob
- members|1:submitted:subscriberId -> members|1:submittedSubscriberId
- members|1:submitted:firstName -> members|1:submittedFirstName
- members|1:submitted:lastName -> members|1:submittedLastName
- members|1:submitted:dateOfBirth -> members|1:submittedDob
- members|1:adjudicated:subscriberId -> members|1:adjudicatedSubscriberId
- members|1:adjudicated:firstName -> members|1:adjudicatedFirstName
- members|1:adjudicated:lastName -> members|1:adjudicatedLastName
- members|1:adjudicated:dateOfBirth -> members|1:adjudicatedDob

IMPORTANT: members|1 was used in a single-item preview. Verify correct repeat/array handling for arbitrary N members; do not hardcode first row only.

## Codex implementation tasks
1. Inspect existing IP, Data Mapper, metadata source, FlexCard, selected-row handler and mock/live feature toggle in authorized org export.
2. Implement flattening to preserve one row per person, with both sets of values. Ensure members remains an array, not an object.
3. Add stable unique rowKey, including when mockKey repeats.
4. Wire transform after canonical retrieval; configure Response Action to return transformed members rather than legacy GetMember or raw GetCanonicalAPI.
5. Respect mock/live branches; mock mode must not invoke live API. Align live response to same UI contract where required.
6. Preserve existing FlexCard columns and selection event; verify selected modal receives both versions.
7. Handle missing adjudicated, empty members, multiple results, differing submitted/adjudicated values, and duplicate mock keys.
8. Provide deployable changes, tests, deployment order and list of unresolved contract questions.

## Acceptance checks
- One input person -> one flat members array row.
- Two people -> two rows, no loss.
- Different submitted/adjudicated names -> both available after row selection.
- Missing adjudicated -> no failure.
- Empty input -> {"members":[]}.
- FlexCard ID/name/DOB populated.
- No row selection collision.
- Mock/live behavior validated.
- IP Preview and UI integration both verified.

## Status at handoff
Canonical mock response and Data Mapper nested array preview work. Flat transform, IP wiring, feature toggle and UI selected-modal verification are pending. Do not claim deployment or completion without testing.

Security: No real member data, internal screenshots, credentials or confidential source artifacts should be committed to a public repository.
