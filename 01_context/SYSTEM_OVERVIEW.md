# System Overview

## Watch Role

Watchtower Layout.

This file records durable high-level system, service, platform, or process structure that helps humans and AI tools understand how the project environment is organized.

It is not evidence. It is not the verified truth ledger.

## Purpose

Use this file to record:

```text
major systems or services
primary responsibilities
important integrations
high-level data movement
environment or platform roles
user-facing versus internal boundaries
known operating relationships
stable architectural summaries
```

Do not use this file for raw evidence, raw logs, query results, dashboard findings, notebook outputs, reports, or final conclusions.

Plain meaning:

```text
SYSTEM_OVERVIEW.md = the high-level map of what parts of the system exist and what each part is responsible for.
```

Working allegory:

```text
SYSTEM_OVERVIEW.md = watchtower layout
DOMAIN_NOTES.md = terrain map
VOCABULARY.md = phrasebook
PROJECT_STATE.md = current intelligence report
02_evidence/ = captured signals and proof
```

This file explains the big picture of the system the project is examining.

## What Belongs Here

Examples of system overview notes include:

- which systems are sources, processors, stores, dashboards, or consumers
- whether a platform is internal, external, user-facing, batch, or real-time
- how a tool like Sonar, Kibana, or a warehouse system fits into the broader environment
- which services depend on which upstream or downstream systems
- where major boundaries exist between business process, application layer, and observability layer
- high-level descriptions of how data or events move through the system

These are examples of the kinds of durable structural notes that belong here.

They are illustrative guidance only.

Do not treat example content as actual project facts unless a copied project instance is later populated with confirmed system context.

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
- low-level implementation details that belong in evidence or notebooks

## System Summary

```text
Fictional e-commerce checkout service with an application path for payment authorization and an observability path through Elasticsearch and Kibana.
```

## Major Components

| Component | Role / Responsibility | Upstream / Downstream | Source / Reference | Status |
|---|---|---|---|---|
| `Frontend` | `Customer-facing entry point for cart review and checkout.` | `Checkout API` | `Human-supplied dry run scenario` | `active` |
| `Checkout API` | `Coordinates checkout attempts and application-side checkout processing.` | `Frontend, Payment Gateway Adapter, Message Queue` | `Human-supplied dry run scenario` | `active` |
| `Payment Gateway Adapter` | `Relays payment authorization traffic to the external provider.` | `Checkout API, External Payment Provider` | `Human-supplied dry run scenario` | `active` |
| `External Payment Provider` | `Processes payment authorization externally.` | `Payment Gateway Adapter` | `Human-supplied dry run scenario` | `active` |
| `Message Queue` | `Carries downstream checkout-related events.` | `Checkout API, Fulfillment Service` | `Human-supplied dry run scenario` | `active` |
| `Fulfillment Service` | `Consumes downstream queued work.` | `Message Queue` | `Human-supplied dry run scenario` | `active` |
| `Elasticsearch` | `Expected observability store for logs and metrics.` | `Kibana` | `Human-supplied dry run scenario` | `active` |
| `Kibana` | `Expected dashboard and observability interface.` | `Elasticsearch` | `Human-supplied dry run scenario` | `active` |

## Major Data or Control Flows

| Flow | Description | Source / Destination | Source / Reference | Status |
|---|---|---|---|---|
| `Checkout authorization flow` | `Customer checkout requests move toward payment authorization through the application path.` | `Frontend -> Checkout API -> Payment Gateway Adapter -> External Payment Provider` | `Human-supplied dry run scenario` | `active` |
| `Fulfillment event flow` | `Checkout API sends downstream events toward fulfillment processing.` | `Checkout API -> Message Queue -> Fulfillment Service` | `Human-supplied dry run scenario` | `active` |
| `Observability flow` | `Operational signals are expected to move into the observability stack.` | `Logs/Metrics -> Elasticsearch -> Kibana Dashboards` | `Human-supplied dry run scenario` | `active` |

## External Systems and Integrations

| System / Integration | Purpose | Relationship to Project | Source / Reference | Status |
|---|---|---|---|---|
| `External Payment Provider` | `External payment authorization` | `Downstream external dependency of the payment gateway adapter.` | `Human-supplied dry run scenario` | `active` |
| `Elasticsearch` | `Observability storage and search` | `Expected destination for logs and metrics.` | `Human-supplied dry run scenario` | `active` |
| `Kibana` | `Observability dashboards` | `Expected dashboard layer over Elasticsearch.` | `Human-supplied dry run scenario` | `active` |

## User-Facing and Internal Boundaries

| Boundary | Meaning | Source / Reference | Status | Notes |
|---|---|---|---|---|
| `Customer-facing boundary` | `Frontend and checkout experience are customer-facing.` | `Human-supplied dry run scenario` | `active` | `Relevant to outage and degradation interpretation.` |
| `External dependency boundary` | `External payment provider is outside direct service control.` | `Human-supplied dry run scenario` | `active` | `May affect latency and failure interpretation.` |
| `Observability boundary` | `Elasticsearch and Kibana form the observability layer rather than the transaction-processing path.` | `Human-supplied dry run scenario` | `active` | `Used for later investigation, not yet evidenced.` |

## Out-of-Scope System Notes

```text
Implementation details of the payment provider, queue semantics, and deployment architecture are not described by this dry run.
```

## Context Update Trigger

During project work, humans and AI tools should check whether durable system context has been discovered.

A system overview update may be needed when work reveals:

```text
new major components
new service dependencies
new integration points
new source or destination systems
new data or control-flow understanding
new user-facing or internal boundaries
stable platform constraints affecting the system map
```

AI tools must not silently edit this file unless explicitly authorized.

When an AI tool detects possible durable system context, it should propose:

```text
Context Update Check:
- Proposed target file: 01_context/SYSTEM_OVERVIEW.md
- Proposed summary:
- Source / reference:
- Reason this is durable system context:
- Validation needed: Yes/No/Unknown
```

The human must approve before the context file is updated.

## Update Rules

Keep entries concise and durable.

Prefer stable structural understanding over one-time operational events.

Use source references when possible.

Do not promote assumptions to facts without human confirmation or evidence-backed support.

When system context changes, update the relevant row status and add a note.

When system context conflicts with `PROJECT_STATE.md`, treat `PROJECT_STATE.md` as higher authority.

If durable system context is discovered during initialization, evidence review, query review, dashboard review, notebook review, handoff, closeout, or analysis, propose a `SYSTEM_OVERVIEW.md` update instead of silently editing this file.

`prompts/mission-init.prompt.md` may detect system context needs and propose follow-up updates, but it must not directly edit this file under the current authority rules.

## Cross-References

Relevant files:

```text
PROJECT_STATE.md
CURRENT_MISSION.md
AI_CONTEXT.md
01_context/CONTEXT_INDEX.md
01_context/DOMAIN_NOTES.md
01_context/VOCABULARY.md
01_context/TOPOLOGY.md
02_evidence/EVIDENCE_INDEX.md
03_queries/QUERY_REGISTRY.md
```

## Safety Rules

Do not store secrets, credentials, API keys, tokens, private keys, certificates, or restricted data in this file.

Do not paste raw logs or large evidence extracts into this file.

Do not treat system overview notes as verified evidence unless they cite registered evidence.

## Last Updated

Local time: `2026-06-26 00:33 -06:00 America/Mexico_City`

Updated by: `Codex`
