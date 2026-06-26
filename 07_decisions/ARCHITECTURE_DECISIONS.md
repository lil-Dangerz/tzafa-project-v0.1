# Architecture Decisions

## Watch Role

Strategic Decision Ledger.

This file records strategic, structural, or long-term decisions.

It preserves why a decision was made, who approved it, what it affects, and whether it remains active.

## Purpose

Use this file to record:

```text
template architecture decisions
platform architecture decisions
observability architecture decisions
workflow architecture decisions
automation architecture decisions
dashboard architecture decisions
major data design decisions
cross-project design standards
```

Do not use this file for raw evidence, raw logs, query results, notebook outputs, dashboard findings, long-form analysis, or tactical day-to-day decisions.

Tactical or project-level decisions belong in:

```text
00_control/DECISION_LOG.md
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
template_architecture
platform_architecture
observability_architecture
workflow_architecture
automation_architecture
dashboard_architecture
data_design
cross_project_design
other
unknown
```

## Entry Format

| ID | Status | Type | Decision | Rationale | Approved By | Date / Time | Areas Affected | Supersedes | Follow-Up |
|---|---|---|---|---|---|---|---|---|---|
| A-0001 | `[proposed/approved/rejected/superseded/active/deferred/unknown]` | `[type]` | `[Decision]` | `[Rationale]` | `[Human/Unknown]` | `[YYYY-MM-DD HH:MM timezone]` | `[Path(s), systems, or None]` | `[Decision ID or None]` | `[Follow-up or None]` |

## Current Architecture Decisions

| ID | Status | Type | Decision | Rationale | Approved By | Date / Time | Areas Affected | Supersedes | Follow-Up |
|---|---|---|---|---|---|---|---|---|---|
| A-0001 | `[unknown]` | `[unknown]` | `[Initial strategic decision]` | `[Rationale]` | `[Unknown]` | `[YYYY-MM-DD HH:MM timezone]` | `[Path(s), systems, or None]` | `[None]` | `[Follow-up or None]` |

## Destination Rule

Use this file for strategic, structural, or long-term decisions.

Examples:

```text
approve template layer boundaries
choose long-term project folder structure
define observability architecture standards
set automation scope boundaries
set dashboard architecture policy
approve cross-project design rules
choose durable source-of-truth policy
```

Use `00_control/DECISION_LOG.md` for tactical, operational, or local decisions.

Examples:

```text
approve a specific file checkpoint
accept a prompt revision
choose the next review checkpoint
mark a local workflow step as approved
accept evidence handling for the current session
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
00_control/DECISION_LOG.md
00_control/WORK_LOG.md
00_control/OPEN_QUESTIONS.md
00_control/RISK_REGISTER.md
02_evidence/EVIDENCE_INDEX.md
03_queries/QUERY_REGISTRY.md
04_notebooks/NOTEBOOK_INDEX.md
05_reports/REPORT_INDEX.md
06_outputs/OUTPUT_INDEX.md
07_decisions/README.md
TOOL_NOTES.md
```

## Safety Rules

Do not store secrets, credentials, API keys, tokens, private keys, certificates, or restricted data in this file.

Do not paste raw logs or large evidence extracts into this file.

Do not use this file as evidence storage.

Do not let AI tools silently approve their own strategic decisions.

Human approval must be explicit for approved or active decisions.

## Last Updated

Local time: `[YYYY-MM-DD HH:MM timezone]`

Updated by: `[Human/ChatGPT/Codex/etc.]`
