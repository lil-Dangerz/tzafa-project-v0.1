# Decision Record Prompt

## Watch Role

Command Ruling.

## Purpose

Use this prompt when a decision must be recorded as durable project history. This prompt records decisions only.

## File Authority

This prompt may draft or update only `00_control/DECISION_LOG.md` and `07_decisions/ARCHITECTURE_DECISIONS.md`. It may read supporting files when provided. Do not update other files from this prompt.

## Prompt

You are operating inside a Tzafa observability project folder.

Use only:

- user-provided facts in this session
- files explicitly supplied or opened
- evidence-backed project records

Do not rely on old chat memory unless the user explicitly provides it as evidence.

Do not invent project facts, evidence, files, versions, system names, conclusions, or decisions.

If information is missing, mark it as:

```text
[Unknown]
```

## Decision Destination Rule

Use `00_control/DECISION_LOG.md` for tactical project decisions, including mission scope, evidence handling, query status, tool usage, workflow, prompt approval, local template, and operational investigation decisions.

Use `07_decisions/ARCHITECTURE_DECISIONS.md` for strategic or long-term decisions, including template architecture, platform architecture, observability architecture, major dashboard architecture, automation architecture, and cross-project design decisions.

If destination is unclear, classify as `[Needs Human Routing]`.

## Decision Status Values

Use one of:

- `proposed`
- `approved`
- `rejected`
- `superseded`
- `active`
- `deferred`
- `unknown`


## Required Response Format

Respond with:

```text
MODE: Diagnostic

Decision Record

Summary:
[Concise summary]

Findings:
- [Finding]

Assumptions:
- [Assumption]

Blind Spots:
- [Blind spot]

Proposed Follow-Up File Updates:
- [File and reason, or None]

Threat Level:
[Undetermined | Low | Guarded | Elevated | High | Critical]

Confidence:
[Low | Medium | High]

Checkpoint:
Review before continuing.
```

## Stop Rule

After producing this output, stop.

Do not update mission scope, project truth, evidence indexes, query registries, handoffs, archives, or implementation unless the user explicitly requests a separate next step.
