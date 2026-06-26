# Vocabulary

## Watch Role

Shared Language.

This file records durable terms, acronyms, field meanings, and naming conventions that help humans and AI tools interpret project material consistently.

It is not evidence. It is not the verified truth ledger.

## Purpose

Use this file to record:

```text
domain terms
team-specific language
acronyms and abbreviations
field meanings
status labels
code or metric naming conventions
data-label interpretation rules
ambiguous terms needing clarification
```

Do not use this file for raw evidence, raw logs, query results, dashboard findings, notebook outputs, reports, or final conclusions.

Plain meaning:

```text
VOCABULARY.md = the shared dictionary the project uses to avoid misreading words, labels, and fields.
```

Working allegory:

```text
VOCABULARY.md = phrasebook
DOMAIN_NOTES.md = terrain map
PROJECT_STATE.md = current intelligence report
02_evidence/ = captured signals and proof
TOOL_NOTES.md = scout behavior and tool quirks
```

This file explains what important project language means.

## What Belongs Here

Examples of vocabulary notes include:

- what an exchange, cancellation, or dispatch event means in warehouse data
- what a quality gate, hotspot, or coverage label means in software-quality work
- what a severity label or restoration metric means in incident-response work
- what a field name, status value, or metric label means in a dashboard or query
- known naming conventions for systems, teams, regions, services, or environments
- ambiguous words that must not be interpreted loosely

These are examples of the kinds of durable language guidance that belong here.

They are illustrative guidance only.

Do not treat example content as actual project facts unless a copied project instance is later populated with confirmed vocabulary.

## What Does Not Belong Here

Do not store:

- raw logs
- screenshots
- query output
- notebook output
- one-time investigation notes
- tool bugs
- temporary theories
- full external documentation
- credentials
- final report text
- current mission state
- verified project truth that belongs in `PROJECT_STATE.md`

## Vocabulary Summary

```text
[Vocabulary Summary]
```

## Core Terms

| Term | Meaning | Source / Reference | Status | Notes |
|---|---|---|---|---|
| `[Term]` | `[Meaning]` | `[Source / Reference or Pending]` | `[draft/active/stale/unknown]` | `[Notes]` |
| `[Term]` | `[Meaning]` | `[Source / Reference or Pending]` | `[draft/active/stale/unknown]` | `[Notes]` |
| `[Term]` | `[Meaning]` | `[Source / Reference or Pending]` | `[draft/active/stale/unknown]` | `[Notes]` |

## Acronyms and Abbreviations

| Acronym | Expansion | Meaning in Project Context | Source / Reference | Status |
|---|---|---|---|---|
| `[Acronym]` | `[Expansion]` | `[Meaning]` | `[Source / Reference or Pending]` | `[draft/active/stale/unknown]` |
| `[Acronym]` | `[Expansion]` | `[Meaning]` | `[Source / Reference or Pending]` | `[draft/active/stale/unknown]` |

## Field and Label Meanings

| Field / Label | Meaning | System / Area | Source / Reference | Status |
|---|---|---|---|---|
| `[Field / Label]` | `[Meaning]` | `[System / Area]` | `[Source / Reference or Pending]` | `[draft/active/stale/unknown]` |
| `[Field / Label]` | `[Meaning]` | `[System / Area]` | `[Source / Reference or Pending]` | `[draft/active/stale/unknown]` |

## Naming Conventions

| Convention | Meaning / Rule | Source / Reference | Status | Notes |
|---|---|---|---|---|
| `[Convention]` | `[Meaning / Rule]` | `[Source / Reference or Pending]` | `[draft/active/stale/unknown]` | `[Notes]` |
| `[Convention]` | `[Meaning / Rule]` | `[Source / Reference or Pending]` | `[draft/active/stale/unknown]` | `[Notes]` |

## Ambiguous or Risky Terms

| Term | Risk | Correct Interpretation Rule | Source / Reference | Status |
|---|---|---|---|---|
| `[Term]` | `[Risk]` | `[Correct Interpretation Rule]` | `[Source / Reference or Pending]` | `[draft/active/stale/unknown]` |
| `[Term]` | `[Risk]` | `[Correct Interpretation Rule]` | `[Source / Reference or Pending]` | `[draft/active/stale/unknown]` |

## Out-of-Scope Vocabulary

```text
[Out-of-scope vocabulary boundary]
```

## Context Update Trigger

During project work, humans and AI tools should check whether durable vocabulary context has been discovered.

A vocabulary update may be needed when work reveals:

```text
new acronyms or abbreviations
new field meanings
new status labels
new naming conventions
new ambiguous terms requiring clarification
new interpretation rules for project language
```

AI tools must not silently edit this file unless explicitly authorized.

When an AI tool detects possible durable vocabulary context, it should propose:

```text
Context Update Check:
- Proposed target file: 01_context/VOCABULARY.md
- Proposed summary:
- Source / reference:
- Reason this is durable vocabulary context:
- Validation needed: Yes/No/Unknown
```

The human must approve before the context file is updated.

## Update Rules

Keep entries concise and durable.

Prefer stable meanings over one-time usage examples.

Use source references when possible.

Do not promote assumptions to facts without human confirmation or evidence-backed support.

When vocabulary changes, update the relevant row status and add a note.

When vocabulary conflicts with `PROJECT_STATE.md`, treat `PROJECT_STATE.md` as higher authority.

If durable vocabulary context is discovered during initialization, evidence review, query review, dashboard review, notebook review, handoff, closeout, or analysis, propose a `VOCABULARY.md` update instead of silently editing this file.

`prompts/mission-init.prompt.md` may initialize or update this file during initialization only when durable context is supplied by explicit human statements, supplied project files, supplied architecture notes, supplied evidence summaries, or human-confirmed facts.

`prompts/mission-init.prompt.md` must not write guessed domain facts, AI memory, generic examples as project facts, unverified assumptions as confirmed truth, raw evidence, or large pasted documentation.

If source strength is weak, the item must be marked as an assumption, open question, or proposed context update.

Other prompts may propose `VOCABULARY.md` updates unless explicitly authorized.

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
01_context/SYSTEM_OVERVIEW.md
02_evidence/EVIDENCE_INDEX.md
03_queries/QUERY_REGISTRY.md
00_control/OPEN_QUESTIONS.md
```

## Safety Rules

Do not store secrets, credentials, API keys, tokens, private keys, certificates, or restricted data in this file.

Do not paste raw logs or large evidence extracts into this file.

Do not treat vocabulary notes as verified evidence unless they cite registered evidence.

## Last Updated

Local time: `2026-06-26 -06:00 America/Mexico_City`

Updated by: `Codex`
