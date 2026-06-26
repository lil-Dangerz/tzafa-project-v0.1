# Output Index

## Watch Role

Output Register.

This file tracks important outputs used by the project.

It helps humans and AI tools know what generated artifacts exist, what they are for, what produced them, how trustworthy they are, and whether they should still be used.

## Purpose

Use this file to record:

```text
output ID
output name
output type
location or reference
purpose
status
source relationships
related evidence/query/notebook/report references
replacement or deprecation relationships
validation or reuse notes
```

Do not use this file for raw evidence payloads, large notebook code, full report bodies, query logic, or project truth.

## Output Types

Use one of:

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

## Entry Format

| Output ID | Name | Type | Location / Reference | Purpose | Status | Source Relationship | Related Evidence / Query / Notebook / Report | Replacement / Deprecation | Validation / Reuse Notes | Notes |
|---|---|---|---|---|---|---|---|---|---|---|
| O-0001 | `[Output name]` | `[Type]` | `[Path, URL, system, or note]` | `[Purpose]` | `[Status]` | `[Generated from notebook/report/query/dashboard/manual process or Unknown]` | `[Evidence/query/notebook/report reference or None]` | `[Replacement, deprecation, or None]` | `[Validation, reuse, or risk note]` | `[Notes]` |

## Current Outputs

| Output ID | Name | Type | Location / Reference | Purpose | Status | Source Relationship | Related Evidence / Query / Notebook / Report | Replacement / Deprecation | Validation / Reuse Notes | Notes |
|---|---|---|---|---|---|---|---|---|---|---|
| O-0001 | `[Output name]` | `[Type]` | `[Path, URL, system, or note]` | `[Purpose]` | `[Status]` | `[Generated from notebook/report/query/dashboard/manual process or Unknown]` | `[Evidence/query/notebook/report reference or None]` | `[Replacement, deprecation, or None]` | `[Validation, reuse, or risk note]` | `[Notes]` |

## Registration Rules

- Register important outputs as soon as they matter to project work.
- Keep output IDs stable once assigned.
- Prefer one row per distinct output artifact or clearly defined output set.
- Record evidence, query, notebook, and report relationships when known.
- If an output becomes superseded or deprecated, update its status and explain why.
- Do not mark an output as `validated` based on rendering success alone.
- If an output is referenced elsewhere, use the output ID when useful.

## Relationship Rules

Use `Replacement / Deprecation` to track whether an output:

- supersedes an older output
- replaces a draft or outdated version
- should no longer be used once another output exists
- depends on a later corrected source

Examples:

```text
Supersedes O-0003
Deprecated after evidence refresh; replaced by O-0008
Superseded by final PDF export
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
05_reports/REPORT_INDEX.md
06_outputs/README.md
07_decisions/ARCHITECTURE_DECISIONS.md
AI_HANDOFF.md
TOOL_NOTES.md
```

## Safety Rules

Do not store secrets, credentials, API keys, tokens, private keys, certificates, or restricted data in this file unless explicitly sanitized and approved.

Do not treat output registration alone as proof of correctness.

Do not let stale or superseded outputs remain ambiguous if they could mislead future work.

## Last Updated

Local time: `[YYYY-MM-DD HH:MM timezone]`

Updated by: `[Human/ChatGPT/Codex/etc.]`
