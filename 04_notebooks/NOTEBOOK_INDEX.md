# Notebook Index

## Watch Role

Notebook Register.

This file tracks important Jupyter notebooks and Quarto documents used by the project.

It helps humans and AI tools know what notebook work exists, what it is for, what it depends on, how trustworthy it is, and whether it should still be used.

## Purpose

Use this file to record:

```text
notebook ID
notebook name
notebook type
location or reference
purpose
status
execution environment if known
input evidence references
query references
output references
reproducibility notes
replacement or deprecation relationships
mission relevance
```

Do not use this file for raw evidence payloads, final reports, project truth, or large notebook output dumps.

## Notebook Types

Use one of:

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

## Validation Rule

Do not mark notebook work as `validated` unless there is explicit confirmation from the user or supplied evidence showing that it is reproducible and fit for its stated purpose.

Use:

```text
draft     = started but incomplete or unreviewed
working   = actively used but not fully validated
validated = explicitly confirmed reproducible and fit for purpose
stale     = no longer current against the latest evidence, queries, or mission
```

## Entry Format

| Notebook ID | Name | Type | Location / Reference | Purpose | Status | Environment / Kernel | Input Evidence | Query References | Output References | Reproducibility / Risk | Replacement / Deprecation | Mission Fit | Notes |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| N-0001 | `[Notebook name]` | `[Type]` | `[Path, URL, system, or note]` | `[Purpose]` | `[Status]` | `[Kernel, runtime, or Unknown]` | `[Evidence IDs, path, or Unknown]` | `[Query IDs, path, or None]` | `[Output path, report link, or None]` | `[Reproducibility note, local path risk, stale dependency risk, or Unknown]` | `[Replacement, deprecation, or None]` | `[Supports mission / Partial / No / Unknown]` | `[Notes]` |

## Current Notebook Work

| Notebook ID | Name | Type | Location / Reference | Purpose | Status | Environment / Kernel | Input Evidence | Query References | Output References | Reproducibility / Risk | Replacement / Deprecation | Mission Fit | Notes |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| N-0001 | `search-latency-and-freshness-review.ipynb` | `jupyter` | `04_notebooks/jupyter/search-latency-and-freshness-review.ipynb` | `Explore search latency percentiles and freshness degradation patterns.` | `working` | `Python 3.12 / pandas / matplotlib [dummy environment]` | `E-0001, E-0002, E-0005` | `Q-0001, Q-0002, Q-0003` | `O-0001, O-0002` | `Partially reproducible as a native dummy notebook, but evidence and outputs remain dummy artifacts and no executed result snapshot is captured.` | `None` | `Supports mission` | `Notebook is suitable for workflow testing but not for truth validation.` |

## Registration Rules

- Register important notebook or Quarto work as soon as it matters to project work.
- Keep notebook IDs stable once assigned.
- Prefer one row per distinct notebook or clearly defined notebook artifact.
- Record evidence, query, and output relationships when known.
- If notebook work becomes stale or deprecated, update its status and explain why.
- Do not mark notebook work as `validated` based on execution alone.
- If a notebook contains important outputs, store those outputs in the appropriate output or report location instead of relying only on the notebook file.

## Relationship Rules

Use `Replacement / Deprecation` to track whether notebook work:

- supersedes an older notebook
- replaces a stale or deprecated notebook
- depends on a notebook variant or later rerun
- should no longer be used once another notebook exists

Examples:

```text
Supersedes N-0003
Deprecated after evidence refresh; replaced by N-0008
Stale because it depends on deprecated query Q-0011
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
04_notebooks/README.md
05_reports/REPORT_INDEX.md
06_outputs/OUTPUT_INDEX.md
AI_HANDOFF.md
TOOL_NOTES.md
```

## Safety Rules

Do not store secrets, credentials, API keys, tokens, private keys, certificates, or restricted data in this file unless explicitly sanitized and approved.

Do not treat notebook registration alone as proof of correctness.

Do not let unsaved local state, machine-specific paths, or missing environment details remain undocumented when they affect reproducibility.

## Last Updated

Local time: `[YYYY-MM-DD HH:MM timezone]`

Updated by: `[Human/ChatGPT/Codex/etc.]`
