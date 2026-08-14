# Provider Status Normalization for Provider Search

## Goal

The FlexCard has one `Status` column. Each provider row returned by `IPProviderLookup` must contain one scalar field:

```json
"status": "Active"
```

or

```json
"status": "Inactive"
```

Do not put Person Account vs Business Account branching logic in the FlexCard.

## Confirmed current behavior

The Integration Procedure execution sequence shows:

```text
SearchProviders
BuildProviderSearchResults
BuildPractitionerResult
BuildPractitionerResult
BuildPractitionerResult
...
BuildResponse
```

`BuildPractitionerResult` executes repeatedly, once for each provider result. Therefore, **do not add another Loop Block unless inspection of the actual IP metadata proves one is required**. The current IP already has per-provider iteration/processing.

The final `IPProviderLookup` Preview also already returns one object per provider with a scalar `status`, for example:

```json
{
  "status": "Inactive",
  "name": "TestAnk Provider",
  "umpl": 1234567890,
  "accountId": "001..."
}
```

and another provider can return:

```json
{
  "status": "Active",
  "name": "Patel"
}
```

So the correct place to apply Person Account vs Business Account logic is most likely the existing **`BuildPractitionerResult`** element/current-item transformation, not a new top-level loop.

## Business rule

Provider Account records expose:

- `IsPersonAccount`
- `Active__pc` for Person Accounts
- `IsActive` for Business Accounts / vendor-style provider Accounts

Required rule:

```text
IsPersonAccount = true  -> use Active__pc
IsPersonAccount = false -> use IsActive
```

The value finally sent to the FlexCard must be `Active` or `Inactive`, not a Boolean and not an array.

## Data Mapper: DRExtractProviders

Keep the source values available per provider record. Do not map both `Active__pc` and `IsActive` directly to the same `providers:status` path.

A safe intermediate shape is:

```text
providerAccount:IsPersonAccount -> providers:IsPersonAccount
providerAccount:Active__pc      -> providers:PersonStatus
providerAccount:IsActive        -> providers:BusinessStatus
```

Normalize each Boolean mapping independently if the existing Data Mapper mapping supports it:

```text
true  -> Active
false -> Inactive
```

Expected provider item before final IP shaping:

```json
{
  "name": "Example Provider",
  "IsPersonAccount": true,
  "PersonStatus": "Inactive",
  "BusinessStatus": "Active",
  "accountId": "001..."
}
```

Do not use a collection-level Data Mapper formula such as:

```text
IF(providerAccount:IsPersonAccount, providerAccount:Active__pc, providerAccount:IsActive)
```

when it resolves against the entire provider collection. That was observed to produce a list/array of Boolean values for `status` rather than one scalar value per provider row.

## Integration Procedure change: use existing per-item processing

Inspect the existing `BuildPractitionerResult` element and modify its current-provider mapping/Set Values logic.

For the **current provider item only**:

```text
if IsPersonAccount == true
    status = PersonStatus
else
    status = BusinessStatus
```

If `PersonStatus` / `BusinessStatus` are still Boolean at this point, convert the selected value to `Active` / `Inactive` in this current-item transformation.

Do not create a second loop around the provider collection unless the actual metadata shows that `BuildPractitionerResult` is not already inside an existing Loop Block or repeated execution construct.

## Vendor / Business Account failure observed

A Preview using search input `1900000001` returned:

```json
{
  "providerSearchResults": ""
}
```

This failure happens **before the FlexCard rendering and before final status formatting**. It indicates the vendor/business provider is not being returned by the provider search/build step at all.

Debug this separately from the status-display change:

1. Inspect the output of `SearchProviders` for the vendor/business Account search.
2. Inspect `BuildProviderSearchResults` input/output.
3. Check `DRExtractProviders` filters for any Person-Account-specific criteria, including `IsPersonAccount`, Record Type, NPI/UMPI/Tax ID filters, or use of `Active__pc` as a filter.
4. Confirm the vendor/business Account actually has the searched identifier populated in the field used by the query.
5. Confirm `IsActive` is extracted for Business Accounts and that no filter expects `Active__pc` for those records.

Do not treat `providerSearchResults: ""` as a FlexCard problem. The provider record is missing upstream.

## Response Action

Keep the existing response structure expected by the FlexCard. Each returned provider row should contain exactly one scalar `status`:

```json
[
  {
    "name": "Person Provider",
    "status": "Inactive",
    "accountId": "001..."
  },
  {
    "name": "Business Provider",
    "status": "Active",
    "accountId": "001..."
  }
]
```

Helper fields such as `IsPersonAccount`, `PersonStatus`, and `BusinessStatus` do not need to be exposed by `BuildResponse` unless another consumer needs them.

## FlexCard

No structural change is required to the FlexCard.

Keep the single Status column bound to:

```text
status
```

## Validation

Validate these status scenarios:

| IsPersonAccount | Active__pc | IsActive | Expected status |
|---|---:|---:|---|
| true  | true  | any   | Active |
| true  | false | any   | Inactive |
| false | any   | true  | Active |
| false | any   | false | Inactive |

Also validate search behavior independently:

- Person Account search returns provider(s).
- Business/vendor Account search returns provider(s).
- Multiple mixed Person + Business provider results each receive their own scalar status.
- No result contains `status: [false, false, ...]`.
- A vendor search must not end with `providerSearchResults: ""` when a matching Account exists.

## Important

Retrieve/export the actual `IPProviderLookup`, `DRExtractProviders`, and related OmniStudio metadata from the target org before changing deployable metadata. Preserve existing element names, execution sequence, response paths, and namespace/version-specific structure.