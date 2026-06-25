# Risk Register

## Watch Role

Operational Risk Ledger.

This file tracks accepted project risks that require visibility, ownership, monitoring, mitigation, or closure.

It is not a raw threat-map output file. Threat analysis becomes a register entry only when the risk is accepted into project control.

## Purpose

Use this file to record:

```text
active risks
accepted risks
mitigated risks
closed risks
superseded risks
risk impact
risk likelihood
risk owner
mitigation status
residual risk
```

Do not use this file for raw evidence, raw logs, general notes, speculative threats, dashboard findings, query results, notebook outputs, or long-form analysis.

## Risk Status Values

Use one of:

- `active`
- `mitigated`
- `accepted`
- `closed`
- `superseded`
- `unknown`

## Risk Severity Values

Use one of:

- `low`
- `medium`
- `high`
- `critical`
- `unknown`

## Risk Likelihood Values

Use one of:

- `low`
- `medium`
- `high`
- `unknown`

## Risk Categories

Use one of:

- `scope`
- `context_drift`
- `evidence`
- `query`
- `dashboard`
- `notebook`
- `report`
- `tooling`
- `architecture`
- `handoff`
- `security`
- `privacy`
- `data_quality`
- `operational`
- `other`
- `unknown`

## Entry Format

| ID | Status | Severity | Likelihood | Category | Risk | Impact | Owner | Mitigation / Control | Residual Risk | Source / Reference | Last Updated |
|---|---|---|---|---|---|---|---|---|---|---|---|
| `R-0001` | `[active/mitigated/accepted/closed/superseded/unknown]` | `[severity]` | `[likelihood]` | `[category]` | `[Risk]` | `[Impact]` | `[Owner or Unknown]` | `[Mitigation/control or Pending]` | `[Residual risk or Unknown]` | `[Path, chat reference, or Unknown]` | `[YYYY-MM-DD HH:MM timezone]` |

## Current Risks

| ID | Status | Severity | Likelihood | Category | Risk | Impact | Owner | Mitigation / Control | Residual Risk | Source / Reference | Last Updated |
|---|---|---|---|---|---|---|---|---|---|---|---|
| `R-0001` | `[unknown]` | `[unknown]` | `[unknown]` | `[unknown]` | `[Initial risk]` | `[Impact]` | `[Unknown]` | `[Pending]` | `[Unknown]` | `[Unknown]` | `[YYYY-MM-DD HH:MM timezone]` |

## Update Rules

Add new risks with a stable ID.

Do not delete mitigated, closed, accepted, or superseded risks unless explicitly instructed.

When a risk is reduced, update Mitigation / Control and Residual Risk.

When a risk is accepted, change Status to accepted and document the reason.

When a risk is closed, change Status to closed and document why it no longer applies.

When a risk is superseded, keep the old entry and add a new entry explaining what superseded it.

Do not mark a risk as mitigated or closed unless the mitigation or closure is evidence-backed, file-backed, or explicitly confirmed by the human.

## Threat Map Boundary

`threat-map.prompt.md` is analysis-only.

A threat-map finding should be copied into this file only when the human or active project process accepts it as a tracked risk.

Do not automatically convert every threat-map finding into a registered risk.

## Cross-References

Relevant files:

- `CURRENT_MISSION.md`
- `PROJECT_STATE.md`
- `AI_CONTEXT.md`
- `AI_HANDOFF.md`
- `00_control/WORK_LOG.md`
- `00_control/OPEN_QUESTIONS.md`
- `00_control/DECISION_LOG.md`
- `02_evidence/EVIDENCE_INDEX.md`
- `03_queries/QUERY_REGISTRY.md`
- `04_notebooks/NOTEBOOK_INDEX.md`
- `05_reports/REPORT_INDEX.md`
- `06_outputs/OUTPUT_INDEX.md`
- `07_decisions/ARCHITECTURE_DECISIONS.md`

## Safety Rules

Do not store secrets, credentials, API keys, tokens, private keys, certificates, or restricted data in this file.

Do not paste raw logs or large evidence extracts into this file.

Do not use this file as evidence storage.

Do not record speculative accusations or unverified claims as facts.

Use `unknown` when severity, likelihood, ownership, or status is not yet confirmed.

## Last Updated

Local time: `[YYYY-MM-DD HH:MM timezone]`

Updated by: `[Human/ChatGPT/Codex/etc.]`
