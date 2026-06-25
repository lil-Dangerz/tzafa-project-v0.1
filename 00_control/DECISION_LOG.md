# Decision Log

## Watch Role

Tactical Decision Ledger.

This file records tactical and project-level decisions.

It preserves why a decision was made, who approved it, what it affects, and whether it remains active.

## Purpose

Use this file to record:

```text
mission scope decisions
workflow decisions
evidence handling decisions
query status decisions
tool usage decisions
prompt approval decisions
local template decisions
investigation direction decisions
handoff and closeout process decisions
```

Do not use this file for raw evidence, raw logs, query results, notebook outputs, dashboard findings, long-form analysis, or strategic architecture decisions.

Strategic or long-term design decisions belong in:

```text
07_decisions/ARCHITECTURE_DECISIONS.md
```

## Decision Status Values

Use one of:

```text
proposed
approved
rejected
superseded
active
deferred
unknown
```

## Decision Type Values

Use one of:

```text
scope
workflow
evidence
query
dashboard
notebook
report
tooling
prompt
handoff
closeout
template
investigation
other
unknown
```

## Entry Format

| ID | Status | Type | Decision | Reason | Approved By | Date / Time | Files Affected | Supersedes | Follow-Up |
|---|---|---|---|---|---|---|---|---|---|
| D-0001 | `[proposed/approved/rejected/superseded/active/deferred/unknown]` | `[type]` | `[Decision]` | `[Reason]` | `[Human/Unknown]` | `[YYYY-MM-DD HH:MM timezone]` | `[Path(s) or None]` | `[Decision ID or None]` | `[Follow-up or None]` |

## Current Decisions

| ID | Status | Type | Decision | Reason | Approved By | Date / Time | Files Affected | Supersedes | Follow-Up |
|---|---|---|---|---|---|---|---|---|---|
| D-0001 | `[unknown]` | `[unknown]` | `[Initial decision]` | `[Reason]` | `[Unknown]` | `[YYYY-MM-DD HH:MM timezone]` | `[Path(s) or None]` | `[None]` | `[Follow-up or None]` |

## Destination Rule

Use this file for tactical and project-level decisions.

Examples:

```text
approve prompt file contents
approve folder contents
accept or reject evidence handling process
mark a query as validated, deprecated, or superseded
choose a local-first workflow
approve AI tool usage boundaries
approve closeout or handoff process
```

Use `07_decisions/ARCHITECTURE_DECISIONS.md` for strategic, long-term, or architecture decisions.

Examples:

```text
template architecture
observability platform architecture
dashboard architecture
automation architecture
cross-project design standards
major data model choices
```

If the destination is unclear, mark:

```text
[Needs Human Routing]
```

## Update Rules

Add new decisions with a stable ID.

Do not delete rejected, superseded, or deferred decisions unless explicitly instructed.

When a decision is approved and currently in force, use `active` if ongoing status matters.

When a decision replaces another decision, fill `Supersedes`.

When a decision is no longer valid, keep the old entry and add a new entry explaining what changed.

Do not record a decision as approved unless the human explicitly approved it or the approval is file-backed.

## Prompt Authority

This file may be edited by:

```text
prompts/decision-record.prompt.md
```

Other prompts may propose updates only unless explicitly authorized.

## Cross-References

Relevant files:

```text
CURRENT_MISSION.md
PROJECT_STATE.md
AI_CONTEXT.md
AI_HANDOFF.md
00_control/WORK_LOG.md
00_control/OPEN_QUESTIONS.md
00_control/RISK_REGISTER.md
02_evidence/EVIDENCE_INDEX.md
03_queries/QUERY_REGISTRY.md
04_notebooks/NOTEBOOK_INDEX.md
05_reports/REPORT_INDEX.md
06_outputs/OUTPUT_INDEX.md
07_decisions/ARCHITECTURE_DECISIONS.md
TOOL_NOTES.md
```

## Safety Rules

Do not store secrets, credentials, API keys, tokens, private keys, certificates, or restricted data in this file.

Do not paste raw logs or large evidence extracts into this file.

Do not use this file as evidence storage.

Do not let AI tools silently approve their own decisions.

Human approval must be explicit for approved or active decisions.

## Last Updated

Local time: `[YYYY-MM-DD HH:MM timezone]`

Updated by: `[Human/ChatGPT/Codex/etc.]`