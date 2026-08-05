# CS-741 — Tech: Member Search Page Updates

## User Story

**As a QA Member**  
I need updates to the Member Search page  
So that the validation experience is consistent with Provider Validation.

## Scope

Update the Member Validation step of the Call Intake Wizard so its layout, conditional visibility, and selected-record behavior align with Provider Validation.

## Technical Notes

- Change the header to **Member Validation** and verify capitalization.
- Align the Member Validation header and search area with the Provider Validation layout.
- Add spacing between UI elements where needed.
- Do not display search results until the user clicks **Search**.
- Do not display **Selected Member** or selected-member details until selection is confirmed.
- Remove the Address field from the Create Unlisted Member popup.
- Change the popup heading to **Create Unlisted Host Member**.
- Keep Host Toggle enablement and search-by-other-fields work outside this story; those belong to their respective stories.

## Current UI Observations

- Page heading currently appears as **Member validation**.
- A **Host Member Search** toggle is visible, though its purpose is not defined in this story.
- The search field label currently appears as **Subscriber Id**.
- The Search Results/Data Selection section appears before the user searches.
- The Selected Member section appears before a member has been confirmed.

## Expected Search Fields

- Member ID
- First Name
- Last Name
- DOB

## Implementation Direction

Follow the existing Provider Validation pattern rather than introducing new business logic. This is primarily an OmniScript UI and conditional-visibility change. Any configurableDataTable changes should be limited to visibility and presentation needed by this story.
