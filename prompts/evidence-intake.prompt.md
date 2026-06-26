# Evidence Intake Prompt

## Watch Role

Evidence Intake.

## Purpose

Use this prompt when evidence must be registered, classified, deprecated, or linked to the current project Watch. This prompt handles evidence intake only.

## File Authority

This prompt may draft or update only `02_evidence/EVIDENCE_INDEX.md` and `02_evidence/DEPRECATED_EVIDENCE.md`. It may read supporting files when provided. Do not update other files from this prompt.

Useful supporting files may include:

- `02_evidence/README.md`
- `PROJECT_STATE.md`
- `AI_CONTEXT.md`
- `AI_HANDOFF.md`

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

## Evidence Types

Use one of these evidence types when possible:

- `log`
- `metric_export`
- `trace_export`
- `event_export`
- `dashboard_export`
- `screenshot`
- `config`
- `schema`
- `sample`
- `notebook`
- `report`
- `ticket`
- `external_reference`
- `other`

## Evidence Status Values

Use one of:

- `raw`
- `working`
- `validated`
- `deprecated`
- `conflicting`
- `unknown`

## Required Intake Checks

For each evidence item, determine evidence name, type, location or reference, source, status, date/timestamp if supplied, whether it is original/copy/export/shortened/transformed/derived, whether it replaces another evidence item, whether it conflicts with known evidence, whether it contains sensitive information, and whether follow-up validation is needed.

When `02_evidence/README.md` is available, use it as the layer guidance for what belongs in the evidence vault, how evidence should be stored, and how evidence differs from context, queries, notebooks, outputs, and project truth.


## Required Response Format

Respond with:

```text
MODE: Diagnostic

Evidence Intake

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

Do not continue into investigation, recommendations, query writing, dashboard review, notebook execution, remediation, handoff, closeout, or implementation unless the user explicitly requests a separate next step.
