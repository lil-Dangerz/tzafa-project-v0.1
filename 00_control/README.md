# Command Log

## Watch Role

Command Log.

This folder records the operational control trail for the project.

It answers:

```text
What work happened?
What questions remain?
What risks are active?
What tactical decisions were made?
```

## Purpose

Use `00_control/` to preserve the mission control record across humans, AI tools, chats, notebooks, and coding sessions.

This folder is not for raw evidence, query files, notebook outputs, reports, or generated artifacts.

## Files

| File | Purpose |
|---|---|
| `WORK_LOG.md` | Chronological record of work performed. |
| `OPEN_QUESTIONS.md` | Questions that are open, answered, retired, or blocking. |
| `RISK_REGISTER.md` | Active and historical project risks. |
| `DECISION_LOG.md` | Tactical/project decisions. |

## File Boundaries

### `WORK_LOG.md`

Use for:

- session activity
- major edits
- files changed
- files reviewed
- status checkpoints
- closeout entries

Do not use for:

- raw logs
- evidence records
- query validation
- dashboard findings
- notebook results

### `OPEN_QUESTIONS.md`

Use for:

- unanswered questions
- blocked questions
- answered questions that need history
- retired questions
- questions affecting scope, evidence, or decisions

Do not use for:

- general notes
- temporary thoughts
- raw investigation output

### `RISK_REGISTER.md`

Use for:

- known risks
- risk impact
- risk likelihood
- risk owner
- risk status
- mitigation status
- residual risk

Do not use for:

- threat-map analysis output unless the risk is accepted into the register
- temporary suspicions without classification

### `DECISION_LOG.md`

Use for tactical/project decisions such as:

- mission scope decisions
- workflow decisions
- evidence handling decisions
- query status decisions
- tool usage decisions
- prompt approval decisions
- local template decisions

Do not use for strategic architecture decisions.

Strategic or long-term design decisions belong in:

`07_decisions/ARCHITECTURE_DECISIONS.md`

## Update Authority

Humans may update files in this folder directly.

AI tools may update files in this folder only when explicitly instructed and only when the active prompt allows it.

Prompt authority:

| Prompt | Allowed Control Updates |
|---|---|
| `decision-record.prompt.md` | May edit `00_control/DECISION_LOG.md`. |
| `closeout.prompt.md` | May edit `00_control/WORK_LOG.md`. |
| Other prompts | May propose updates only unless explicitly authorized. |

## Status Values

Use consistent status values where possible.

Question status:

- `open`
- `answered`
- `blocked`
- `retired`
- `unknown`

Risk status:

- `active`
- `mitigated`
- `accepted`
- `closed`
- `superseded`
- `unknown`

Decision status:

- `proposed`
- `approved`
- `rejected`
- `superseded`
- `active`
- `deferred`
- `unknown`

Work status:

- `planned`
- `in_progress`
- `completed`
- `blocked`
- `superseded`
- `unknown`

## Cross-Reference Rules

When a control entry refers to another project artifact, include its path.

Examples:

- `02_evidence/EVIDENCE_INDEX.md`
- `03_queries/QUERY_REGISTRY.md`
- `04_notebooks/NOTEBOOK_INDEX.md`
- `05_reports/REPORT_INDEX.md`
- `06_outputs/OUTPUT_INDEX.md`
- `07_decisions/ARCHITECTURE_DECISIONS.md`
- `AI_HANDOFF.md`
- `PROJECT_STATE.md`

## Safety Rules

Do not store secrets, credentials, API keys, tokens, private keys, certificates, or restricted data in this folder.

Do not paste large raw logs into control files.

Do not use control files as evidence storage.

Do not let old chat memory override verified project files.

Do not mark work complete unless the completion is evidence-backed, file-backed, or explicitly confirmed by the human.

## Last Updated

Local time: `[YYYY-MM-DD HH:MM timezone]`

Updated by: `[Human/ChatGPT/Codex/etc.]`
