# Open Questions

## Watch Role

Unresolved Signal Register.

This file tracks questions that affect project scope, evidence handling, investigation direction, decisions, implementation, validation, or closeout.

It prevents important uncertainty from disappearing inside chat history.

## Purpose

Use this file to record:

```text
unanswered questions
blocked questions
answered questions worth preserving
retired questions
questions affecting scope
questions affecting evidence validity
questions affecting query validity
questions affecting notebook or report interpretation
questions affecting handoff or closeout
```

Do not use this file for general notes, raw evidence, raw logs, query results, dashboard findings, or long-form investigation output.

## Question Status Values

Use one of:

- `open`
- `answered`
- `blocked`
- `retired`
- `unknown`

## Question Priority Values

Use one of:

- `low`
- `medium`
- `high`
- `critical`
- `unknown`

## Question Categories

Use one of:

- `scope`
- `evidence`
- `query`
- `dashboard`
- `notebook`
- `report`
- `tooling`
- `architecture`
- `decision`
- `handoff`
- `closeout`
- `other`
- `unknown`

## Entry Format

| ID | Status | Priority | Category | Question | Why It Matters | Owner | Source / Reference | Answer / Resolution | Last Updated |
|---|---|---|---|---|---|---|---|---|---|
| `Q-0001` | `[open/answered/blocked/retired/unknown]` | `[priority]` | `[category]` | `[Question]` | `[Impact]` | `[Owner or Unknown]` | `[Path, chat reference, or Unknown]` | `[Answer or Pending]` | `[YYYY-MM-DD HH:MM timezone]` |

## Current Questions

| ID | Status | Priority | Category | Question | Why It Matters | Owner | Source / Reference | Answer / Resolution | Last Updated |
|---|---|---|---|---|---|---|---|---|---|
| `Q-0001` | `[open]` | `[unknown]` | `[unknown]` | `[Initial question]` | `[Why it matters]` | `[Unknown]` | `[Unknown]` | `[Pending]` | `[YYYY-MM-DD HH:MM timezone]` |

## Update Rules

Add new questions with a stable ID.

Do not delete answered or retired questions unless explicitly instructed.

When a question is answered, change Status to answered and fill Answer / Resolution.

When a question no longer matters, change Status to retired and explain why.

When a question blocks work, change Status to blocked and add the blocking reason.

Use paths when referencing project files.

Do not mark a question as answered unless the answer is evidence-backed, file-backed, or explicitly confirmed by the human.

## Cross-References

Relevant files:

- `CURRENT_MISSION.md`
- `PROJECT_STATE.md`
- `AI_CONTEXT.md`
- `AI_HANDOFF.md`
- `00_control/WORK_LOG.md`
- `00_control/RISK_REGISTER.md`
- `00_control/DECISION_LOG.md`
- `02_evidence/EVIDENCE_INDEX.md`
- `03_queries/QUERY_REGISTRY.md`
- `04_notebooks/NOTEBOOK_INDEX.md`
- `05_reports/REPORT_INDEX.md`
- `06_outputs/OUTPUT_INDEX.md`
- `07_decisions/ARCHITECTURE_DECISIONS.md`

## Safety Rules

Do not store secrets, credentials, API keys, tokens, private keys, certificates, or restricted data in this file.

Do not paste raw logs or large evidence extracts into this file.

Do not use this file as evidence storage.

Do not let old chat memory answer questions without file-backed or human-confirmed support.

## Last Updated

Local time: `[YYYY-MM-DD HH:MM timezone]`

Updated by: `[Human/ChatGPT/Codex/etc.]`
