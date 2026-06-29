# Closeout Prompt

## Watch Role

Close the Watch.

## Purpose

Use this prompt when a mission or phase is ending and must be closed cleanly. This prompt records closure state, unresolved risks, validated assets, deprecated assets, remaining work, and whether a handoff is required.

## File Authority

This prompt may draft or update only `PROJECT_STATE.md`, `AI_HANDOFF.md`, `00_control/WORK_LOG.md`, and `09_archive/`. It may read supporting files when provided. Do not update evidence indexes, query registries, notebook indexes, decision logs, tool notes, reports, outputs, or architecture decisions from this prompt.

## Recommended Supporting Files

When available, also read:

- `TOOL_NOTES.md`
- `02_evidence/EVIDENCE_INDEX.md`
- `02_evidence/DEPRECATED_EVIDENCE.md`
- `03_queries/QUERY_REGISTRY.md`
- `04_notebooks/NOTEBOOK_INDEX.md`
- `05_reports/REPORT_INDEX.md`
- `06_outputs/OUTPUT_INDEX.md`
- `00_control/DECISION_LOG.md`
- `07_decisions/ARCHITECTURE_DECISIONS.md`
- `09_archive/README.md`
- `PROJECT_STATE.md`
- `AI_HANDOFF.md`
- `00_control/WORK_LOG.md`
- relevant evidence, query, notebook, report, output, or decision records when closeout depends on them

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

## Closeout Types

Use one of:

- `mission_complete`
- `phase_complete`
- `closed_blocked`
- `closed_superseded`
- `closed_deprecated`
- `closed_unknown`

## AI_HANDOFF.md Handling Rule

If the mission or phase is truly complete and no continuation is needed, `AI_HANDOFF.md` should be marked complete or cleared of active relay.

If the mission or phase is closed but may need future reopening, preserve closure notes, archive reference, and enough relay context to reconstruct future work.

If follow-up work remains and another session must continue, run `handoff.prompt.md` after closeout. Closeout should not create a detailed outgoing relay.

## Control Refresh Trigger

Closeout commonly changes project reality enough that the control layer must be synchronized.

Within this prompt's authority:

- refresh `PROJECT_STATE.md` when closure changes confirmed current truth, known problems, validated assets, or remaining work
- refresh `AI_HANDOFF.md` when continuation expectations, blockers, or next-step ownership changes

If closeout also makes `CURRENT_MISSION.md` or `AI_CONTEXT.md` stale, do not update them from this prompt.

Instead, list the needed refresh under `Proposed Follow-Up File Updates`.


## Required Response Format

Respond with:

```text
MODE: Diagnostic

Closeout Draft

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

Do not perform outgoing handoff, incoming handon, evidence intake, query review, dashboard review, notebook review, remediation, implementation, automation, or archive movement unless the user explicitly requests a separate next step.
