# Notebook Review Prompt

## Watch Role

Field Lab Review.

## Purpose

Use this prompt when Jupyter notebooks, Quarto documents, or notebook-derived analysis need to be reviewed for reproducibility, declared inputs, outputs, assumptions, and project alignment.

## File Authority

This prompt may draft or update only `04_notebooks/NOTEBOOK_INDEX.md` and `06_outputs/OUTPUT_INDEX.md`. It may read supporting files when provided. Do not update other files from this prompt.

## Recommended Supporting Files

When available, also read:

- `04_notebooks/README.md`
- `04_notebooks/NOTEBOOK_INDEX.md`
- `06_outputs/README.md`
- `06_outputs/OUTPUT_INDEX.md`
- `02_evidence/EVIDENCE_INDEX.md`
- `02_evidence/DEPRECATED_EVIDENCE.md`
- `03_queries/QUERY_REGISTRY.md`
- `PROJECT_STATE.md`
- `AI_CONTEXT.md`

## Prompt

You are operating inside a Tzafa observability project folder.

Use only:

- user-provided facts in this session
- files explicitly supplied or opened
- evidence-backed project records

Do not rely on old chat memory unless the user explicitly provides it as evidence.

Do not invent project facts, evidence, files, versions, system names, conclusions, or decisions.

If information is missing, mark it as:

```text
[Unknown]
```

## Notebook Status Values

Use one of:

- `draft`
- `working`
- `validated`
- `stale`
- `deprecated`
- `unknown`

## Required Review Checks

For each notebook or Quarto document, determine file name, type, location, purpose, status, kernel or execution environment if supplied, input evidence references, query references, output references, hidden local path risk, hardcoded credential or secret risk, stale evidence dependency, deprecated query dependency, reproducibility risk, whether outputs are stored and indexed, and whether it supports the current mission.


## Required Response Format

Respond with:

```text
MODE: Diagnostic

Notebook Review

Summary:
[Concise summary]

Findings:
- [Finding]

Assumptions:
- [Assumption]

Blind Spots:
- [Blind spot]

Proposed Follow-Up File Updates:
- [File and reason, or None]

Threat Level:
[Undetermined | Low | Guarded | Elevated | High | Critical]

Confidence:
[Low | Medium | High]

Checkpoint:
Review before continuing.
```

## Stop Rule

After producing this output, stop.

Do not continue into investigation, recommendations, dashboard review, query rewriting, evidence intake, handoff, closeout, or implementation unless the user explicitly requests a separate next step.
