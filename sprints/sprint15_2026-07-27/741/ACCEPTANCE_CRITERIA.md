# CS-741 — Acceptance Criteria

## AC1 — Member Validation heading

**Given** I am an MEA Member, Supervisor, or Leader  
**When** I am on the Member Validation step of the Call Intake Wizard  
**Then** the heading reads **Member Validation**.

## AC2 — Search results hidden initially

**Given** I am an MEA Member, Supervisor, or Leader  
**When** I am on the Member Validation step of the Call Intake Wizard and I have not yet clicked **Search**  
**Then** the Search Results section is not visible  
**And** results only appear after the user clicks the Search button.

## AC3 — Selected Member hidden until confirmation

**Given** I am an MEA Member, Supervisor, or Leader  
**When** I am on the Member Validation step of the Call Intake Wizard and I have not confirmed a member selection  
**Then** the text **Selected Member** does not appear  
**And** the selected-member details appear only after the selected member has been confirmed  
**And** the experience is consistent with Provider Validation.

## AC4 — Create Unlisted Host Member popup

**Given** I am an MEA Member, Supervisor, or Leader  
**When** I am on the Member Validation step of the Call Intake Wizard and I am creating an unlisted member  
**Then** the popup heading is **Create Unlisted Host Member**  
**And** the Address field has been removed.

## Regression Validation

- Existing member search remains functional.
- Member selection and confirmation remain functional.
- Confirmed member information continues into the downstream Call Intake flow.
- Provider Validation behavior is not changed.
- Member Validation layout and visibility states remain consistent across supported MEA user roles.
