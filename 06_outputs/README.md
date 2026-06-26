# Output Forge

## Watch Role

Output Forge.

This folder stores generated artifacts, rendered files, produced tables, charts, figures, exports, attachments, and other output records used by the project.

It is not the verified truth ledger. It is not the raw evidence vault. It is not the report registry.

## Purpose

Use `06_outputs/` to preserve:

```text
generated tables
rendered charts
figures
attachments
html exports
pdf exports
csv exports
rendered files
output status
source references
supersession notes
```

Important outputs must not live only in chat, notebooks, or temporary local sessions.

If an output matters to project work, it should be stored or referenced here and registered in the output index.

## Core Files

| File | Purpose |
|---|---|
| `OUTPUT_INDEX.md` | Register important outputs, status, source relationships, and usage notes. |

## File Boundaries

### `06_outputs/`

Use this folder for produced artifacts generated from evidence, queries, notebooks, reports, dashboards, or other project work.

### `02_evidence/`

Use `02_evidence/` for raw proof artifacts, retained exports treated as evidence, screenshots treated as evidence, and source material.

Do not treat every produced output as evidence unless it is intentionally being retained as evidence and clearly registered as such.

### `03_queries/`

Use `03_queries/` for important query logic and query status.

If an output depends on important query logic, register that query there.

### `04_notebooks/`

Use `04_notebooks/` for exploratory analysis workflows, execution environments, and notebook source documents.

Do not rely on notebook files alone as the durable location for important produced artifacts.

### `05_reports/`

Use `05_reports/` for audience-facing reports and finalized writeups.

If an output is primarily an audience-facing report, register it there instead of only here.

### `PROJECT_STATE.md`

Use `PROJECT_STATE.md` for confirmed current truth, not for storing generated artifact files.

## Output Types

Use one of these output types when possible:

```text
table
chart
figure
attachment
html_export
pdf_export
csv_export
image
rendered_file
other
```

## Output Status Values

Use one of:

```text
draft
working
validated
superseded
deprecated
unknown
```

## Validation Rule

Do not mark an output as `validated` unless there is explicit confirmation from the user or supplied evidence showing that it is fit for its stated purpose.

Use:

```text
draft      = created but not reviewed
working    = usable for active work but not fully validated
validated  = explicitly confirmed fit for stated purpose
superseded = replaced by a newer or better output
```

## Output Handling Rules

- Store important produced artifacts in stable locations under this folder.
- Register important outputs in `OUTPUT_INDEX.md`.
- Record evidence, query, notebook, or report relationships when known.
- Note superseded, deprecated, or replaced outputs clearly.
- Do not silently treat polished outputs as verified truth if their underlying sources are uncertain.
- Prefer stable descriptive names over vague temporary output names.

## Review and Update Flow

Output work should normally move through this pattern:

```text
create or capture output
store it under 06_outputs/
register it in OUTPUT_INDEX.md
link supporting evidence, queries, notebooks, or reports
review output status and reuse risk
reference durable outputs from reports, decisions, or handoffs when needed
mark superseded or deprecated outputs clearly when they should no longer be reused
```

There is no dedicated output-only prompt in the current template prompt set.

`prompts/notebook-review.prompt.md` may update `06_outputs/OUTPUT_INDEX.md` when notebook or Quarto review identifies important outputs that should be indexed.

## Naming Guidance

When useful, organize output work by stable descriptive names.

Good examples:

```text
returns-flow-latency-chart-2026-06-25.png
quality-gate-summary-table-q2-2026.csv
incident-p1-dashboard-export-annotated.html
network-observability-baseline-figure-01.pdf
```

Avoid names like:

```text
output1.png
new-file.csv
final2.pdf
chart.html
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

Do not let stale or superseded outputs remain ambiguous if they could mislead future work.

Do not treat a generated artifact as verified just because it rendered successfully.

## Last Updated

Local time: `[YYYY-MM-DD HH:MM timezone]`

Updated by: `[Human/ChatGPT/Codex/etc.]`
