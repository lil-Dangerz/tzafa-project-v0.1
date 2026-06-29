# AI Context

## Watch Role

Signal Brief.

This file gives AI tools the minimum operational context needed to assist without relying on long chat memory.

Use this file when starting a new ChatGPT window, Codex session, VS Code assistant session, or other AI-assisted workflow.

## Initialization Source

This file is normally created or refreshed during mission initialization using:

`prompts/mission-init.prompt.md`

It should be aligned with:

- `CURRENT_MISSION.md`
- `PROJECT_STATE.md`
- relevant evidence indexes
- relevant query registries
- relevant notebook indexes
- relevant report indexes
- relevant output indexes
- relevant decision records
- `TOOL_NOTES.md`

If this file conflicts with `PROJECT_STATE.md`, treat `PROJECT_STATE.md` as the higher authority.

## Source of Truth Rule

The project folder is the source of truth.

AI tools must prefer project files over chat memory.

Before analysis, recommendations, coding, query writing, notebook work, or dashboard work, read or request the relevant project files.

## Files to Read First

Minimum startup context:

```text
CURRENT_MISSION.md
PROJECT_STATE.md
AI_CONTEXT.md
```

For evidence work, also read:

```text
02_evidence/README.md
02_evidence/EVIDENCE_INDEX.md
02_evidence/DEPRECATED_EVIDENCE.md
```

For query work, also read:

```text
03_queries/README.md
03_queries/QUERY_REGISTRY.md
```

For notebook work, also read:

```text
04_notebooks/README.md
04_notebooks/NOTEBOOK_INDEX.md
```

For dashboard or observability-surface work, also read:

```text
02_evidence/README.md
02_evidence/EVIDENCE_INDEX.md
02_evidence/DEPRECATED_EVIDENCE.md
03_queries/QUERY_REGISTRY.md
04_notebooks/NOTEBOOK_INDEX.md
05_reports/README.md
05_reports/REPORT_INDEX.md
```

For report work, also read:

```text
05_reports/README.md
05_reports/REPORT_INDEX.md
```

For output work, also read:

```text
06_outputs/README.md
06_outputs/OUTPUT_INDEX.md
```

For decision work, also read:

```text
00_control/DECISION_LOG.md
07_decisions/README.md
07_decisions/ARCHITECTURE_DECISIONS.md
```

For workbench or experiment-staging work, also read:

```text
08_workbench/README.md
```

For archive or closeout-history work, also read:

```text
09_archive/README.md
```

For automation or helper-script work, also read:

```text
10_automation/README.md
```

For tool handoff, also read:

```text
AI_HANDOFF.md
TOOL_NOTES.md
```

When durable background context matters, also read the relevant files from:

```text
01_context/DOMAIN_NOTES.md
01_context/VOCABULARY.md
01_context/SYSTEM_OVERVIEW.md
01_context/TOPOLOGY.md
01_context/CONTEXT_INDEX.md
```

## Artifact Routing Brief

Agents should use this routing brief after initialization without requiring the human to repeat destinations for every artifact.

Routing knowledge does not grant unlimited edit authority. Agents must still obey the active prompt's file authority and checkpoint rules.

Evidence files, logs, screenshots, exports, samples -> `02_evidence/`

Evidence registry -> `02_evidence/EVIDENCE_INDEX.md`

Deprecated, replaced, or untrusted evidence -> `02_evidence/DEPRECATED_EVIDENCE.md`

Queries, query drafts, validated queries, broken queries -> `03_queries/`

Query registry -> `03_queries/QUERY_REGISTRY.md`

Jupyter notebooks, Quarto notebooks, analysis notebooks -> `04_notebooks/`

Notebook index -> `04_notebooks/NOTEBOOK_INDEX.md`

Narrative reports, investigation reports, final summaries -> `05_reports/`

Report index -> `05_reports/REPORT_INDEX.md`

Generated charts, CSVs, extracts, rendered artifacts, derived files -> `06_outputs/`

Output index -> `06_outputs/OUTPUT_INDEX.md`

Tactical or project decisions -> `00_control/DECISION_LOG.md`

Strategic or architecture decisions -> `07_decisions/ARCHITECTURE_DECISIONS.md`

Work trail -> `00_control/WORK_LOG.md`

Open questions -> `00_control/OPEN_QUESTIONS.md`

Risks -> `00_control/RISK_REGISTER.md`

Durable domain, system, vocabulary, or topology context -> `01_context/`

Context catalog -> `01_context/CONTEXT_INDEX.md`

Tool behavior, tool quirks, repeated AI mistakes -> `TOOL_NOTES.md`

Temporary scratch work -> `08_workbench/`

Archived or superseded material -> `09_archive/`

Automation and agent support -> `10_automation/`

## Project Summary

`Dummy Catalog Search Reliability Watch is a fictional observability project initialized to investigate latency and stale-result behavior without relying on chat memory.`

## Domain

`Search reliability / observability`

## Current Mission Snapshot

`Initialize the dummy catalog search reliability watch, capture durable context into 01_context, and prepare routing-aware project memory before any evidence, queries, dashboards, notebooks, reports, or outputs exist.`

## Key Systems

| System | Purpose | Notes |
|---|---|---|
| `Web Frontend` | `User-facing search entry point` | `Upstream of the search API in the supplied topology.` |
| `Search API` | `Receives search requests and coordinates the retrieval flow` | `Connects frontend, query service, and observability assumptions.` |
| `Query Service` | `Builds and submits ranked search requests to the search cluster` | `Critical path for latency and stale-result interpretation.` |
| `Indexer` | `Applies catalog updates to the search cluster` | `Relevant to result freshness and stale-result analysis.` |
| `Search Cluster` | `Stores and serves indexed search data` | `Primary dependency for result freshness and query response behavior.` |
| `Elasticsearch` | `Expected storage and query layer for logs and metrics` | `Human-supplied expected observability destination.` |
| `Kibana` | `Expected dashboard and observability surface` | `Human-supplied expected dashboard layer.` |

## Key Data Sources

| Source | Type | Location / Reference | Notes |
|---|---|---|---|
| `Search service logs` | `Logs` | `Expected in Elasticsearch` | `Dry-run expectation only; not yet verified by evidence.` |
| `Search dashboards` | `Dashboards` | `Expected in Kibana` | `Dry-run expectation only; no dashboard assets supplied yet.` |
| `Future reliability analysis` | `Notebook` | `Potential later notebook work` | `Notebook analysis may be used later; no notebook exists yet.` |

## Important Vocabulary

| Term | Meaning | Notes |
|---|---|---|
| `stale result` | `Search result returned from index data older than the allowed freshness window` | `Distinct from slow response latency.` |
| `result_freshness_minutes` | `Measured age of indexed search data in minutes` | `Dry-run field meaning.` |
| `error_budget_burn` | `Rate at which search reliability budget is being consumed` | `Dry-run reliability term.` |

## Active Constraints

- Only approved project facts should be treated as durable context.
- Evidence, query, notebook, report, and output artifacts must be routed to their assigned layers.
- Placeholder content in the reusable template must not be mistaken for project facts.

## Known Good References

| Reference | Type | Location | Notes |
|---|---|---|---|
| `Mission initialization prompt` | `Prompt` | `prompts/mission-init.prompt.md` | `Defines allowed initialization edits for this dry run.` |
| `Context catalog` | `Context` | `01_context/CONTEXT_INDEX.md` | `Tracks the initialized durable context files.` |
| `Mission order` | `Control` | `CURRENT_MISSION.md` | `Active dummy mission definition.` |

## Known Bad or Deprecated References

| Reference | Type | Location | Reason |
|---|---|---|---|
| `None recorded` | `None` | `None` | `No deprecated references have been recorded during initialization.` |

## AI Behavior Rules

AI tools must:

- distinguish confirmed facts from assumptions
- ask for evidence when the required artifact is missing
- avoid relying on old chat memory
- avoid treating examples as authoritative evidence
- avoid treating drafts as validated work
- read the evidence layer guidance before large evidence intake or evidence cleanup work
- read the query layer guidance before large query review or query cleanup work
- read the notebook layer guidance before large notebook review, notebook cleanup, Quarto review, or reproducibility work
- read the report layer guidance before large report drafting, report review, report cleanup, or report publication work
- read the output layer guidance before large output review, output cleanup, output validation, or output publication work
- read the decisions layer guidance before large strategic decision review, architecture review, or decision cleanup work
- read the workbench layer guidance before large scratch cleanup, experiment review, or temporary staging work
- read the archive layer guidance before large archive review, archive cleanup, closure bundling, or restore evaluation work
- read the automation layer guidance before large automation review, helper-script cleanup, or automation organization work
- check registries before reusing queries
- check deprecated evidence before using old artifacts
- check notebook status and reproducibility notes before reusing notebook work
- check report status and supporting references before reusing report work
- check output status and source relationships before reusing outputs
- check tactical and strategic decision status before relying on prior decision records
- avoid treating workbench material as durable truth unless explicitly promoted
- avoid treating archived material as active unless explicitly restored or revalidated
- avoid letting automation outputs bypass the normal registries and ledgers
- use the `Artifact Routing Brief` after initialization when deciding where artifacts belong
- obey active prompt authority before updating any routing destination or registry
- during initialization, allow selected `01_context/` updates only when supported by strong supplied sources
- classify weak context as an assumption, open question, or proposed context update instead of verified context
- record important outputs back into project files
- preserve uncertainty when evidence is incomplete

## Do Not Assume

- `[Do not assume placeholder material is project truth.]`
- `[Do not assume unsupported claims are durable context.]`
- `[Do not assume deprecated artifacts are current.]`

## Preferred Output Style for AI Tools

When useful, AI responses should include:

- current interpretation
- evidence used
- assumptions
- blind spots
- proposed file updates
- next checkpoint

## Edit Authority

This file is a controlled Signal Brief.

Readable by:

- humans
- ChatGPT
- Codex
- VS Code assistants
- notebooks or automation when needed

Editable by:

- humans
- AI tools only when explicitly instructed

AI tools must not silently update this file.

## Last Updated

Local time: `[YYYY-MM-DD HH:MM timezone]`

Updated by: `[Human/ChatGPT/Codex/etc.]`
