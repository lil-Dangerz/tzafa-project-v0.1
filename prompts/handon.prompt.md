# Handon Prompt

## Watch Role

Relay Acceptance.

## Purpose

Use this prompt at the start of a receiving session when work is continuing from an existing handoff. It verifies the incoming relay in `AI_HANDOFF.md` against `CURRENT_MISSION.md`, `PROJECT_STATE.md`, and `AI_CONTEXT.md`.

## File Authority

This prompt is read-only by default. Do not update files from this prompt. If files appear to need updates, list them under `Proposed Follow-Up File Updates`.

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

## Required Acceptance Checks

Before continuing work, check:

- whether `AI_HANDOFF.md` contains a current active handoff
- whether the handoff status is open, in progress, blocked, complete, stale, or superseded
- whether the handoff includes `Artifact Routing Status`
- whether the relay task is clear
- whether the receiving role/tool is correct
- whether required files are listed and supplied
- whether the handoff aligns with `CURRENT_MISSION.md`
- whether the handoff conflicts with `PROJECT_STATE.md`
- whether the handoff conflicts with `AI_CONTEXT.md`
- whether the routing state is consistent with `AI_CONTEXT.md` and `README.md`
- whether artifacts are mentioned without paths
- whether artifacts are mentioned without registry or index state
- whether pending registrations exist
- whether routing conflicts exist
- whether work should be blocked until routing is clarified
- whether durable background context files are needed for this relay
- whether `TOOL_NOTES.md` contains warnings relevant to the relay
- whether deprecated evidence or deprecated queries are referenced
- whether workbench, archive, or automation files are relevant to the relay but omitted
- whether blockers or open questions prevent continuation

## Relay Acceptance Status

Use one of:

- `accepted`
- `accepted_with_warnings`
- `blocked`
- `conflicted`
- `stale`
- `rejected`
- `unknown`

A handoff with missing artifact paths or missing routing state should be at least `accepted_with_warnings`, or `blocked` if the routing gaps could cause evidence, query, notebook, report, output, or decision loss.


## Required Response Format

Respond with:

```text
MODE: Diagnostic

Handon Review

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

Do not continue into evidence intake, query review, dashboard review, notebook review, remediation, implementation, closeout, or outgoing handoff unless the user explicitly confirms relay acceptance and requests the next step.
