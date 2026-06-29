# AI Handoff

## Watch Role

Relay Packet.

This file transfers active work between humans, ChatGPT windows, Codex, VS Code, Jupyter, Quarto, notebooks, machines, or future automation.

## Purpose

Use this file when work needs to continue somewhere else.

Examples:

- from one ChatGPT window to another
- from ChatGPT to Codex
- from Codex back to ChatGPT
- from notebook analysis back to documentation
- from one computer to another
- from one work session to the next

## Usage Rule

This file has two roles:

1. `Current Active Handoff`
   - refreshed when work is transferred
   - contains the current relay instruction
   - should be concise and actionable

2. `Handoff History`
   - receives a short entry for each transfer
   - preserves traceability without keeping every old relay in full detail

Do not treat this file as permanent project truth. Verified truth belongs in `PROJECT_STATE.md`.

Do not store raw evidence here. Evidence belongs in `02_evidence/`.

Do not store query libraries here. Queries belong in `03_queries/`.

Do not store notebook outputs here. Notebook outputs belong in `04_notebooks/` or `06_outputs/`.

## Start-of-Session Procedure

At the start of a new chat, tool session, or work session, read:

```text
CURRENT_MISSION.md
PROJECT_STATE.md
AI_CONTEXT.md
AI_HANDOFF.md
```

When durable background context matters, also read the relevant files from:

```text
01_context/DOMAIN_NOTES.md
01_context/VOCABULARY.md
01_context/SYSTEM_OVERVIEW.md
01_context/TOPOLOGY.md
01_context/CONTEXT_INDEX.md
```

When evidence-heavy work is being handed off, also read:

```text
02_evidence/README.md
02_evidence/EVIDENCE_INDEX.md
02_evidence/DEPRECATED_EVIDENCE.md
```

When query-heavy work is being handed off, also read:

```text
03_queries/README.md
03_queries/QUERY_REGISTRY.md
```

When notebook-heavy work is being handed off, also read:

```text
04_notebooks/README.md
04_notebooks/NOTEBOOK_INDEX.md
```

When report-heavy work is being handed off, also read:

```text
05_reports/README.md
05_reports/REPORT_INDEX.md
```

When output-heavy work is being handed off, also read:

```text
06_outputs/README.md
06_outputs/OUTPUT_INDEX.md
```

When decision-heavy work is being handed off, also read:

```text
00_control/DECISION_LOG.md
07_decisions/README.md
07_decisions/ARCHITECTURE_DECISIONS.md
```

When workbench-heavy or experiment-staging work is being handed off, also read:

```text
08_workbench/README.md
```

When archive-heavy or closeout-history work is being handed off, also read:

```text
09_archive/README.md
```

When automation-heavy or helper-script work is being handed off, also read:

```text
10_automation/README.md
```

Then continue from the `Current Active Handoff`.

If the handoff conflicts with `PROJECT_STATE.md`, treat `PROJECT_STATE.md` as the higher authority and flag the conflict.

## End-of-Session Procedure

At the end of a session, update this file with:

- what was done
- what changed
- files created, modified, or referenced
- current blockers
- warnings or mistakes to avoid
- exact next task
- recommended files for the next session to read

If durable background context was discovered during the session, do not silently treat it as project truth.

Instead, propose a follow-up update to the correct `01_context/` file.

If evidence handling, evidence hygiene, or evidence trust status changed during the session, make sure the next session is pointed to the relevant `02_evidence/` files.

If query handling, query validation, or query trust status changed during the session, make sure the next session is pointed to the relevant `03_queries/` files.

If notebook handling, notebook reproducibility, notebook status, Quarto workflow, or notebook output relationships changed during the session, make sure the next session is pointed to the relevant `04_notebooks/` files and any related `06_outputs/` records.

If report drafting, report review, report status, audience targeting, publication state, or report output relationships changed during the session, make sure the next session is pointed to the relevant `05_reports/` files and any related `06_outputs/` records.

If output generation, output review, output status, output supersession, or output reuse risk changed during the session, make sure the next session is pointed to the relevant `06_outputs/` files.

If tactical or strategic decision status, decision routing, architecture rules, or long-term design choices changed during the session, make sure the next session is pointed to the relevant `00_control/DECISION_LOG.md` and `07_decisions/` files.

If scratch material, experiment staging, temporary comparisons, or workbench promotion decisions changed during the session, make sure the next session is pointed to the relevant `08_workbench/` files and any promoted durable destinations.

If archive status, closure bundles, retired material, or restore decisions changed during the session, make sure the next session is pointed to the relevant `09_archive/` files and any related active registries or ledgers.

If automation scope, helper scripts, execution wrappers, Docker assets, or automation output routing changed during the session, make sure the next session is pointed to the relevant `10_automation/` files and any related durable destinations.

Refresh `Current Active Handoff`.

Append one short row to `Handoff History`.

Every handoff must carry artifact-routing awareness forward so the next agent does not need the human to restate destinations.

## Current Active Handoff

### Handoff Status

`Open`

### From

`Codex`

### To

`ChatGPT window / Codex / Human reviewer`

### Current Relay Task

`Review the completed dry-run routing pass, decide whether to run cleanup verification, and determine whether stale control files should be reconciled outside closeout authority.`

### Mission Context

`This relay preserves the current dry-run validation state after mission initialization, native dummy artifact creation, dashboard review, and closeout drafting so the next session can continue without relying on chat memory.`

### What Was Completed

- `Initialized the dummy catalog search reliability mission baseline.`
- `Registered dummy evidence items and one deprecated screenshot reference.`
- `Registered dummy queries, notebook workflow, and derived outputs.`
- `Created native dummy evidence, query, notebook, and output artifacts in their routed folders.`
- `Completed a read-only dashboard review and a closeout draft.`

### What Changed

| File / Area | Change | Status |
|---|---|---|
| `CURRENT_MISSION.md` | `Initialized with dummy mission scope and active action.` | `Done` |
| `PROJECT_STATE.md` | `Initialized with supplied dummy facts, assumptions, and blind spots.` | `Done` |
| `AI_CONTEXT.md` | `Initialized with routing-aware mission context.` | `Done` |
| `01_context/` | `Initialized domain, vocabulary, system, topology, and context catalog state for the dummy mission.` | `Done` |
| `02_evidence/` | `Registered dummy evidence and one deprecated screenshot reference.` | `Done` |
| `03_queries/QUERY_REGISTRY.md` | `Registered draft, tested, and broken dummy queries.` | `Done` |
| `04_notebooks/NOTEBOOK_INDEX.md` | `Registered dummy notebook workflow.` | `Done` |
| `06_outputs/OUTPUT_INDEX.md` | `Registered dummy derived outputs.` | `Done` |
| `02_evidence/, 03_queries/, 04_notebooks/, 06_outputs/` | `Created native dummy artifacts to match the registered routing paths.` | `Done` |
| `Dashboard review` | `Completed diagnostically against the dummy dashboard export and linked artifacts.` | `Done` |
| `Closeout draft` | `Completed diagnostically for the dry-run validation phase.` | `Done` |

### Files to Read First

- `CURRENT_MISSION.md`
- `PROJECT_STATE.md`
- `AI_CONTEXT.md`
- `02_evidence/EVIDENCE_INDEX.md`
- `02_evidence/DEPRECATED_EVIDENCE.md`
- `03_queries/QUERY_REGISTRY.md`
- `04_notebooks/NOTEBOOK_INDEX.md`
- `06_outputs/OUTPUT_INDEX.md`
- `00_control/WORK_LOG.md`
- `prompts/closeout.prompt.md`

### Files Likely to Update

- `AI_HANDOFF.md`
- `00_control/WORK_LOG.md`
- `PROJECT_STATE.md`
- `CURRENT_MISSION.md`
- `AI_CONTEXT.md`

### Artifact Routing Status

Artifact Routing Rules Active: `Yes`

Routing Source: `AI_CONTEXT.md`

Evidence routing: `Active; evidence items are registered in 02_evidence registries with IDs E-0001 through E-0005 and now have native dummy files.`

Query routing: `Active; queries are registered in 03_queries/QUERY_REGISTRY.md with IDs Q-0001 through Q-0004 and now have native dummy files.`

Notebook routing: `Active; notebook work is registered in 04_notebooks/NOTEBOOK_INDEX.md as N-0001 and now has a native dummy notebook file.`

Report routing: `No report artifacts created yet.`

Output routing: `Active; outputs are registered in 06_outputs/OUTPUT_INDEX.md as O-0001 and O-0002 and now have native dummy files.`

Decision routing: `No new tactical or strategic decisions recorded yet.`

Context routing: `Active; selected 01_context files were initialized during mission-init with strong supplied context.`

Tool-notes routing: `No new tool-note updates proposed yet.`

Workbench routing: `No workbench artifacts created yet.`

Archive routing: `No archive actions taken yet.`

Automation routing: `No automation artifacts created yet.`

Artifacts created this session:

- `02_evidence/search-api-latency-sample-2026-06-29.ndjson`
- `02_evidence/catalog-index-freshness-export-2026-06-29.csv`
- `02_evidence/kibana-search-reliability-dashboard-2026-06-29.ndjson`
- `02_evidence/stale-result-alert-screenshot-2026-06-29.png`
- `02_evidence/stale-result-alert-screenshot-full-2026-06-29.png`
- `03_queries/search-latency-percentiles.esql`
- `03_queries/stale-result-alerts.kql`
- `03_queries/freshness-bucket-summary.sql`
- `03_queries/search-cluster-error-filter.lucene`
- `04_notebooks/jupyter/search-latency-and-freshness-review.ipynb`
- `06_outputs/search-latency-percentiles-2026-06-29.png`
- `06_outputs/freshness-bucket-summary-2026-06-29.csv`

Artifacts needing registration:

- `None`

Routing concerns:

- `CURRENT_MISSION.md` and parts of AI_CONTEXT.md still describe a pre-artifact state and should be reconciled by a later authority-safe pass.`
- `The dashboard export is too thin to support trustworthy observability review beyond dry-run routing validation.`

### Open Issues / Blockers

- `Cleanup verification has not been executed yet.`
- `Control-layer staleness remains outside closeout prompt authority for CURRENT_MISSION.md and parts of AI_CONTEXT.md.`
- `Dummy artifacts remain unvalidated for analytical correctness and are suitable only for workflow testing.`

### Warnings

- `Do not treat any dummy artifact, query, notebook, or output as validated truth.`
- `Keep all dry-run content on the disposable branch until cleanup verification is complete.`

### Proposed Context Follow-Ups

- `None`

### Exact Next Action

`Decide whether to run cleanup verification on this dry-run branch or stop and review the branch as a workflow-validation sample.`

### Completion Criteria for This Handoff

This handoff is complete when:

- `The receiving session either runs cleanup verification or explicitly stops the dry-run branch.`
- `Any desired control-layer reconciliation outside closeout authority is handled in a separate pass.`

## Handoff History

| Local Date/Time | From | To | Relay Task | Status | Notes |
|---|---|---|---|---|---|
| `2026-06-29 11:20 America/Mexico_City` | `Codex` | `ChatGPT window / Codex / Human reviewer` | `Continue the dummy catalog search reliability dry-run after initialization, evidence, queries, and notebook/output linkage.` | `Open` | `Run handon before continuing.` |
| `2026-06-29 12:05 America/Mexico_City` | `Codex` | `ChatGPT window / Codex / Human reviewer` | `Review the routing-complete dry-run branch after dashboard review and closeout drafting.` | `Open` | `Cleanup verification remains optional.` |

## Edit Authority

This file is readable by all project tools.

Editable by:

- humans
- AI tools when explicitly instructed to create, refresh, or complete a handoff

AI tools should not update this file silently.

## Last Updated

Local time: `[YYYY-MM-DD HH:MM timezone]`

Updated by: `[Human/ChatGPT/Codex/etc.]`
