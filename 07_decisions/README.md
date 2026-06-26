# Command Archive

## Watch Role

Command Archive.

This folder stores strategic, structural, or long-term project decisions used by the project.

It is not the verified truth ledger. It is not the raw evidence vault. It is not the tactical work log.

## Purpose

Use `07_decisions/` to preserve:

```text
architecture decisions
template structure decisions
platform decisions
workflow design decisions
automation design decisions
cross-project design decisions
decision status
rationale summaries
supersession notes
impact notes
```

Strategic decisions must not live only in chat.

If a long-term or architectural decision matters to project work, it should be stored or referenced here and registered in the architecture decisions record.

## Core Files

| File | Purpose |
|---|---|
| `ARCHITECTURE_DECISIONS.md` | Register strategic or long-term decisions, their status, rationale, and impact. |

## File Boundaries

### `07_decisions/`

Use this folder for strategic, structural, or long-lived decisions that affect how the template or project is designed and operated over time.

### `00_control/DECISION_LOG.md`

Use `00_control/DECISION_LOG.md` for tactical, operational, local, or session-level decisions.

Do not move every ordinary working decision into this folder.

### `PROJECT_STATE.md`

Use `PROJECT_STATE.md` for confirmed current truth, not for storing full decision histories.

### `02_evidence/`

Use `02_evidence/` for supporting proof and references that justify a decision when needed.

Do not treat decision records themselves as evidence.

### `03_queries/`, `04_notebooks/`, `05_reports/`, `06_outputs/`

Use those layers for their own artifacts, then reference them from decisions when a long-term choice depends on them.

## Decision Types

Use one of these decision types when possible:

```text
template_architecture
platform_architecture
observability_architecture
workflow_architecture
automation_architecture
dashboard_architecture
data_design
cross_project_design
other
```

## Decision Status Values

Use one of:

```text
proposed
approved
rejected
superseded
active
deferred
unknown
```

## Approval Rule

Do not mark a strategic decision as `approved` or `active` unless there is explicit confirmation from the user or supplied evidence showing that the decision should guide future work.

Use:

```text
proposed   = identified but not yet accepted
approved   = explicitly accepted as a long-term decision
active     = approved and currently governing work
superseded = replaced by a later decision
```

## Decision Handling Rules

- Store important strategic decisions in stable locations under this folder.
- Register important strategic decisions in `ARCHITECTURE_DECISIONS.md`.
- Record rationale, impact, and supporting references when known.
- Note superseded, rejected, or deferred decisions clearly.
- Do not silently treat temporary workflow choices as architecture decisions.
- Prefer stable descriptive decision titles over vague temporary names.

## Review and Update Flow

Strategic decision work should normally move through this pattern:

```text
identify the strategic decision
route tactical decisions to 00_control/DECISION_LOG.md instead when appropriate
store or update the decision record under 07_decisions/
register status, rationale, and impact
link supporting evidence, queries, notebooks, reports, or outputs when useful
mark superseded, rejected, or deferred decisions clearly when their status changes
```

The preferred prompt for decision recording is:

```text
prompts/decision-record.prompt.md
```

That prompt may update only:

```text
00_control/DECISION_LOG.md
07_decisions/ARCHITECTURE_DECISIONS.md
```

## Naming Guidance

When useful, organize decision work by stable descriptive names.

Good examples:

```text
ARCHITECTURE_DECISIONS.md
template-layer-boundary-rules.md
dashboard-source-of-truth-policy.md
automation-scope-decision.md
```

Avoid names like:

```text
decision1.md
new-idea.md
notes-final.md
strategy-stuff.md
```

## Cross-References

Relevant files:

```text
PROJECT_STATE.md
AI_CONTEXT.md
AI_HANDOFF.md
TOOL_NOTES.md
00_control/DECISION_LOG.md
02_evidence/EVIDENCE_INDEX.md
03_queries/QUERY_REGISTRY.md
04_notebooks/NOTEBOOK_INDEX.md
05_reports/REPORT_INDEX.md
06_outputs/OUTPUT_INDEX.md
07_decisions/ARCHITECTURE_DECISIONS.md
```

## Safety Rules

Do not store secrets, credentials, API keys, tokens, private keys, certificates, or restricted data in this folder unless explicitly sanitized and approved.

Do not let superseded or rejected strategic decisions remain ambiguous if they could mislead future work.

Do not treat polished decision wording as authority unless its status is clearly recorded.

## Last Updated

Local time: `[YYYY-MM-DD HH:MM timezone]`

Updated by: `[Human/ChatGPT/Codex/etc.]`
