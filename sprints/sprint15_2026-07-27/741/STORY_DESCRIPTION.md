# CS-741 — Tech: Member Search Page Updates

## User Story

**As a** QA Member  
**I need** updates to the Member Search page  
**So that** the validation experience is consistent with Provider Validation.

## Scope

This story updates the Member Validation step of the Call Intake Wizard. It is primarily an OmniScript UI/configuration change and should reuse the existing Provider Validation interaction pattern.

## Tech Notes

- The header must read **Member Validation** with the correct capitalization.
- Align the **Member Validation** heading and the search row beneath it in a manner similar to Provider Validation.
- Add appropriate spacing between each line/section so the page is not visually compressed.
- On Provider Validation, search results do not appear until the user clicks **Search**. Member Validation must behave the same way.
- The text **Selected Member** and selected-member information must not appear until a member selection is confirmed.
- Remove the **Address** field from the **Create Unlisted Member** popup.
- Change the popup heading to **Create Unlisted Host Member**.
- Host-toggle enablement and additional search fields are handled by their respective stories and are not part of CS-741.

## Current Issues Captured in Jira

- The member-search header and search section are not aligned with Provider Validation.
- The existing search-field label can display as **Subscriber ID**, which is confusing compared with the intended member-search experience.
- Search results and the data-selection/result area can appear before the user performs a search.
- The **Selected Member** section can appear before a member is selected and confirmed.
- The Create Unlisted Member popup currently includes an Address field that is no longer needed.

## Expected Search Fields from the Jira Reference

The Jira reference lists these intended search fields:

- Member ID
- First Name
- Last Name
- DOB

Changes to add or expand search fields should be verified against the separate related story before implementation, because the grooming discussion scoped CS-741 primarily to UI alignment and conditional visibility.

## Steps to Reproduce

1. Log in to the QA org.
2. Invoke a provider call or use a URL that lands on the **Caller Intake Information** page.
3. Select the **Member Search** checkbox and continue to the Member Validation page.
4. Validate the Member Search UI against the Provider Validation pattern and the Jira mockup.

## Implementation Direction

- Compare the Member Validation and Provider Validation OmniScript steps side by side.
- Reuse the Provider Validation conditional-view pattern for:
  - initial search-results visibility;
  - selected-member visibility;
  - post-confirmation display.
- Review related FlexCard or configurableDataTable configuration only where it controls these visibility states.
- Avoid backend search-logic changes unless an existing component dependency requires them.

## Validation Focus

- Header displays correctly.
- Results remain hidden until Search is clicked.
- Selected Member remains hidden until confirmation.
- Only the confirmed member details appear afterward.
- Popup heading is updated.
- Address is removed from the popup.
- Existing search, selection, confirmation, and downstream Call Intake behavior remain functional.

## Reference Images

Three Jira screenshots were provided in ChatGPT on August 5, 2026. They show:

1. Story description, tech notes, reproduction steps, and expected behavior.
2. Current-state screenshots and the beginning of the acceptance criteria.
3. The complete AC1–AC4 text.

The binary image files still need to be copied into the repository `images/` directory from the local working folder.
