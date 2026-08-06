# CS-741 — Selected Member Section Not Displaying

## Problem

The Member Validation FlexCard did not display the selected member summary after a member was confirmed or an unlisted member was created.

This was not a DOB-only issue. The entire selected-member section was blank because the display fields used by the FlexCard were not being populated.

## Initial Evidence from Data JSON

The original JSON showed the display fields were empty:

```json
{
  "selectedMemberId": "",
  "selectedDOB": "",
  "selectedMemberLastName": "",
  "selectedMemberFirstName": "",
  "selectedMemberName": null,
  "showSearchResults": "false",
  "memberSearchResults": []
}
```

For an unlisted member, the source object contained values:

```json
{
  "unlistedMemberId": "090210932",
  "unlistedFirstName": "hello",
  "unlistedLastName": "doctor",
  "unlistedMember": {
    "memberId": "090210932",
    "firstName": "hello",
    "lastName": "doctor"
  }
}
```

However, those values were not copied into the `selectedMember...` fields consumed by the summary section.

## Expected Behavior

The Member Validation card should follow the Provider Validation pattern:

1. Search results remain hidden before Search.
2. Selecting a row opens the confirmation modal.
3. After Confirm, the result table/selection state updates.
4. The selected-member summary becomes visible and displays the confirmed member values.
5. Creating an unlisted member populates the same selected-member summary fields.

## Required Fix

### 1. Confirm Selection action

The Member Validation configurableDataTable/FlexCard confirmation action must populate the fields used by the selected-member display:

```text
selectedMemberId
selectedMemberFirstName
selectedMemberLastName
selectedDOB
selectedMemberName
```

Conceptual mapping:

```text
selectedMemberId        = confirmedRow.memberId
selectedMemberFirstName = confirmedRow.firstName
selectedMemberLastName  = confirmedRow.lastName
selectedDOB             = confirmedRow.dob
selectedMemberName      = confirmedRow.firstName + " " + confirmedRow.lastName
```

Use the actual JSON node names from the Member Search result payload.

### 2. Create Unlisted action

When Create Unlisted is saved, copy values from `unlistedMember` into the same selected-member display fields:

```text
selectedMemberId        = unlistedMember.memberId
selectedMemberFirstName = unlistedMember.firstName
selectedMemberLastName  = unlistedMember.lastName
selectedDOB             = unlistedMember.dob
selectedMemberName      = unlistedMember.firstName + " " + unlistedMember.lastName
```

Both searched and unlisted members should populate the same selected-member summary fields.

### 3. Selected-member visibility

The selected-member block/state should display only after confirmation or unlisted-member creation.

Preferred condition:

```text
selectedMemberId is not blank
```

Do not base visibility only on `showSearchResults`, because search-results visibility and confirmed selection are separate states.

### 4. Provider Validation comparison

Compare and replicate the Provider Validation pattern for:

- configurableDataTable row-selection event
- confirmation modal action chain
- Set Values action
- Update OmniScript action
- selected-record visibility
- field merge paths

## Validation Result — August 6, 2026

The latest FlexCard preview confirms that the selected-member summary now displays after creating an unlisted member.

Displayed values:

```text
Member ID: 109320909
First Name: First
Last Name: Last
DOB: 08/19/2026
```

The Data JSON also confirms that the common selected-member fields are now populated:

```json
{
  "selectedMemberId": "109320909",
  "selectedDOB": "08/19/2026",
  "selectedMemberLastName": "Last",
  "selectedMemberFirstName": "First",
  "showSearchResults": "false",
  "selectedMemberName": null,
  "memberAuth": null,
  "memberSearchResults": [],
  "unlistedMemberId": "109320909",
  "unlistedFirstName": "First",
  "unlistedLastName": "Last",
  "unlistedDOB": "08/19/2026",
  "unlistedMember": {
    "memberId": "109320909",
    "dob": "08/19/2026",
    "address": "",
    "firstName": "First",
    "lastName": "Last"
  }
}
```

## Current Status

- The selected-member section is no longer blank.
- Member ID, first name, last name, and DOB display correctly.
- The common `selectedMember...` values are populated.
- `selectedMemberName` remains `null`, but the current summary displays separate first-name and last-name fields, so this does not block the visible result.

## Remaining Regression Checks

1. Search for an existing member.
2. Select and confirm a result.
3. Verify the same selected-member summary is populated.
4. Click Reset and confirm the summary is cleared.
5. Confirm Create Unlisted and searched-member paths both behave like Provider Validation.
6. Verify the selected-member section remains hidden before confirmation.

## Root Cause

The Member Validation card stored search or unlisted-member data in source-specific nodes but did not populate the common selected-record fields consumed by the selected-member summary. Adding the Set Values/Update OmniScript mapping resolved the blank display.