# Mission Initialization Prompt

## Watch Role

Establish the Watch.

## Purpose

Use this prompt at the start of a new project, major mission, recovery effort, context-reset operation, or phase transition.

This prompt establishes or refreshes the project Watch baseline by drafting or updating:

```text
CURRENT_MISSION.md
PROJECT_STATE.md
AI_CONTEXT.md
```

It may also initialize selected durable context files when strong initialization sources are supplied.

## Operating Rule

Do not begin recommendations, query writing, dashboard work, notebook work, remediation, implementation, or automation until the Watch baseline is drafted and reviewed.

This prompt is for intake, alignment, and controlled initialization.

## File Authority

This prompt may draft or update only:

- `CURRENT_MISSION.md`
- `PROJECT_STATE.md`
- `AI_CONTEXT.md`
- `01_context/CONTEXT_INDEX.md`
- `01_context/DOMAIN_NOTES.md`
- `01_context/VOCABULARY.md`
- `01_context/SYSTEM_OVERVIEW.md`
- `01_context/TOPOLOGY.md`

This prompt may read supporting files when provided, including:

- `README.md`
- `TOOL_NOTES.md`
- `AI_HANDOFF.md`
- `02_evidence/EVIDENCE_INDEX.md`
- `03_queries/QUERY_REGISTRY.md`
- `04_notebooks/NOTEBOOK_INDEX.md`
- `05_reports/REPORT_INDEX.md`
- `06_outputs/OUTPUT_INDEX.md`
- `00_control/DECISION_LOG.md`
- `07_decisions/ARCHITECTURE_DECISIONS.md`
- `00_control/OPEN_QUESTIONS.md`

Do not update evidence indexes, query registries, notebook indexes, work logs, decision logs, handoffs, tool notes, or archives from this prompt.

If those files appear to need updates, list them under:

```text
Proposed Follow-Up File Updates
```

and stop for confirmation.

This prompt must not update evidence, query, notebook, report, output, or decision registries from initialization.

## Initialization Context Authority

During initialization, this prompt may update selected `01_context/` files only when durable context is supplied by the human, supplied project files, supplied architecture notes, supplied evidence summaries, or human-confirmed facts.

Allowed initialization context files:

```text
01_context/CONTEXT_INDEX.md
01_context/DOMAIN_NOTES.md
01_context/VOCABULARY.md
01_context/SYSTEM_OVERVIEW.md
01_context/TOPOLOGY.md
```

This prompt must not write:

```text
guessed domain facts
AI memory
generic examples as project facts
unverified assumptions as confirmed truth
raw evidence
large pasted docs
credentials or restricted data
```

If the source is weak, classify the item as:

```text
assumption
open question
proposed context update
```

rather than verified context.

## Prompt

You are operating inside a Tzafa observability project folder.

Your task is to establish or refresh the Watch baseline.

Use only:

- user-provided facts in this session
- files explicitly supplied or opened
- clearly marked assumptions when information is missing

Do not rely on old chat memory unless the user explicitly provides it as evidence.

Do not invent project facts, evidence, files, versions, system names, or conclusions.

Before giving recommendations, draft or update these files only:

```text
CURRENT_MISSION.md
PROJECT_STATE.md
AI_CONTEXT.md
01_context/CONTEXT_INDEX.md
01_context/DOMAIN_NOTES.md
01_context/VOCABULARY.md
01_context/SYSTEM_OVERVIEW.md
01_context/TOPOLOGY.md
```

## Required Behavior

Separate all outputs into:

- user-provided facts
- evidence-backed facts
- assumptions
- blind spots
- open questions
- proposed file updates
- proposed follow-up file updates

If evidence is missing, mark the field as:

```text
[Unknown]
```

Do not silently fill unknown fields with guesses.

## Context Discovery Check

During initialization, inspect the supplied project description, files, evidence summaries, and user-declared facts for durable context.

Durable context may include:

```text
domain knowledge
business rules
vocabulary or acronyms
system overview details
topology or data-flow details
external documentation references
stable operational constraints
```

If durable context is strong and supported, update the selected `01_context/` file during initialization.

If the context source is weak or incomplete, list it under:

```text
Proposed Follow-Up File Updates
```

For each proposed update, include:

```text
- Proposed target file:
- Proposed summary:
- Source / reference:
- Reason this is durable context:
- Validation needed: Yes/No/Unknown
```

## Artifact Routing Brief

- Must be drafted or refreshed inside `AI_CONTEXT.md` during initialization.
- Must tell future agents where to store or register evidence, queries, notebooks, reports, outputs, decisions, context, tool notes, workbench material, archives, and automation.

## Required File Drafts

Draft or update the following controlled files using the approved template structure already present in the project:

- `CURRENT_MISSION.md`
- `PROJECT_STATE.md`
- `AI_CONTEXT.md`

When strong supplied sources exist, also draft or update the relevant allowed `01_context/` files using the approved template structure already present in the project.

Preserve existing headings and update only the relevant placeholders or stale sections.

## Required Response Format

After drafting the file updates, respond with:

```text
MODE: Initialization

Watch Baseline Drafted

Files drafted or updated:
- CURRENT_MISSION.md
- PROJECT_STATE.md
- AI_CONTEXT.md

Context Files Updated:
| File | Source | Fact / Assumption | Validation Needed | Notes |
|---|---|---|---|---|

User-Provided Facts:
- ...

Evidence-Backed Facts:
- ...

Assumptions:
- ...

Blind Spots:
- ...

Open Questions:
- ...

Proposed File Updates:
- ...

Proposed Follow-Up File Updates:
- ...

Threat Level:
[Undetermined | Low | Guarded | Elevated | High | Critical]

Confidence:
[Low | Medium | High]

Checkpoint:
Review and confirm the Watch baseline before continuing.
```

## Stop Rule

After drafting the Watch baseline, stop.

Do not continue into recommendations, remediation, dashboards, queries, notebooks, scripts, evidence intake, query review, handoff, closeout, or implementation until the user confirms the baseline.
