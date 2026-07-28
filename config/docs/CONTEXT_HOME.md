# Project Context Home

This is the starting point for every new Codex or ChatGPT session working on
this repository.

## Reading order

1. Read this file.
2. Open the current sprint from
   [`sprints/SPRINT_INDEX.md`](sprints/SPRINT_INDEX.md).
3. Read that sprint's `SPRINT_CONTEXT.md`.
4. Read only the implementation records for stories relevant to the task.
5. Read the relevant dated sections from `CALL_REVIEW_NOTES.md`.
6. Use `DAILY_STANDUP.md` only for current status.

## Context hierarchy

```text
CONTEXT_HOME.md
  sprints/SPRINT_INDEX.md
    sprintNN_YYYY-MM-DD/
      SPRINT_CONTEXT.md
      CALL_REVIEW_NOTES.md
      DAILY_STANDUP.md
      SPRINT_HANDOFF.md
      story implementation records
```

## Source-of-truth rules

- Git is the durable source of truth after changes are committed and pushed.
- `SPRINT_CONTEXT.md` describes the sprint, scope, story index, and confirmed
  cross-story decisions.
- Story implementation records contain final technical details.
- `CALL_REVIEW_NOTES.md` preserves what people said, our interpretation,
  decisions, and follow-ups.
- `DAILY_STANDUP.md` is concise and may change daily.
- `SPRINT_HANDOFF.md` captures the final state and unresolved work before the
  next sprint begins.
- A transcript or suggestion is not a requirement until marked confirmed.
- Confirmed technical changes must be copied into the appropriate story record.
- Never store passwords, access tokens, or sensitive customer data in context
  files.

## Current sprint

Sprint 15, starting July 27, 2026:

[`sprints/sprint15_2026-07-27/SPRINT_CONTEXT.md`](sprints/sprint15_2026-07-27/SPRINT_CONTEXT.md)

## Starting a new sprint

1. Copy the files from `sprints/_template`.
2. Name the folder `sprintNN_YYYY-MM-DD`.
3. Add it to `sprints/SPRINT_INDEX.md`.
4. Change the Current sprint link above.
5. Complete the prior sprint's `SPRINT_HANDOFF.md`.
6. Link ongoing stories instead of copying their history into a new record.
