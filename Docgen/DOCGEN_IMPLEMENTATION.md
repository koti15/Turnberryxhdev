# DocGen implementation review

Updated: 2026-10-06, America/Chicago.

## Goal and working approach

Understand the existing Send Communication implementation one component at a time, then identify the exact changes needed for CS-1831, CS-1832 and CS-1474. Start with one working Provider → Other Communication → Print letter. Review its relevant dependencies rather than collecting all 52 OmniScript elements before starting story analysis.

This document is the review guide and continuation tracker. Exact captured configuration remains in [spec/send-communication.partial.json](spec/send-communication.partial.json); [CODEX_HANDOFF.md](CODEX_HANDOFF.md) remains the complete configuration handoff. Do not copy configuration tables into this file or confuse the original source implementation with the separately reconstructed target draft.

## Stories and review order

| Order | Story | Confirmed requirement from screenshots | Implementation status |
| --- | --- | --- | --- |
| 1 | [CS-1831](stories/CS-1831.md) | Medical Records Reimbursement letter; existing correspondence and Alfresco processing | Analysis pending |
| 2 | [CS-1832](stories/CS-1832.md) | Ancillary letter instructing provider to resubmit to the appropriate Blue Plan | Analysis pending |
| 3 | [CS-1474](stories/CS-1474.md) | Free Form letter, automatic merge fields, user-entered content and recipient/address edits | Analysis pending |

Confirmed: the visible acceptance criteria use Recipient=Provider, Material Type=Other Communication and Outbound Channel=Print.
Unknown: whether these are template-only changes, whether every token exists, and whether all required Free Form behavior is already supported.
Proposed: use a working fixed-content Print letter as the baseline, then compare the three new requirements against it.

## Review sequence

| Stage | What we inspect | What we establish | Status |
| --- | --- | --- | --- |
| 1 | Existing working letter selection screen and exact template name | One concrete baseline and its source environment | Pending; next capture |
| 2 | Baseline template in the designer and related registration/filter configuration | How the template is stored, selected and made available | Pending |
| 3 | Referenced token-building IP/Data Mapper or Apex and token definitions | Exact token names, sources and required mappings | Pending |
| 4 | Generation action and its referenced component | Template identifier, token input and generated output | Pending |
| 5 | Review/address handling, print submission and storage actions | Edits, success/error behavior and existing integration reuse | Pending |
| 6 | New story Word template compared with baseline | Content, token and configuration differences | Pending |
| 7 | Story change plan, tests and deployment components | Evidence-based scope and estimate | Pending |

At each stage: identify the actual component first; inspect only that component's properties and dependencies next. Expand the review when an observed dependency requires it.

## Capture protocol

1. Send one screen or a small related set at a time, keeping the component/template name visible.
2. Include environment and active version when visible. Exact action names matter more than a screenshot of the full tree.
3. Use sanitized screenshots and sample output; exclude member/patient details, credentials and session information.
4. Explain the observed behavior in plain language and relate it to the current story.
5. Merge newly observed exact settings into the canonical configuration by identity. Refresh the handoff and update this tracker with evidence references and the next capture.
6. Do not request details already captured; first check the canonical record. Earlier reconstruction capture does not establish a working original letter-generation path.
7. Keep Confirmed, Unknown and Proposed separate. Mark development, validation and deployment complete only with corresponding evidence.

## Completed and pending

Completed:
- Reviewed the supplied requirement screenshots for the three stories.
- Identified the shared Provider / Other Communication / Print route.
- Established the incremental review order and tracking document.

Pending:
- Identify and inspect a working original Print letter.
- Inspect actual Word template contents and merge placeholders.
- Trace registration, token assembly, generation, submission and storage.
- Determine required changes per story, then ask the architect only about remaining gaps.
- Confirm the CS-1792 dependency outcome. CS-1831's screenshot shows this blocker.
- Clarify CS-1832's Details section referencing the Medical Records Reimbursement template despite its Ancillary title and acceptance criteria.
- Implementation, testing and deployment of the new stories.

Estimates remain provisional until reuse and required changes are established. Story points follow the team's scale; five points per story is not a verified commitment.

## Next item to send

Open the original Send Communication process using a suitable test case. At Provider → Other Communication → Print, show the existing letter/template selection list and identify a letter known to generate successfully.

Send that screen first, with the template name visible and sensitive case details excluded. Do not submit a print request just to capture this screen. If the environment has no working letter, record that fact and use the existing template designer/configuration as the baseline instead.

After this, the next request will be the selected baseline template's designer/configuration, not the entire OmniScript tree.
