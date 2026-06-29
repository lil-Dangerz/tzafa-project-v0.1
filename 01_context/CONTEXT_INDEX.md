# Context Index

## Watch Role

Context Catalog.

This file tracks context documents in `01_context/`.

It helps humans and AI tools know which context files exist, what they contain, and whether they are current.

## Purpose

Use this file to record:

```text
context file location
context purpose
context status
source references
owner
last reviewed date
related project files
```

Do not use this file for raw evidence, investigation output, query results, dashboard findings, notebook outputs, or final reports.

## Context Status Values

Use one of:

```text
draft
active
stale
deprecated
superseded
unknown
```

## Context Type Values

Use one of:

```text
domain
vocabulary
system_overview
topology
process
data_flow
dependency
assumption
external_reference
other
unknown
```

## Entry Format

| ID | Status | Type | Context File | Purpose | Source / Reference | Owner | Last Reviewed | Notes |
|---|---|---|---|---|---|---|---|---|
| C-0001 | `[draft/active/stale/deprecated/superseded/unknown]` | `[type]` | `[Path]` | `[Purpose]` | `[Path, URL, evidence ID, or Unknown]` | `[Owner or Unknown]` | `[YYYY-MM-DD]` | `[Notes]` |

## Current Context Files

| ID | Status | Type | Context File | Purpose | Source / Reference | Owner | Last Reviewed | Notes |
|---|---|---|---|---|---|---|---|---|
| C-0001 | `draft` | `domain` | `01_context/DOMAIN_NOTES.md` | `Durable domain background, operating assumptions, and business rules.` | `[Pending]` | `[Owner or Unknown]` | `[YYYY-MM-DD]` | `Reusable template entry awaiting project-specific context.` |
| C-0002 | `draft` | `vocabulary` | `01_context/VOCABULARY.md` | `Durable terms, acronyms, labels, and interpretation rules.` | `[Pending]` | `[Owner or Unknown]` | `[YYYY-MM-DD]` | `Reusable template entry awaiting project-specific context.` |
| C-0003 | `draft` | `system_overview` | `01_context/SYSTEM_OVERVIEW.md` | `High-level structural overview of major components and responsibilities.` | `[Pending]` | `[Owner or Unknown]` | `[YYYY-MM-DD]` | `Reusable template entry awaiting project-specific context.` |
| C-0004 | `draft` | `topology` | `01_context/TOPOLOGY.md` | `High-level connections, dependency paths, and flow summaries.` | `[Pending]` | `[Owner or Unknown]` | `[YYYY-MM-DD]` | `Reusable template entry awaiting project-specific context.` |

## Update Rules

Add new context files with a stable ID.

Do not delete stale, deprecated, or superseded context entries unless explicitly instructed.

When a context file changes, update `Last Reviewed`.

When context becomes outdated, change `Status` to `stale`.

When context is replaced, change `Status` to `superseded` and reference the replacement.

When context should no longer be used, change `Status` to `deprecated` and explain why in `Notes`.

Do not mark context as `active` unless it is human-confirmed, evidence-backed, or file-backed.

## Behavioral QA Safety Rule

Behavioral dry runs must not be performed directly on the reusable template branch.

Use a disposable branch, copied test instance, temporary worktree, or isolated QA fixture.

Dry-run content must not remain in reusable template files.

## Cross-References

Relevant files:

```text
CURRENT_MISSION.md
PROJECT_STATE.md
AI_CONTEXT.md
02_evidence/EVIDENCE_INDEX.md
00_control/OPEN_QUESTIONS.md
00_control/DECISION_LOG.md
07_decisions/ARCHITECTURE_DECISIONS.md
```

## Safety Rules

Do not store secrets, credentials, API keys, tokens, private keys, certificates, or restricted data in this file.

Do not paste raw logs or large evidence extracts into this file.

Do not treat context as verified evidence unless it references evidence.

When context conflicts with `PROJECT_STATE.md`, treat `PROJECT_STATE.md` as higher authority.

## Last Updated

Local time: `[YYYY-MM-DD HH:MM timezone]`

Updated by: `[Human/ChatGPT/Codex/etc.]`
