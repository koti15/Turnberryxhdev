# CS-741 — Selected Member Section Not Displaying

## Problem

The Member Validation FlexCard does not display the selected member summary after a member is confirmed or an unlisted member is created.

This is not a DOB-only issue. The entire selected-member section is blank because the display fields used by the FlexCard are not being populated.

## Evidence from Data JSON

The current JSON shows the display fields are empty:

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

For an unlisted member, the source object contains values:

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

However, those values are not copied into the `selectedMember...` fields consumed by the summary section.

## Expected Behavior

The Member Validation card should follow the Provider Validation pattern:

1. Search results remain hidden before Search.
2. Selecting a row opens the confirmation modal.
3. After Confirm, the result table/selection state updates.
4. The selected-member summary becomes visible and displays the confirmed member values.
5. Creating an unlisted member should populate the same selected-member summary fields.

## Required Fix

### 1. Review the Confirm Selection action

In the Member Validation configurableDataTable or FlexCard action chain, identify the action executed when the user confirms a selected row.

That action must populate the fields used by the selected-member display, for example:

```text
selectedMemberId
selectedMemberFirstName
selectedMemberLastName
selectedDOB
selectedMemberName
```

Map them from the confirmed selected row using the same merge-field syntax and action sequence as Provider Validation.

Conceptual mapping:

```text
selectedMemberId        = confirmedRow.memberId
selectedMemberFirstName = confirmedRow.firstName
selectedMemberLastName  = confirmedRow.lastName
selectedDOB             = confirmedRow.dob
selectedMemberName      = confirmedRow.firstName + " " + confirmedRow.lastName
```

Use the actual JSON node names from the Member Search result payload.

### 2. Review the Create Unlisted action

When Create Unlisted is saved, copy values from `unlistedMember` into the same selected-member display fields:

```text
selectedMemberId        = unlistedMember.memberId
selectedMemberFirstName = unlistedMember.firstName
selectedMemberLastName  = unlistedMember.lastName
selectedDOB             = unlistedMember.dob
selectedMemberName      = unlistedMember.firstName + " " + unlistedMember.lastName
```

Do not maintain a separate display path for unlisted members unless required. Both searched and unlisted members should populate the same selected-member summary fields.

### 3. Correct the selected-member visibility condition

The selected-member block/state should be visible only after confirmation or unlisted-member creation.

Use a populated field as the condition, such as:

```text
selectedMemberId is not blank
```

or use the same boolean/state flag already implemented in Provider Validation.

Do not base visibility only on `showSearchResults`, because search results and confirmed selection are separate states.

### 4. Compare with Provider Validation

Open the Provider Validation FlexCard and compare:

- configurableDataTable row-selection event
- confirmation modal action chain
- Set Values action
- Update OmniScript action
- selected-record state visibility
- field merge paths

Replicate that pattern for Member Validation, replacing provider field paths with member field paths.

## Validation

After making the change:

1. Search for a member.
2. Select a row.
3. Confirm the selection.
4. Verify Data JSON contains populated `selectedMember...` fields.
5. Verify the selected-member summary is displayed.
6. Reset and confirm the summary is cleared.
7. Create an unlisted member.
8. Verify the same selected-member summary is populated and displayed.
9. Confirm the behavior matches Provider Validation.

## Likely Root Cause

The Member Validation card currently stores search or unlisted-member data in source-specific nodes but does not run the final Set Values/Update OmniScript mapping that Provider Validation uses to populate the common selected-record display fields.