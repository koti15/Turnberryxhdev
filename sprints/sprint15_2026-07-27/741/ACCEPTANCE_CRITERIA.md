# Story 741 — Acceptance Criteria

## AC1 — Member Validation heading

**Given** the user is on the Member Validation step of the Call Intake OmniScript  
**When** the step is displayed  
**Then** the section heading displays as **Member Validation**.

## AC2 — Initial state

**Given** the Member Validation step has loaded  
**When** the user has not yet initiated a search  
**Then** the search-results section is not displayed.

## AC3 — Search results visibility

**Given** the user has entered valid search criteria  
**When** the user initiates the search  
**Then** the matching member results are displayed.

## AC4 — Selected-member visibility

**Given** member search results are displayed  
**When** the user has not yet confirmed a member selection  
**Then** the selected-member details section is not displayed.

## AC5 — Confirmed member display

**Given** the user selects and confirms a member  
**When** confirmation is completed  
**Then** only the confirmed member's details are displayed in the selected-member section.

## AC6 — Address removal

**Given** the confirmed member's details are displayed  
**When** the selected-member section renders  
**Then** the Address field is not displayed.

## AC7 — Consistent Provider Validation pattern

**Given** the existing Provider Validation step is the approved interaction pattern  
**When** Member Validation is updated  
**Then** its conditional visibility, spacing, and presentation follow the same pattern where applicable.

## AC8 — Regression protection

**Given** the Member Validation UI changes are deployed  
**When** the existing member search, selection, confirmation, and downstream Call Intake flow are tested  
**Then** the existing functional behavior continues without regression.
