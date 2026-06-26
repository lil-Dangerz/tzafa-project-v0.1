# Evidence Index

## Watch Role

Evidence Register.

This file tracks current evidence used by the project.

It helps humans and AI tools know what evidence exists, where it came from, how trustworthy it is, and whether it should still be used.

## Purpose

Use this file to record:

```text
evidence ID
evidence name
evidence type
location or reference
source
status
timestamp if known
original/copy/export/shortened/transformed/derived state
sensitivity notes
replacement or conflict relationships
follow-up validation needs
```

Do not use this file for raw evidence payloads, investigation conclusions, query logic, notebook outputs, or final reports.

## Evidence Types

Use one of:

```text
log
metric_export
trace_export
event_export
dashboard_export
screenshot
config
schema
sample
notebook
report
ticket
external_reference
other
```

## Evidence Status Values

Use one of:

```text
raw
working
validated
deprecated
conflicting
unknown
```

## Entry Format

| Evidence ID | Name | Type | Location / Reference | Source | Status | Date / Time | Form | Sensitive? | Replaces / Conflicts | Validation Needed | Notes |
|---|---|---|---|---|---|---|---|---|---|---|---|
| E-0001 | `[Evidence name]` | `[Type]` | `[Path, URL, system, or note]` | `[Source]` | `[Status]` | `[YYYY-MM-DD HH:MM timezone or Unknown]` | `[original/copy/export/shortened/transformed/derived/unknown]` | `[Yes/No/Unknown]` | `[Reference or None]` | `[Yes/No/Unknown]` | `[Notes]` |

## Current Evidence

| Evidence ID | Name | Type | Location / Reference | Source | Status | Date / Time | Form | Sensitive? | Replaces / Conflicts | Validation Needed | Notes |
|---|---|---|---|---|---|---|---|---|---|---|---|
| E-0001 | `[Evidence name]` | `[Type]` | `[Path, URL, system, or note]` | `[Source]` | `[Status]` | `[YYYY-MM-DD HH:MM timezone or Unknown]` | `[original/copy/export/shortened/transformed/derived/unknown]` | `[Yes/No/Unknown]` | `[Reference or None]` | `[Yes/No/Unknown]` | `[Notes]` |

## Registration Rules

- Add important evidence as soon as it becomes relevant to project work.
- Keep evidence IDs stable once assigned.
- Prefer one row per distinct evidence artifact or clearly defined evidence set.
- If an item becomes stale, suspicious, replaced, shortened, conflicting, or no longer trusted, record it in `DEPRECATED_EVIDENCE.md`.
- If evidence is referenced elsewhere, use the evidence ID when possible.
- Do not mark evidence as `validated` unless its reliability or intended use is explicitly confirmed.
- If an item is written but not checked, use `raw` or `working`, not `validated`.

## Relationship Rules

Use `Replaces / Conflicts` to track whether an evidence item:

- replaces an older export
- conflicts with another evidence item
- depends on a transformed or shortened source
- should no longer be used once another item exists

Examples:

```text
Replaces E-0003
Conflicts with E-0007
Derived from E-0002
None
```

## Cross-References

Relevant files:

```text
PROJECT_STATE.md
AI_CONTEXT.md
02_evidence/DEPRECATED_EVIDENCE.md
03_queries/QUERY_REGISTRY.md
04_notebooks/NOTEBOOK_INDEX.md
05_reports/REPORT_INDEX.md
06_outputs/OUTPUT_INDEX.md
AI_HANDOFF.md
```

## Safety Rules

Do not store secrets, credentials, API keys, tokens, private keys, certificates, or restricted data in this file unless explicitly sanitized and approved.

Do not paste large raw evidence payloads into this file.

If evidence is sensitive, record that fact in metadata and prefer sanitized references where possible.

Do not treat registration alone as proof of correctness.

## Last Updated

Local time: `[YYYY-MM-DD HH:MM timezone]`

Updated by: `[Human/ChatGPT/Codex/etc.]`
