# Signal Desk

## Watch Role

Signal Desk.

This folder stores audience-facing reports, finalized writeups, report exports, and report tracking records used by the project.

It is not the verified truth ledger. It is not the raw evidence vault. It is not the notebook workspace.

## Purpose

Use `05_reports/` to preserve:

```text
draft reports
final reports
rendered report exports
audience-specific writeups
report status
source references
output references
supersession notes
publication notes
```

Report work must not live only in chat.

If a report matters to project work, it should be stored or referenced here and registered in the report index.

## Core Files

| File | Purpose |
|---|---|
| `REPORT_INDEX.md` | Register important reports, status, audience, and supporting references. |

## File Boundaries

### `05_reports/`

Use this folder for audience-facing deliverables and report artifacts intended to communicate findings, status, or decisions.

### `02_evidence/`

Use `02_evidence/` for raw proof artifacts, retained references, and evidence that supports reports.

Do not treat reports themselves as raw evidence unless a report artifact is intentionally being retained as evidence and clearly registered as such.

### `03_queries/`

Use `03_queries/` for important query logic and query status.

If a report depends on important query logic, register that query there.

### `04_notebooks/`

Use `04_notebooks/` for exploratory analysis, Jupyter work, Quarto working documents, and reproducibility workflows.

Do not use final reports as the only record of the notebook process that produced them.

### `06_outputs/`

Use `06_outputs/` for generated charts, tables, figures, attachments, exports, and other produced artifacts referenced by reports.

If a report depends on important produced artifacts, store or reference them there and index them as needed.

### `PROJECT_STATE.md`

Use `PROJECT_STATE.md` for confirmed current truth, not for storing full report bodies.

## Report Types

Use one of these report types when possible:

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

## Report Handling Rules

- Store important reports in stable locations under this folder.
- Register important report work in `REPORT_INDEX.md`.
- Record evidence, query, notebook, and output relationships when known.
- Record intended audience when known.
- Note superseded, deprecated, or replaced reports clearly.
- Do not silently treat report wording as verified truth if the underlying evidence is incomplete or uncertain.
- Prefer stable descriptive names over vague temporary report names.

## Review and Update Flow

Report work should normally move through this pattern:

```text
create or capture report work
store it under 05_reports/
register it in REPORT_INDEX.md
link supporting evidence, queries, notebooks, and outputs
review audience fit, status, and supersession
reference durable conclusions from project state, decisions, or handoffs when needed
mark superseded or deprecated reports clearly when they should no longer be reused
```

There is no dedicated report-authoring prompt in the current template prompt set.

Report creation or revision may still be performed by a human or AI tool when explicitly instructed, but report status and references should be registered here.

## Naming Guidance

When useful, organize report work by stable descriptive names.

Good examples:

```text
returns-flow-investigation-summary-2026-06-25.md
quality-gate-validation-report-q2-2026.qmd
incident-p1-checkout-postmortem.html
network-observability-executive-summary.pdf
```

Avoid names like:

```text
report1.md
new-report.qmd
final-final.pdf
summary.html
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
05_reports/REPORT_INDEX.md
06_outputs/OUTPUT_INDEX.md
07_decisions/ARCHITECTURE_DECISIONS.md
AI_HANDOFF.md
TOOL_NOTES.md
```

## Safety Rules

Do not store secrets, credentials, API keys, tokens, private keys, certificates, or restricted data in this folder unless explicitly sanitized and approved.

Do not let polished wording hide missing evidence, stale dependencies, or unresolved uncertainty.

Do not treat a report as current just because it looks finished; check its status and supporting references.

## Last Updated

Local time: `[YYYY-MM-DD HH:MM timezone]`

Updated by: `[Human/ChatGPT/Codex/etc.]`
