# Story 741 — Member Validation UI Alignment

## Objective
Align the Member Validation experience in the Call Intake OmniScript with the existing Provider Validation experience.

## Scope
This is primarily a UI and configuration update. It does not introduce new backend search logic or change how member data is retrieved.

## Required Changes

- Update the section heading to **Member Validation**.
- Add appropriate spacing around the member search area.
- Do not display the search results section until the user initiates a search.
- Do not display selected-member details until the user confirms a member selection.
- After confirmation, display only the selected member's details.
- Remove the Address field from the selected-member display.
- Update the applicable section heading referenced in the story.
- Follow the same conditional visibility and presentation pattern already implemented for Provider Validation.

## Implementation Notes

- Compare the existing Member Validation and Provider Validation OmniScript steps.
- Reuse the Provider Validation conditional-view pattern wherever practical.
- Review any related FlexCard and configurableDataTable configuration used by the Member Validation step.
- Avoid introducing new backend logic unless an existing component dependency requires it.

## Validation Focus

- Search results remain hidden before Search is selected.
- Selected-member information remains hidden until confirmation.
- Only the confirmed member is displayed.
- Address is no longer displayed.
- Existing member search and selection behavior continues to work.
- The UI is consistent with Provider Validation.

## Source
Captured from Sprint 16 backlog-refinement discussion on August 5, 2026.
