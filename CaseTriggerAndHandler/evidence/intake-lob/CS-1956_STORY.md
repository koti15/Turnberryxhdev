# CS-1956 — Unlisted Member Line of Business

Parent shown in Jira: CS-649.

Source: user-provided Jira screenshot on October 6, 2026. The heading above is descriptive, not a verified Jira summary. Text below is transcribed with minor grammatical cleanup.

## Description

As an MEA, Supervisor or Leadership,

I want the Line of Business on new unlisted member accounts created from Call Intake to be **ITS Host**,

so that it is carried over during case creation.

## Reported behavior

- When creating an unlisted host member through Call Intake, the Line of Business on the Person Account is being set to **Host** rather than **ITS Host**.
- When clicking the New Case button on the Member record page, this Line of Business value is carried over and set on the Case. Consequently, the correct record page is not displayed and triggers are impacted.

## Acceptance criteria

### AC 1 — Unlisted member creation

**Given** that I am an MEA, Supervisor or Leadership,

**When** I create an unlisted member from the Call Intake flow,

**Then** the Line of Business is set to **ITS Host**.

### AC 2 — New Case from Member record page

**Given** that I am an MEA, Supervisor or Leadership,

**When** I click New Case from the Member record page,

**Then** the Line of Business on the new Case is set to **ITS Host**.

## Related investigation

See [FINDINGS.md](FINDINGS.md) for captured mapping evidence and unresolved checks. This story capture is a requirement reference, not confirmation of implementation, testing, or deployment.
