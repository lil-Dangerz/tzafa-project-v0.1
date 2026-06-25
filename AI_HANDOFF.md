# AI Handoff

## Watch Role

Relay Packet.

This file transfers active work between humans, ChatGPT windows, Codex, VS Code, Jupyter, Quarto, notebooks, machines, or future automation.

## Purpose

Use this file when work needs to continue somewhere else.

Examples:

- from one ChatGPT window to another
- from ChatGPT to Codex
- from Codex back to ChatGPT
- from notebook analysis back to documentation
- from one computer to another
- from one work session to the next

## Usage Rule

This file has two roles:

1. `Current Active Handoff`
   - refreshed when work is transferred
   - contains the current relay instruction
   - should be concise and actionable

2. `Handoff History`
   - receives a short entry for each transfer
   - preserves traceability without keeping every old relay in full detail

Do not treat this file as permanent project truth. Verified truth belongs in `PROJECT_STATE.md`.

Do not store raw evidence here. Evidence belongs in `02_evidence/`.

Do not store query libraries here. Queries belong in `03_queries/`.

Do not store notebook outputs here. Notebook outputs belong in `04_notebooks/` or `06_outputs/`.

## Start-of-Session Procedure

At the start of a new chat, tool session, or work session, read:

```text
CURRENT_MISSION.md
PROJECT_STATE.md
AI_CONTEXT.md
AI_HANDOFF.md
```

When durable background context matters, also read the relevant files from:

```text
01_context/DOMAIN_NOTES.md
01_context/VOCABULARY.md
01_context/SYSTEM_OVERVIEW.md
01_context/TOPOLOGY.md
01_context/CONTEXT_INDEX.md
```

Then continue from the `Current Active Handoff`.

If the handoff conflicts with `PROJECT_STATE.md`, treat `PROJECT_STATE.md` as the higher authority and flag the conflict.

## End-of-Session Procedure

At the end of a session, update this file with:

- what was done
- what changed
- files created, modified, or referenced
- current blockers
- warnings or mistakes to avoid
- exact next task
- recommended files for the next session to read

If durable background context was discovered during the session, do not silently treat it as project truth.

Instead, propose a follow-up update to the correct `01_context/` file.

Refresh `Current Active Handoff`.

Append one short row to `Handoff History`.

## Current Active Handoff

### Handoff Status

`[Open | In Progress | Blocked | Complete | Superseded]`

### From

`[Human / ChatGPT window / Codex / VS Code / Jupyter / Quarto / Other]`

### To

`[Human / ChatGPT window / Codex / VS Code / Jupyter / Quarto / Other]`

### Current Relay Task

`[Describe the exact task the receiving session/tool should perform next.]`

### Mission Context

`[Briefly summarize why this task matters. Keep aligned with CURRENT_MISSION.md.]`

### What Was Completed

- `[Completed item 1]`
- `[Completed item 2]`
- `[Completed item 3]`

### What Changed

| File / Area | Change | Status |
|---|---|---|
| `[Path or area]` | `[What changed]` | `[Done/In Progress/Needs Review]` |

### Files to Read First

- `CURRENT_MISSION.md`
- `PROJECT_STATE.md`
- `AI_CONTEXT.md`
- `[Add task-specific file]`

### Files Likely to Update

- `[Path 1]`
- `[Path 2]`

### Open Issues / Blockers

- `[Issue or blocker 1]`
- `[Issue or blocker 2]`

### Warnings

- `[Warning 1]`
- `[Warning 2]`

### Proposed Context Follow-Ups

- `[If durable domain, vocabulary, system, or topology context was discovered, name the target 01_context file and the reason. Otherwise write None.]`

### Exact Next Action

`[One concrete next action for the receiving session/tool.]`

### Completion Criteria for This Handoff

This handoff is complete when:

- `[Condition 1]`
- `[Condition 2]`

## Handoff History

| Local Date/Time | From | To | Relay Task | Status | Notes |
|---|---|---|---|---|---|
| `[YYYY-MM-DD HH:MM timezone]` | `[From]` | `[To]` | `[Short task summary]` | `[Open/Done/Blocked/Superseded]` | `[Notes]` |

## Edit Authority

This file is readable by all project tools.

Editable by:

- humans
- AI tools when explicitly instructed to create, refresh, or complete a handoff

AI tools should not update this file silently.

## Last Updated

Local time: `[YYYY-MM-DD HH:MM timezone]`

Updated by: `[Human/ChatGPT/Codex/etc.]`
