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
[System Summary]
```

## Major Components

| Component | Role / Responsibility | Upstream / Downstream | Source / Reference | Status |
|---|---|---|---|---|
| `[System Component]` | `[Role / Responsibility]` | `[Upstream / Downstream]` | `[Source / Reference or Pending]` | `[draft/active/stale/unknown]` |
| `[System Component]` | `[Role / Responsibility]` | `[Upstream / Downstream]` | `[Source / Reference or Pending]` | `[draft/active/stale/unknown]` |
| `[System Component]` | `[Role / Responsibility]` | `[Upstream / Downstream]` | `[Source / Reference or Pending]` | `[draft/active/stale/unknown]` |

## Major Data or Control Flows

| Flow | Description | Source / Destination | Source / Reference | Status |
|---|---|---|---|---|
| `[Flow]` | `[Description]` | `[Source / Destination]` | `[Source / Reference or Pending]` | `[draft/active/stale/unknown]` |
| `[Flow]` | `[Description]` | `[Source / Destination]` | `[Source / Reference or Pending]` | `[draft/active/stale/unknown]` |
| `[Flow]` | `[Description]` | `[Source / Destination]` | `[Source / Reference or Pending]` | `[draft/active/stale/unknown]` |

## External Systems and Integrations

| System / Integration | Purpose | Relationship to Project | Source / Reference | Status |
|---|---|---|---|---|
| `[System / Integration]` | `[Purpose]` | `[Relationship to Project]` | `[Source / Reference or Pending]` | `[draft/active/stale/unknown]` |
| `[System / Integration]` | `[Purpose]` | `[Relationship to Project]` | `[Source / Reference or Pending]` | `[draft/active/stale/unknown]` |

## User-Facing and Internal Boundaries

| Boundary | Meaning | Source / Reference | Status | Notes |
|---|---|---|---|---|
| `[Boundary]` | `[Meaning]` | `[Source / Reference or Pending]` | `[draft/active/stale/unknown]` | `[Notes]` |
| `[Boundary]` | `[Meaning]` | `[Source / Reference or Pending]` | `[draft/active/stale/unknown]` | `[Notes]` |

## Out-of-Scope System Notes

```text
[Out-of-scope system boundary]
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

`prompts/mission-init.prompt.md` may initialize or update this file during initialization only when durable context is supplied by explicit human statements, supplied project files, supplied architecture notes, supplied evidence summaries, or human-confirmed facts.

`prompts/mission-init.prompt.md` must not write guessed domain facts, AI memory, generic examples as project facts, unverified assumptions as confirmed truth, raw evidence, or large pasted documentation.

If source strength is weak, the item must be marked as an assumption, open question, or proposed context update.

Other prompts may propose `SYSTEM_OVERVIEW.md` updates unless explicitly authorized.

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

Local time: `[YYYY-MM-DD HH:MM timezone]`

Updated by: `[Human/ChatGPT/Codex/etc.]`
