# Codex Task: Story 1350 Legacy Related Cases

## Discussion summary

The current Integration Procedure calls **Get Legacy Cases Mock** through the mock gateway. The call itself appears to be working, but the current response is being passed through too directly.

Right now, when a single claim ID is provided, the flow appears to return the complete mock dataset instead of only the related legacy cases for that claim.

The required work has two parts.

## 1. Filter legacy mock data by claim

The mock data should be filtered using the incoming `claimId` so only records associated with that claim are returned.

The existing flow uses `FilteredLookupAction`. Review its current matching behavior carefully.

The mock records can contain claim values as a list, for example:

```json
"claims": ["EOB001"]
```

A simple equality comparison such as:

```apex
expected.equals(actual)
```

may not work when `actual` is a list. Keep the implementation simple because this is mock data, but ensure the requested `claimId` can be matched against values inside the `claims` list.

Do not make the mock filtering unnecessarily complex.

## 2. Transform legacy response into the unified case model

The larger issue is the response shape.

The current legacy response contains structures such as:

```text
subscriberId
interactions[]
  interactionId
  createdAt
  closedAt
  status
  sourceSystem
  callerInfo
  memberInfo
  serviceIntents[]
    legacyId
    subject
    description
    claims[]
    memberId
    provider
```

The related-cases table will eventually display both Salesforce cases and legacy or engine cases in the same table.

That means both sources must conform to the same **unified case model**, using the same property names expected by the table JSON.

The legacy response should not be mapped directly as:

```text
cases = complete legacy payload
```

Instead:

```text
one serviceIntent = one unified case row
```

Each `serviceIntent` should become an individual case record.

Fields from the parent `interaction` must be copied or pivoted onto each generated case row where required. For example, interaction-level values such as `interactionId`, `createdAt`, `closedAt`, `status`, and `sourceSystem` may need to be included on every case produced from that interaction.

## Expected processing flow

```text
Input claimId
  -> Get Legacy Cases Mock
  -> Filter mock data by claimId
  -> Flatten interactions and serviceIntents
  -> Transform each serviceIntent into the unified case model
  -> Set Values / cases
  -> Return response for the related-cases table
```

A Data Mapper, DataRaptor Transform, or equivalent response transformation may be required. The current `List Cases` or `Set Values` step appears to map the legacy response directly without a visible response transformation.

## Codex instructions

Analyze the repository before making changes.

1. Find the Integration Procedure used for legacy cases.
2. Find the `Get Legacy Cases Mock` step.
3. Find `MockIntegrationGateway` and `FilteredLookupAction`.
4. Confirm how `claimId`, `matchField`, `matchValue`, `source`, and `resultKey` are currently passed.
5. Determine whether `FilteredLookupAction` needs a minimal list-membership enhancement.
6. Find the JSON model used by the related-cases FlexCard or data table.
7. Determine the exact unified case property names from repository metadata. Do not invent field names.
8. Identify how to flatten `interactions[].serviceIntents[]` into one case record per service intent.
9. Identify which parent interaction fields must be copied onto each case.
10. List the exact Apex and OmniStudio metadata files that require changes.
11. Identify required tests for scalar matching, list matching, missing claim ID, empty interactions, and empty service intents.

First return:

- current-state flow
- root cause
- proposed design
- exact files to change
- implementation plan

Do not modify files until the analysis and plan are complete.
