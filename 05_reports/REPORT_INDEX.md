# Report Index

## Watch Role

Report Register.

This file tracks important reports used by the project.

It helps humans and AI tools know what reports exist, what they are for, who they are for, what they depend on, how trustworthy they are, and whether they should still be used.

## Purpose

Use this file to record:

```text
report ID
report name
report type
location or reference
purpose
audience
status
evidence support
query/notebook/output references
replacement or deprecation relationships
approval or publication notes
```

Do not use this file for raw evidence payloads, large report bodies, notebook code, query logic, or project truth.

## Report Types

Use one of:

```text
investigation_report
status_report
incident_report
validation_report
executive_summary
dashboard_summary
postmortem
runbook_note
other
```

## Report Status Values

Use one of:

```text
draft
in_review
approved
published
superseded
deprecated
unknown
```

## Approval Rule

Do not mark a report as `approved` or `published` unless there is explicit confirmation from the user or supplied evidence showing that it is fit for its stated audience and purpose.

Use:

```text
draft      = started but incomplete or unreviewed
in_review  = materially drafted and under review
approved   = explicitly accepted for intended use
published  = approved and treated as issued or delivered
```

## Entry Format

| Report ID | Name | Type | Location / Reference | Purpose | Audience | Status | Evidence Support | Related Query / Notebook / Output | Replacement / Deprecation | Approval / Publication Notes | Notes |
|---|---|---|---|---|---|---|---|---|---|---|---|
| R-0001 | `dry-run-validation-report-2026-06-29.md` | `validation_report` | `05_reports/dry-run-validation-report-2026-06-29.md` | `Document the full dummy dry run, its findings, and the recommended reusable-template follow-up.` | `Human QA, AI QA, template maintainer` | `draft` | `E-0001, E-0002, E-0003, E-0004, E-0005` | `Q-0001, Q-0002, Q-0003, Q-0004; N-0001; O-0001; O-0002` | `None` | `Not yet approved; includes a planned future implementation target on development.` | `Dry-run validation artifact for branch-level review only; do not treat as reusable project truth.` |

## Current Reports

| Report ID | Name | Type | Location / Reference | Purpose | Audience | Status | Evidence Support | Related Query / Notebook / Output | Replacement / Deprecation | Approval / Publication Notes | Notes |
|---|---|---|---|---|---|---|---|---|---|---|---|
| R-0001 | `[Report name]` | `[Type]` | `[Path, URL, system, or note]` | `[Purpose]` | `[Audience or Unknown]` | `[Status]` | `[Evidence IDs, path, or Unknown]` | `[Query/notebook/output reference or None]` | `[Replacement, deprecation, or None]` | `[Approval, publication, or review note]` | `[Notes]` |

## Registration Rules

- Register important reports as soon as they matter to project work.
- Keep report IDs stable once assigned.
- Prefer one row per distinct report or clearly defined report artifact.
- Record evidence, query, notebook, and output relationships when known.
- If a report becomes superseded or deprecated, update its status and explain why.
- Do not mark a report as `approved` or `published` based on polished wording alone.
- If a report exists in multiple forms, record the durable or primary reference and note the other forms when useful.

## Relationship Rules

Use `Replacement / Deprecation` to track whether a report:

- supersedes an older report
- replaces a draft or outdated version
- should no longer be used once another report exists
- depends on a later corrected issue or publication

Examples:

```text
Supersedes R-0003
Deprecated after evidence refresh; replaced by R-0008
Superseded by published PDF version
None
```

## Cross-References

Relevant files:

```text
PROJECT_STATE.md
AI_CONTEXT.md
02_evidence/EVIDENCE_INDEX.md
02_evidence/DEPRECATED_EVIDENCE.md
03_queries/QUERY_REGISTRY.md
04_notebooks/NOTEBOOK_INDEX.md
05_reports/README.md
06_outputs/OUTPUT_INDEX.md
07_decisions/ARCHITECTURE_DECISIONS.md
AI_HANDOFF.md
TOOL_NOTES.md
```

## Safety Rules

Do not store secrets, credentials, API keys, tokens, private keys, certificates, or restricted data in this file unless explicitly sanitized and approved.

Do not treat report registration alone as proof of correctness.

Do not let superseded or deprecated reports remain ambiguous if they could mislead future work.

## Last Updated

Local time: `[YYYY-MM-DD HH:MM timezone]`

Updated by: `[Human/ChatGPT/Codex/etc.]`
