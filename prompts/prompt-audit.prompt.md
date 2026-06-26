# Prompt Audit Prompt

## Watch Role

Command Inspection.

## Purpose

Use this prompt when the prompt library needs to be reviewed for clarity, redundancy, drift, unsafe assumptions, missing guardrails, or project-specific contamination. This prompt audits reusable command prompts only.

## File Authority

This prompt is read-only by default. It may read `README.md`, `prompts/README.md`, `prompts/*.prompt.md`, `CURRENT_MISSION.md`, `PROJECT_STATE.md`, `AI_CONTEXT.md`, and `TOOL_NOTES.md`. It may edit prompt files only after explicit human approval naming the exact files allowed for modification.

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

## Conditional Edit Authority

This prompt is read-only by default.

It may edit prompt files only when the human explicitly authorizes editing after reviewing the audit findings.

The edit authorization must name the exact files allowed for modification.

Do not edit the entire prompt library unless explicitly instructed.

If edit authorization is not explicit, provide proposed updates only.

## Required Audit Areas

Inspect the prompt library for unclear purpose, duplicate or overlapping command roles, missing or excessive file authority, missing stop rules, missing response formats, unsafe assumptions, project-specific contamination, prior-project leakage into generic template prompts, missing distinction between read-only and editable commands, commands that may silently alter project truth, missing handoff/handon distinction, unclear closeout behavior, and obsolete prompt references.


## Required Response Format

Respond with:

```text
MODE: Diagnostic

Prompt Audit

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

Do not edit prompt files, update README files, rewrite commands, perform mission initialization, evidence intake, query review, handoff, handon, closeout, remediation, implementation, or automation unless the user explicitly requests a separate next step.
