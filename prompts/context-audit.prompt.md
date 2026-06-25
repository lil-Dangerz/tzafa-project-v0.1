# Context Audit Prompt

## Watch Role

Drift Sweep.

## Purpose

Use this prompt when you need to inspect project files for context drift, contradictions, stale references, contamination risk, and source-of-truth inconsistencies.

## File Authority

This prompt is read-only by default. Do not edit files from this prompt. If files appear to need updates, list them under `Proposed Follow-Up File Updates`.

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

## Required Audit Areas

Inspect available files for:

- conflict between `CURRENT_MISSION.md` and `PROJECT_STATE.md`
- conflict between `PROJECT_STATE.md` and `AI_CONTEXT.md`
- stale or incomplete `AI_HANDOFF.md`
- deprecated evidence still referenced as current
- known bad assets still referenced as valid
- validated queries missing from `QUERY_REGISTRY.md`
- query registry entries with missing evidence or test references
- notebook entries with missing inputs or outputs
- outputs not indexed in `OUTPUT_INDEX.md`
- reports not indexed in `REPORT_INDEX.md`
- open questions that should block continuation
- decision records missing for major scope or architecture changes
- tool mistakes not reflected in `TOOL_NOTES.md`
- assumptions recorded as facts
- missing cross-references between project files
- project-specific content leaking into reusable template files

## Drift Detection

Flag drift only when evidence exists.

Use this format:

```text
DRIFT DETECTED: [Objective | Scope | Role | Context]
```


## Required Response Format

Respond with:

```text
MODE: Diagnostic

Context Audit

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

Do not update files, rewrite queries, revise dashboards, execute notebooks, perform evidence intake, create handoffs, close missions, or implement changes unless the user explicitly requests a separate next step.
