# Reference conventions for Turnberry XH development

## Directory pattern
Use existing functional-area folders rather than moving deployed Salesforce source.
- `<Area>/README.md`: entry point and cross-reference index.
- `<Area>/References/CS-####-short-title.md`: requirement and technical analysis.
- Existing `evidence/`, `stories/`, `spec/`, `deployment/`, `call-notes/` folders: preserve existing conventions and cross-link them; do not duplicate or rename without checking dependencies.

## Required story reference fields
- Jira ID and exact title; date captured
- Business objective; user journey; current versus expected behavior
- Acceptance criteria, verbatim where appropriate or faithfully summarized
- Affected components with exact API/developer names, version and org if known
- Request/response contracts and sample values (sanitized)
- Source provenance: Jira, attachment, screenshot, code, runtime test, meeting notes
- Dependencies and related stories
- Current implementation status: Not started / Investigating / Implemented / Tested / Deployed
- Verified observations and evidence links
- Open questions, assumptions, and risks
- Step-by-step DEV inspection and validation checklist
- Change history with date and environment

## Evidence confidence
- **Verified**: directly observed in named org/version or tested with result.
- **Documented**: explicit Jira/spec/meeting instruction, not runtime-verified.
- **Inferred**: technically plausible conclusion, not yet checked.
- **Unknown**: information not available. Never silently fill gaps.

## Git usage
- Prefer additive docs and links over overwriting investigation history.
- Record superseded findings without deleting older evidence.
- Keep implementation code and documentation separate.
- Use specific commits: `docs: add CS-#### reference`, `docs: update <area> investigation`.
- For future answers, read the repository again rather than assuming the cached notes are current.

## Security
Repository visibility is public as of 2026-10-26. Avoid member data, confidential documents, credentials, proprietary payloads, and source not approved for this repository. Redact examples and follow employer policies.
