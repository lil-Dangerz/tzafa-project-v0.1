# Project State

## Current Truth Summary

`[Summarize the current verified state of the project. This should be factual, concise, and evidence-backed.]`

## Current Status

`[Initialization | Evidence Intake | Investigation | Query Development | Validation | Reporting | Closed]`

## Confirmed Facts

| Fact ID | Fact | Evidence Reference | Date Confirmed |
|---|---|---|---|
| `F-0001` | `[Confirmed fact]` | `[Evidence ID, file path, query ID, notebook ID, or report ID]` | `[YYYY-MM-DD]` |

## Unconfirmed Claims

| Claim ID | Claim | Source | Validation Needed |
|---|---|---|---|
| `C-0001` | `[Unconfirmed claim]` | `[Person/chat/file/tool]` | `[How to validate]` |

## Known Problems

| Problem ID | Problem | Area | Status | Notes |
|---|---|---|---|---|
| `P-0001` | `[Problem]` | `[Evidence/Query/Dashboard/Context/Notebook/etc.]` | `[Open/In Review/Resolved/Deprecated]` | `[Notes]` |

## Known Good Assets

| Asset ID | Asset | Type | Location | Status |
|---|---|---|---|---|
| `A-0001` | `[Asset name]` | `[Query/Notebook/Evidence/Report/Script/etc.]` | `[Path/reference]` | `[Validated/Stable/Current]` |

## Known Bad / Deprecated Assets

| Asset ID | Asset | Type | Location | Reason |
|---|---|---|---|---|
| `BAD-0001` | `[Asset name]` | `[Query/Evidence/Output/Notebook/etc.]` | `[Path/reference]` | `[Why not trusted]` |

## Active Blind Spots

- `[Blind spot 1]`
- `[Blind spot 2]`
- `[Blind spot 3]`

## Active Assumptions

- `[Assumption 1]`
- `[Assumption 2]`
- `[Assumption 3]`

## Cross-References

| Area | Primary File |
|---|---|
| Current mission | `CURRENT_MISSION.md` |
| AI context | `AI_CONTEXT.md` |
| Evidence index | `02_evidence/EVIDENCE_INDEX.md` |
| Deprecated evidence | `02_evidence/DEPRECATED_EVIDENCE.md` |
| Query registry | `03_queries/QUERY_REGISTRY.md` |
| Notebook index | `04_notebooks/NOTEBOOK_INDEX.md` |
| Work log | `00_control/WORK_LOG.md` |
| Decision log | `00_control/DECISION_LOG.md` |

## Edit Authority

This file is a controlled project-state file.

Readable by:

- humans
- ChatGPT
- Codex
- VS Code assistants
- notebooks or automation when needed

Editable by:

- humans
- AI tools only when explicitly instructed

AI tools must not silently update this file.

When an AI tool updates this file, it must preserve the distinction between:

- confirmed facts
- unconfirmed claims
- assumptions
- deprecated or invalidated assets
- active blind spots

## Update Rules

- Update this file only when project truth changes.
- Do not use this file as scratch space.
- Do not record guesses as confirmed facts.
- Every confirmed fact should reference evidence, query, notebook, report, or decision material.
- If a fact becomes invalid, move or reference it under known bad/deprecated assets.
- If a source is uncertain, record it under unconfirmed claims.

## Last Updated

Local time: `[YYYY-MM-DD HH:MM timezone]`

Updated by: `[Human/ChatGPT/Codex/etc.]`
