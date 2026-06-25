# Domain Notes

## Watch Role

Domain Background.

This file records durable domain and business-process context that helps humans and AI tools understand the project.

It is not evidence. It is not the verified truth ledger.

## Purpose

Use this file to record:

```text
business process background
domain assumptions
operational constraints
known process stages
stakeholder context
service or workflow descriptions
business rules
known terminology context
```

Do not use this file for raw evidence, raw logs, query results, dashboard findings, notebook outputs, reports, or final conclusions.

Plain meaning:

```text
DOMAIN_NOTES.md = background about the real-world operational area the project is about.
```

Working allegory:

```text
DOMAIN_NOTES.md = terrain map
PROJECT_STATE.md = current intelligence report
02_evidence/ = captured signals and proof
TOOL_NOTES.md = scout behavior and tool quirks
SYSTEM_OVERVIEW.md = watchtower layout
```

This file explains the world the project operates in.

## What Belongs Here

Examples of domain notes include:

- warehouse lifecycle rules such as when an exchange counts as complete
- software-quality policy such as what a quality gate means operationally
- incident-management severity definitions such as what qualifies as P1 or P2
- business-process timing rules such as end-of-day cutoffs or delayed confirmations
- interpretation rules that explain how domain data should be read
- out-of-scope boundaries for the domain this project covers

These are examples of the kinds of durable background that belong here.

They are illustrative guidance only.

Do not treat example content as actual project facts unless a copied project instance is later populated with confirmed domain context.

## What Does Not Belong Here

Do not store:

- raw logs
- screenshots
- query output
- notebook output
- one-time incidents
- tool bugs
- temporary theories
- full external documentation
- credentials
- final report text
- current mission state
- verified project truth that belongs in `PROJECT_STATE.md`

## Domain Summary

```text
[Describe the domain, business process, operational area, or environment.]
```

## Business / Operational Context

```text
[Describe how the process works at a high level.]
```

## Known Process Stages

| Stage | Description | Source / Reference | Status |
|---|---|---|---|
| `[Stage]` | `[Description]` | `[Path, evidence ID, or Unknown]` | `[draft/active/stale/deprecated/superseded/unknown]` |

## Known Business Rules

| Rule ID | Rule | Source / Reference | Status | Notes |
|---|---|---|---|---|
| BR-0001 | `[Business rule]` | `[Path, evidence ID, or Unknown]` | `[draft/active/stale/deprecated/superseded/unknown]` | `[Notes]` |

## Domain Assumptions

| ID | Assumption | Source / Reference | Status | Validation Needed |
|---|---|---|---|---|
| A-0001 | `[Assumption]` | `[Human-declared / evidence ID / Unknown]` | `[draft/active/stale/deprecated/superseded/unknown]` | `[Yes/No/Unknown]` |

## Known Constraints

| Constraint | Impact | Source / Reference | Status |
|---|---|---|---|
| `[Constraint]` | `[Impact]` | `[Path, evidence ID, or Unknown]` | `[draft/active/stale/deprecated/superseded/unknown]` |

## Out-of-Scope Domain Notes

```text
[Domain areas that are intentionally not covered by this project.]
```

## Context Update Trigger

During project work, humans and AI tools should check whether durable domain context has been discovered.

A domain note update may be needed when work reveals:

```text
new business rules
new process stages
new domain-specific terminology
new operational constraints
new interpretation rules
new out-of-scope domain boundaries
new domain assumptions requiring validation
```

AI tools must not silently edit this file unless explicitly authorized.

When an AI tool detects possible durable domain context, it should propose:

```text
Context Update Check:
- Proposed target file: 01_context/DOMAIN_NOTES.md
- Proposed summary:
- Source / reference:
- Reason this is durable domain context:
- Validation needed: Yes/No/Unknown
```

The human must approve before the context file is updated.

## Update Rules

Keep notes concise and durable.

Separate assumptions from confirmed facts.

Use source references when possible.

Do not promote assumptions to facts without human confirmation or evidence-backed support.

When domain context changes, update the relevant row status and add a note.

When domain context conflicts with `PROJECT_STATE.md`, treat `PROJECT_STATE.md` as higher authority.

If durable domain context is discovered during initialization, evidence review, query review, dashboard review, notebook review, handoff, closeout, or analysis, propose a `DOMAIN_NOTES.md` update instead of silently editing this file.

`prompts/mission-init.prompt.md` may detect domain context needs and propose follow-up updates, but it must not directly edit this file under the current authority rules.

## Cross-References

Relevant files:

```text
PROJECT_STATE.md
CURRENT_MISSION.md
AI_CONTEXT.md
01_context/CONTEXT_INDEX.md
01_context/VOCABULARY.md
02_evidence/EVIDENCE_INDEX.md
00_control/OPEN_QUESTIONS.md
00_control/DECISION_LOG.md
```

## Safety Rules

Do not store secrets, credentials, API keys, tokens, private keys, certificates, or restricted data in this file.

Do not paste raw logs or large evidence extracts into this file.

Do not treat domain notes as verified evidence unless they cite registered evidence.

## Last Updated

Local time: `[YYYY-MM-DD HH:MM timezone]`

Updated by: `[Human/ChatGPT/Codex/etc.]`
