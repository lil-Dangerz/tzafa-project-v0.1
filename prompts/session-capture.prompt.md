# Session Capture Prompt

## Watch Role

Signal Capture.

## Purpose

Use this prompt when a chat, tool session, notebook discussion, or investigation contains useful information that must be extracted into durable project records.

## File Authority

This prompt is read-only by default. It may read supporting files when provided. Do not edit files from this prompt. If durable updates are needed, list them under `Proposed Follow-Up File Updates`.

## Recommended Supporting Files

When available, also read:

- `CURRENT_MISSION.md`
- `PROJECT_STATE.md`
- `AI_CONTEXT.md`
- `AI_HANDOFF.md`
- `TOOL_NOTES.md`
- `01_context/CONTEXT_INDEX.md`
- `02_evidence/EVIDENCE_INDEX.md`
- `02_evidence/DEPRECATED_EVIDENCE.md`
- `03_queries/QUERY_REGISTRY.md`
- `04_notebooks/NOTEBOOK_INDEX.md`
- `05_reports/REPORT_INDEX.md`
- `06_outputs/OUTPUT_INDEX.md`
- `00_control/DECISION_LOG.md`
- `07_decisions/ARCHITECTURE_DECISIONS.md`

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

## Required Capture Areas

Extract and classify:

- confirmed facts
- unconfirmed claims
- assumptions
- blind spots
- open questions
- decisions made
- decisions that appear needed but were not made
- evidence mentioned
- evidence that appears deprecated, stale, replaced, conflicting, or untrusted
- queries mentioned
- queries that appear validated, broken, deprecated, or superseded
- durable background context discoveries
- notebook/report/output references
- workbench/archive/automation references
- repeated tool mistakes
- action items
- possible follow-up file updates

## Classification Rule

Do not treat chat output as verified truth unless it is supported by provided evidence or explicitly approved by the user.


## Required Response Format

Respond with:

```text
MODE: Diagnostic

Session Capture

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
