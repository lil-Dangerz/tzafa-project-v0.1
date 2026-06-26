# Field Lab

## Watch Role

Field Lab.

This folder stores Jupyter notebooks, Quarto documents, notebook review records, and notebook-related workflow references used by the project.

It is not the verified truth ledger. It is not the raw evidence vault.

## Purpose

Use `04_notebooks/` to preserve:

```text
jupyter notebooks
quarto documents
analysis workflows
execution notes
notebook status
input evidence references
query references
output references
reproducibility notes
```

Notebook work must not live only in chat.

If a notebook or Quarto document matters to project work, it should be stored or referenced here and registered in the notebook index.

## Core Files and Folders

| File or Folder | Purpose |
|---|---|
| `NOTEBOOK_INDEX.md` | Register important notebooks, Quarto documents, status, and supporting references. |
| `jupyter/` | Store Jupyter notebook files such as `.ipynb`. |
| `quarto/` | Store Quarto source files such as `.qmd`. |

## File Boundaries

### `04_notebooks/`

Use this folder for exploratory, analytical, or reporting-oriented working documents.

### `02_evidence/`

Use `02_evidence/` for raw proof artifacts, source exports, screenshots, configs, samples, and retained evidence.

Do not treat notebooks themselves as evidence unless they are being intentionally retained as evidence and clearly registered as such.

### `03_queries/`

Use `03_queries/` for important query logic and query status.

If a notebook depends on an important query, register that query there.

### `05_reports/`

Use `05_reports/` for audience-facing reports and finalized writeups.

Do not use notebooks as the only durable location for final reporting.

### `06_outputs/`

Use `06_outputs/` for generated charts, rendered tables, exports, figures, HTML, PDFs, and other produced artifacts.

If a notebook generates important outputs, store or reference them there and index them as needed.

### `PROJECT_STATE.md`

Use `PROJECT_STATE.md` for confirmed truth, not for storing notebook code or exploratory analysis steps.

## Notebook Types

Use one of these notebook types when possible:

```text
jupyter
quarto
mixed
other
```

## Notebook Status Values

Use one of:

```text
draft
working
validated
stale
deprecated
unknown
```

## Reproducibility Rule

Do not mark notebook work as `validated` unless there is explicit confirmation from the user or supplied evidence showing that it is reproducible and fit for its stated purpose.

Use:

```text
draft     = started but incomplete or unreviewed
working   = actively used but not fully validated
validated = explicitly confirmed reproducible and fit for purpose
stale     = no longer current against the latest evidence, queries, or mission
```

## Notebook Handling Rules

- Store important notebooks and Quarto documents in stable locations under this folder.
- Register important notebook work in `NOTEBOOK_INDEX.md`.
- Record input evidence, query dependencies, and output references when known.
- Note reproducibility risks, hidden local path risks, and stale dependency risks when discovered.
- Do not silently treat notebook conclusions as verified truth.
- Do not let notebooks become the only record of important outputs, assumptions, or workflow decisions.
- Prefer stable descriptive names over vague temporary notebook names.

## Review and Update Flow

Notebook work should normally move through this pattern:

```text
create or capture notebook work
store it under 04_notebooks/
register it in NOTEBOOK_INDEX.md
review inputs, dependencies, and reproducibility
store important outputs in 06_outputs/
reference durable findings from project state, reports, decisions, or handoffs when needed
mark stale or deprecated notebook work clearly when it is no longer reliable
```

The preferred prompt for notebook review is:

```text
prompts/notebook-review.prompt.md
```

That prompt may update only:

```text
04_notebooks/NOTEBOOK_INDEX.md
06_outputs/OUTPUT_INDEX.md
```

## Naming Guidance

When useful, organize notebook work by stable descriptive names.

Good examples:

```text
jupyter/returns-flow-latency-analysis.ipynb
quarto/quality-gate-summary.qmd
jupyter/incident-p1-timeline-reconstruction.ipynb
quarto/network-observability-baseline.qmd
```

Avoid names like:

```text
test.ipynb
new-notebook.ipynb
analysis2.qmd
working-file.qmd
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
AI_HANDOFF.md
TOOL_NOTES.md
```

## Safety Rules

Do not store secrets, credentials, API keys, tokens, private keys, certificates, or restricted data in this folder unless explicitly sanitized and approved.

Do not treat notebook execution success alone as proof that conclusions are correct.

Do not let hidden local machine paths, personal environment assumptions, or unsaved local state become undocumented dependencies.

## Last Updated

Local time: `[YYYY-MM-DD HH:MM timezone]`

Updated by: `[Human/ChatGPT/Codex/etc.]`
