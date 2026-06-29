# Query Registry

## Watch Role

Query Register.

This file tracks important queries used by the project.

It helps humans and AI tools know what queries exist, what they are for, how trustworthy they are, and whether they should still be used.

## Purpose

Use this file to record:

```text
query ID
query name
query type
location or reference
purpose
status
evidence support
notebook/report links
replacement or deprecation relationships
validation notes
```

Do not use this file for raw evidence payloads, investigation conclusions, notebook outputs, or final reports.

## Query Types

Use one of:

```text
elasticsearch_dsl
esql
kql
lucene
painless
sql
promql
logql
api_query
other
```

## Query Status Values

Use one of:

```text
draft
tested
validated
broken
deprecated
superseded
unknown
```

## Validation Rule

Do not mark a query as `validated` unless there is explicit confirmation from the user or supplied evidence showing that it works for its stated purpose.

Use:

```text
draft     = written but not executed
tested    = executed but correctness not confirmed
validated = explicitly confirmed correct for stated purpose
```

## Entry Format

| Query ID | Name | Type | Location / Reference | Purpose | Status | Evidence Support | Related Notebook / Report | Replacement / Deprecation | Validation Notes | Notes |
|---|---|---|---|---|---|---|---|---|---|---|
| Q-0001 | `[Query name]` | `[Type]` | `[Path, URL, system, or note]` | `[Purpose]` | `[Status]` | `[Evidence ID, path, or Unknown]` | `[Notebook/report reference or None]` | `[Replacement, deprecation, or None]` | `[Validation note]` | `[Notes]` |

## Current Queries

| Query ID | Name | Type | Location / Reference | Purpose | Status | Evidence Support | Related Notebook / Report | Replacement / Deprecation | Validation Notes | Notes |
|---|---|---|---|---|---|---|---|---|---|---|
| Q-0001 | `search-latency-percentiles.esql` | `esql` | `03_queries/search-latency-percentiles.esql` | `Measure latency percentiles for search requests over time.` | `draft` | `E-0001` | `N-0001` | `None` | `Native dummy query file created on the dry-run branch; not executed.` | `Intended to support later latency trend analysis.` |
| Q-0002 | `stale-result-alerts.kql` | `kql` | `03_queries/stale-result-alerts.kql` | `Filter observability events associated with stale-result alert conditions.` | `tested` | `E-0004, E-0005` | `N-0001` | `None` | `Dummy execution assumed for dry-run classification, but correctness is not confirmed.` | `Should be preferred over screenshot-only interpretation once validated against raw events.` |
| Q-0003 | `freshness-bucket-summary.sql` | `sql` | `03_queries/freshness-bucket-summary.sql` | `Summarize freshness age distribution into operational buckets.` | `draft` | `E-0002` | `N-0001` | `None` | `Native dummy query file created on the dry-run branch; not executed.` | `Candidate query for later notebook-based freshness distribution review.` |
| Q-0004 | `search-cluster-error-filter.lucene` | `lucene` | `03_queries/search-cluster-error-filter.lucene` | `Identify search-cluster error events relevant to degraded search quality.` | `broken` | `E-0001` | `None` | `Superseded candidate pending replacement` | `Known broken in dry-run scenario because field names are not yet confirmed.` | `Do not reuse until evidence-backed field names are confirmed.` |

## Registration Rules

- Register important queries as soon as they matter to project work.
- Keep query IDs stable once assigned.
- Prefer one row per distinct query or clearly defined query variant.
- If a query becomes broken, deprecated, or superseded, update its status and explain why.
- If a query depends on evidence, notebook execution, or report validation, record that relationship.
- Do not mark a query as `validated` based on generation alone.

## Relationship Rules

Use `Replacement / Deprecation` to track whether a query:

- supersedes an older query
- replaces a broken or deprecated version
- depends on a query variant
- should no longer be used once another query exists

Examples:

```text
Supersedes Q-0003
Deprecated in favor of Q-0008
Broken after field rename; see Q-0011
None
```

## Cross-References

Relevant files:

```text
PROJECT_STATE.md
AI_CONTEXT.md
02_evidence/EVIDENCE_INDEX.md
03_queries/README.md
04_notebooks/NOTEBOOK_INDEX.md
05_reports/REPORT_INDEX.md
AI_HANDOFF.md
TOOL_NOTES.md
```

## Safety Rules

Do not store secrets, credentials, API keys, tokens, private keys, certificates, or restricted data in this file unless explicitly sanitized and approved.

Do not treat registration alone as proof of correctness.

Do not let old chat memory override registered query status.

## Last Updated

Local time: `[YYYY-MM-DD HH:MM timezone]`

Updated by: `[Human/ChatGPT/Codex/etc.]`
