# Topology

## Watch Role

Lines and Boundaries.

This file records durable architecture, dependency, flow, and topology context that helps humans and AI tools understand how major parts of the project environment connect to each other.

It is not evidence. It is not the verified truth ledger.

## Purpose

Use this file to record:

```text
system-to-system relationships
dependency paths
data-flow paths
control-flow paths
environment boundaries
network or service boundaries
handoff points between components
text-native diagrams
```

Do not use this file for raw evidence, raw logs, query results, dashboard findings, notebook outputs, reports, or final conclusions.

Plain meaning:

```text
TOPOLOGY.md = the connection map that shows how important project components relate, depend, and flow into one another.
```

Working allegory:

```text
TOPOLOGY.md = roads and lines between places
SYSTEM_OVERVIEW.md = watchtower layout
DOMAIN_NOTES.md = terrain map
VOCABULARY.md = phrasebook
PROJECT_STATE.md = current intelligence report
```

This file explains how the major parts connect.

## What Belongs Here

Examples of topology notes include:

- service-to-service dependency paths
- source-to-storage-to-dashboard data flows
- boundaries between internal and external systems
- network or environment separations such as production, staging, or vendor edges
- pipeline stages that hand data or events from one component to another
- Mermaid diagrams showing how major components connect

These are examples of the kinds of durable structural connection notes that belong here.

They are illustrative guidance only.

Do not treat example content as actual project facts unless a copied project instance is later populated with confirmed topology.

## What Does Not Belong Here

Do not store:

- raw logs
- screenshots
- query output
- notebook output
- one-time incident timelines
- tool bugs
- temporary theories
- full external documentation
- credentials
- final report text
- current mission state
- verified project truth that belongs in `PROJECT_STATE.md`
- low-level packet traces or implementation details that belong in evidence

## Topology Summary

```text
The fictional catalog search service has a user-facing search path, an index-refresh path, and an observability path through Elasticsearch and Kibana.
```

## Major Connections

| Source | Destination | Relationship / Flow | Source / Reference | Status |
|---|---|---|---|---|
| `Web Frontend` | `Search API` | `User search requests flow into application handling.` | `Dry-run mission scenario` | `active` |
| `Search API` | `Query Service` | `Application requests move into ranked query execution handling.` | `Dry-run mission scenario` | `active` |
| `Query Service` | `Search Cluster` | `Search queries are resolved against indexed data.` | `Dry-run mission scenario` | `active` |
| `Catalog Updates` | `Indexer` | `Catalog changes enter the index-refresh path.` | `Dry-run mission scenario` | `active` |
| `Indexer` | `Search Cluster` | `Indexed updates affect future search freshness.` | `Dry-run mission scenario` | `active` |
| `Logs/Metrics` | `Elasticsearch` | `Observability signals are expected to land in the storage and search layer.` | `Dry-run mission scenario` | `active` |
| `Elasticsearch` | `Kibana Dashboards` | `Dashboards are expected to read from the observability store.` | `Dry-run mission scenario` | `active` |

## Dependency Paths

| Dependency Path | Description | Source / Reference | Status | Notes |
|---|---|---|---|---|
| `Web Frontend -> Search API -> Query Service -> Search Cluster` | `Primary user-facing search dependency path.` | `Dry-run mission scenario` | `active` | `Critical path for response latency interpretation.` |
| `Catalog Updates -> Indexer -> Search Cluster` | `Index refresh dependency path.` | `Dry-run mission scenario` | `active` | `Critical path for stale-result interpretation.` |
| `Logs/Metrics -> Elasticsearch -> Kibana Dashboards` | `Observability dependency path.` | `Dry-run mission scenario` | `active` | `Used later for investigation and visualization.` |

## Data or Event Flows

| Flow | Description | Trigger / Direction | Source / Reference | Status |
|---|---|---|---|---|
| `Search response flow` | `Search requests move through the application path into the search cluster and back to the caller.` | `Synchronous request path` | `Dry-run mission scenario` | `active` |
| `Index freshness flow` | `Catalog updates move toward indexed availability before affecting user-visible results.` | `Asynchronous update path` | `Dry-run mission scenario` | `active` |
| `Observability flow` | `Logs and metrics are expected to support later dashboards and analysis.` | `Operational signal path` | `Dry-run mission scenario` | `active` |

## Environment or Boundary Notes

| Boundary | Meaning | Source / Reference | Status | Notes |
|---|---|---|---|---|
| `User request boundary` | `Boundary between the user-facing frontend and the application service path.` | `Dry-run mission scenario` | `active` | `Relevant to user-visible degradation.` |
| `Index refresh boundary` | `Boundary between request-serving flow and update propagation flow.` | `Dry-run mission scenario` | `active` | `Relevant to stale-result interpretation.` |
| `Application to observability edge` | `Boundary between service execution and the observability stack.` | `Dry-run mission scenario` | `active` | `Observability is expected to observe, not execute, search behavior.` |

## Diagram Space

Use Mermaid diagrams when text-only structure is clearer than tables.

Example:

```mermaid
flowchart LR
    A["Web Frontend"] --> B["Search API"]
    B --> C["Query Service"]
    C --> D["Search Cluster"]
    E["Catalog Updates"] --> F["Indexer"]
    F --> D
    G["Logs / Metrics"] --> H["Elasticsearch"]
    H --> I["Kibana Dashboards"]
```

Use diagrams for:

```text
system topology
dependency maps
data flow
service boundaries
environment boundaries
handoff points
```

## Out-of-Scope Topology Notes

```text
Low-level network paths, cluster internals, and vendor-specific infrastructure topology are intentionally not described by this dry run.
```

## Context Update Trigger

During project work, humans and AI tools should check whether durable topology context has been discovered.

A topology update may be needed when work reveals:

```text
new dependency paths
new service or system connections
new data or control-flow understanding
new environment boundaries
new integration edges
new handoff points between major components
stable architectural connection rules
```

AI tools must not silently edit this file unless explicitly authorized.

When an AI tool detects possible durable topology context, it should propose:

```text
Context Update Check:
- Proposed target file: 01_context/TOPOLOGY.md
- Proposed summary:
- Source / reference:
- Reason this is durable topology context:
- Validation needed: Yes/No/Unknown
```

The human must approve before the context file is updated.

## Update Rules

Keep entries concise and durable.

Prefer stable connection structure over one-time operational anomalies.

Use source references when possible.

Do not promote assumptions to facts without human confirmation or evidence-backed support.

When topology context changes, update the relevant row status and add a note.

When topology context conflicts with `PROJECT_STATE.md`, treat `PROJECT_STATE.md` as higher authority.

If durable topology context is discovered during initialization, evidence review, query review, dashboard review, notebook review, handoff, closeout, or analysis, propose a `TOPOLOGY.md` update instead of silently editing this file.

`prompts/mission-init.prompt.md` may initialize or update this file during initialization only when durable context is supplied by explicit human statements, supplied project files, supplied architecture notes, supplied evidence summaries, or human-confirmed facts.

`prompts/mission-init.prompt.md` must not write guessed domain facts, AI memory, generic examples as project facts, unverified assumptions as confirmed truth, raw evidence, or large pasted documentation.

If source strength is weak, the item must be marked as an assumption, open question, or proposed context update.

Other prompts may propose `TOPOLOGY.md` updates unless explicitly authorized.

## Behavioral QA Safety Rule

Behavioral dry runs must not be performed directly on the reusable template branch.

Use a disposable branch, copied test instance, temporary worktree, or isolated QA fixture.

Dry-run content must not remain in reusable template files.

## Cross-References

Relevant files:

```text
PROJECT_STATE.md
CURRENT_MISSION.md
AI_CONTEXT.md
01_context/CONTEXT_INDEX.md
01_context/SYSTEM_OVERVIEW.md
01_context/DOMAIN_NOTES.md
02_evidence/EVIDENCE_INDEX.md
03_queries/QUERY_REGISTRY.md
04_notebooks/NOTEBOOK_INDEX.md
```

## Safety Rules

Do not store secrets, credentials, API keys, tokens, private keys, certificates, or restricted data in this file.

Do not paste raw logs or large evidence extracts into this file.

Do not treat topology notes as verified evidence unless they cite registered evidence.

## Last Updated

Local time: `[YYYY-MM-DD HH:MM timezone]`

Updated by: `[Human/ChatGPT/Codex/etc.]`
