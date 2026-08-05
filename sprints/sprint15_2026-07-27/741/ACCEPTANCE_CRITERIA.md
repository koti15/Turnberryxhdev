# CS-741 Acceptance Criteria

## AC1 — Member Validation Heading

**Given** I am an MEA Member, Supervisor, or Leader  
**When** I am on the Member Validation step of the Call Intake Wizard  
**Then** the heading reads **Member Validation**.

## AC2 — Search Results Visibility

**Given** I am an MEA Member, Supervisor, or Leader  
**When** I am on the Member Validation step of the Call Intake Wizard and have not yet clicked Search  
**Then** the Search Results section is not visible  
**And** results appear only after the user clicks the Search button.

## AC3 — Selected Member Visibility

**Given** I am an MEA Member, Supervisor, or Leader  
**When** I am on the Member Validation step of the Call Intake Wizard and have not yet confirmed a member  
**Then** the text **Selected Member** does not appear  
**And** selected-member details appear only after the selected member has been confirmed  
**And** the experience is consistent with Provider Validation.

## AC4 — Create Unlisted Host Member

**Given** I am an MEA Member, Supervisor, or Leader  
**When** I am creating an unlisted member from the Member Validation step  
**Then** the popup heading reads **Create Unlisted Host Member**  
**And** the Address field is removed.

## Validation Notes

- Validate in the QA org.
- Navigate through Caller Intake Information to the Member Validation step.
- Confirm the initial state does not show Search Results or Selected Member.
- Confirm Search Results appear only after Search.
- Confirm Selected Member details appear only after confirmation.
- Confirm the popup heading and Address-field removal.
