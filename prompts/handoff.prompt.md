# Handoff Prompt

## Watch Role

Relay Out.

## Purpose

Use this prompt at the end of a session when work must continue in another chat window, tool, machine, session, or operator context. This prompt creates or refreshes the active outgoing relay in `AI_HANDOFF.md`.

## File Authority

This prompt may draft or update only `AI_HANDOFF.md`. It may read supporting files when provided. It may propose `TOOL_NOTES.md` updates only. Do not update tool notes or other files from this prompt.

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
- `08_workbench/README.md`
- `09_archive/README.md`
- `10_automation/README.md`

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

## Handoff Rules

The handoff must contain:

- one current active handoff
- one short handoff history entry
- one `Artifact Routing Status` block

Refresh the `Current Active Handoff` section.

Append one short row to `Handoff History`.

Do not store raw evidence here. Do not store query libraries here. Do not store project truth here.

## Required Handoff Checks

Before drafting the handoff, identify:

- what was done
- what changed
- files created, modified, or referenced
- current blockers
- warnings or mistakes to avoid
- files the next session must read first
- exact next task
- whether the next session should run `handon.prompt.md`
- whether the mission is continuing or closeout is needed
- whether durable background context follow-up should be proposed for `01_context/`
- whether `TOOL_NOTES.md` should receive a proposed update
- whether any evidence files were created or referenced
- whether any queries were created, tested, validated, deprecated, or superseded
- whether any notebooks were created or modified
- whether any reports or outputs were produced
- whether any decisions, risks, questions, or work-log entries were created
- whether all artifact paths and target registries are identified
- whether pending registrations remain
- whether routing concerns remain

It must carry forward:

- artifact paths
- registration state
- pending registrations
- routing concerns
- next files to read

It must not silently update registries unless the active prompt authority allows it.

If the handoff reveals that `CURRENT_MISSION.md`, `PROJECT_STATE.md`, or `AI_CONTEXT.md` no longer match the actual branch state, do not silently ignore the mismatch.

Refresh `AI_HANDOFF.md` within this prompt's authority and list any other required control refresh under `Proposed Follow-Up File Updates`.


## Required Response Format

Respond with:

```text
MODE: Diagnostic

Handoff Draft

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

Do not perform handon, closeout, evidence intake, query review, dashboard review, notebook review, remediation, implementation, or file updates beyond `AI_HANDOFF.md` unless the user explicitly requests a separate next step.
