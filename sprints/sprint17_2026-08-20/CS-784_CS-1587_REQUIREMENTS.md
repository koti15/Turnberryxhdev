# Sprint 17 Requirements — 2026-08-20

## CS-784 — Call Intake Validation

### Context
Call Intake Information step for MEA, Supervisor, or Leader.

### Acceptance Criteria captured

#### AC1 — Call Type
- Rename Caller Type to **Call Type**.
- Call Type is required and displays a red asterisk.
- User cannot proceed to the next step without selecting Call Type.
- Validation message: **Please select Call Type before proceeding to the next step**.

#### AC2 — Relationship
- Relationship is required and displays a red asterisk.
- If Call Type = **Provider**, the only available Relationship value is **Provider**.
- If Call Type = **Plan to Plan**, the only available Relationship value is **Plan to Plan**.
- If Call Type = **Member**, all applicable Relationship picklist values are available.
- User cannot proceed without selecting Relationship.
- Validation message: **Please select Relationship before proceeding to the next step**.

#### AC3 — Plan to Plan
- For a Plan to Plan call, **Plan Code** and **Plan State** are required.
- Required fields display a red asterisk.
- User cannot proceed without both values.
- Validation message: **Please select plan code and plan state before proceeding to the next step**.

#### AC5 — Search results
- When provider/member search results are returned, the data table search field hint text should be **Filter search results**.

---

## CS-1587 — Create Case Step Validation

### User story
As an MEA, Supervisor or Leader, required information must be captured during the Create Case step so that the case can be created, researched, and solved quickly.

### Technical context
- Create Case OmniScript of Call Intake.
- Category and Sub-Category are required fields to create the case.
- Add a red asterisk for required fields.
- Do not enable case creation/progression when required fields are blank.

### AC1 — Category and Sub-Category
- **Case Category** and **Case Sub-Category** are required.
- Both fields display a red asterisk.
- User cannot proceed to the next step without filling both fields.
- Validation message: **Please select category and sub-category before proceeding to the next step**.

---

## Implementation focus
These requirements primarily affect Call Intake OmniScript field configuration, required-field validation, conditional picklist behavior, navigation/case-creation gating, and the search table hint text.

Captured from Jira screenshots on **2026-08-20**.