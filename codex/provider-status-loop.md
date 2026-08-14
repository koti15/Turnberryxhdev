# Provider Status Normalization for Provider Search

## Goal

The FlexCard has one `Status` column. Normalize provider status upstream so each provider row returned to the FlexCard contains one field:

```json
"status": "Active"
```

or

```json
"status": "Inactive"
```

Do not put Person Account vs Business Account branching logic in the FlexCard.

## Current source fields

Provider Account records expose:

- `IsPersonAccount`
- `Active__pc` for Person Accounts
- `IsActive` for Business Accounts

Business rule:

```text
IsPersonAccount = true  -> use Active__pc
IsPersonAccount = false -> use IsActive
```

Both source Boolean fields should be normalized to `Active` / `Inactive` before the final FlexCard response.

## Data Mapper: DRExtractProviders

Keep the two statuses separate in the Data Mapper output. Do not map both directly to `providers:status`, and do not use a Data Mapper formula over the full provider collection because it produces an array result instead of one status per provider item.

Recommended output mappings:

```text
providerAccount:IsPersonAccount -> providers:IsPersonAccount
providerAccount:Active__pc      -> providers:PersonStatus
providerAccount:IsActive        -> providers:BusinessStatus
```

Apply the existing Boolean transformations on those individual mappings:

```text
true  -> Active
false -> Inactive
```

Expected Data Mapper output per row:

```json
{
  "name": "Example Provider",
  "IsPersonAccount": true,
  "PersonStatus": "Inactive",
  "BusinessStatus": "Active",
  "accountId": "001..."
}
```

Remove any formula/result mapping such as:

```text
providerStatus -> providers:status
```

if it is based on a collection-level formula.

## Integration Procedure change

Locate the Integration Procedure action that invokes `DRExtractProviders`.

Immediately after the Data Mapper action, add a Loop Block over the provider array returned by `DRExtractProviders`.

Conceptual loop source:

```text
DRExtractProviders:providers
```

Use the exact response node name from the Integration Procedure Preview.

Inside the Loop Block, add a Set Values element that creates one normalized field named `status` on the current provider item.

Logic:

```text
if currentProvider.IsPersonAccount == true
    currentProvider.status = currentProvider.PersonStatus
else
    currentProvider.status = currentProvider.BusinessStatus
```

Use the Integration Procedure's supported conditional expression syntax for the org/version. If a conditional formula is used, evaluate fields from the current loop item, not from the entire `providers` collection.

The loop must produce one updated provider object per input provider object.

## Response Action

Return the loop output as the provider list consumed by the FlexCard.

Target response shape:

```json
{
  "providers": [
    {
      "name": "Person Provider",
      "IsPersonAccount": true,
      "status": "Inactive",
      "accountId": "001..."
    },
    {
      "name": "Business Provider",
      "IsPersonAccount": false,
      "status": "Active",
      "accountId": "001..."
    }
  ]
}
```

The helper fields `PersonStatus` and `BusinessStatus` may be removed from the final Response Action if the FlexCard does not need them.

## FlexCard

Do not add two status columns and do not branch on account type in the UI.

Keep the existing single Status column bound to:

```text
status
```

## Validation

Validate at least these four scenarios:

| IsPersonAccount | Active__pc | IsActive | Expected status |
|---|---:|---:|---|
| true  | true  | any   | Active |
| true  | false | any   | Inactive |
| false | any   | true  | Active |
| false | any   | false | Inactive |

Also test a search returning multiple providers in the same response to confirm each row receives its own scalar status and no row returns an array such as `[false, false, ...]`.

## Important

Do not fabricate OmniStudio metadata from this document alone. Retrieve/export the actual Data Mapper and Integration Procedure from the target org first, then modify their existing metadata while preserving element names, sequence, response paths, and namespace/version-specific structure.
