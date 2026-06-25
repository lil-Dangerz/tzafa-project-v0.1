# AI Context

## Watch Role

Signal Brief.

This file gives AI tools the minimum operational context needed to assist without relying on long chat memory.

Use this file when starting a new ChatGPT window, Codex session, VS Code assistant session, or other AI-assisted workflow.

## Initialization Source

This file is normally created or refreshed during mission initialization using:

`prompts/mission-init.prompt.md`

It should be aligned with:

- `CURRENT_MISSION.md`
- `PROJECT_STATE.md`
- relevant evidence indexes
- relevant query registries
- relevant notebook indexes
- `TOOL_NOTES.md`

If this file conflicts with `PROJECT_STATE.md`, treat `PROJECT_STATE.md` as the higher authority.

## Source of Truth Rule

The project folder is the source of truth.

AI tools must prefer project files over chat memory.

Before analysis, recommendations, coding, query writing, notebook work, or dashboard work, read or request the relevant project files.

## Files to Read First

Minimum startup context:

```text
CURRENT_MISSION.md
PROJECT_STATE.md
AI_CONTEXT.md
```

For evidence work, also read:

```text
02_evidence/EVIDENCE_INDEX.md
02_evidence/DEPRECATED_EVIDENCE.md
```

For query work, also read:

```text
03_queries/QUERY_REGISTRY.md
```

For notebook work, also read:

```text
04_notebooks/NOTEBOOK_INDEX.md
```

For tool handoff, also read:

```text
AI_HANDOFF.md
TOOL_NOTES.md
```

When durable background context matters, also read the relevant files from:

```text
01_context/DOMAIN_NOTES.md
01_context/VOCABULARY.md
01_context/SYSTEM_OVERVIEW.md
01_context/TOPOLOGY.md
01_context/CONTEXT_INDEX.md
```

## Project Summary

`[Write a short summary of the project.]`

## Domain

`[Observability / Elastic Stack / Network Observability / Application Logs / Infrastructure / Security / Other]`

## Current Mission Snapshot

`[Summarize the current mission. Keep aligned with CURRENT_MISSION.md.]`

## Key Systems

| System | Purpose | Notes |
|---|---|---|
| `[System name]` | `[Purpose]` | `[Notes]` |

## Key Data Sources

| Source | Type | Location / Reference | Notes |
|---|---|---|---|
| `[Source]` | `[Logs/Metrics/Traces/Exports/Screenshots/etc.]` | `[Path/reference]` | `[Notes]` |

## Important Vocabulary

| Term | Meaning | Notes |
|---|---|---|
| `[Term]` | `[Definition]` | `[Notes]` |

## Active Constraints

- `[Constraint 1]`
- `[Constraint 2]`
- `[Constraint 3]`

## Known Good References

| Reference | Type | Location | Notes |
|---|---|---|---|
| `[Reference name]` | `[Query/Evidence/Notebook/Report/etc.]` | `[Path]` | `[Notes]` |

## Known Bad or Deprecated References

| Reference | Type | Location | Reason |
|---|---|---|---|
| `[Reference name]` | `[Query/Evidence/Notebook/Report/etc.]` | `[Path]` | `[Why not trusted]` |

## AI Behavior Rules

AI tools must:

- distinguish confirmed facts from assumptions
- ask for evidence when the required artifact is missing
- avoid relying on old chat memory
- avoid treating examples as authoritative evidence
- avoid treating drafts as validated work
- check registries before reusing queries
- check deprecated evidence before using old artifacts
- propose follow-up `01_context/` updates when durable background context is discovered
- record important outputs back into project files
- preserve uncertainty when evidence is incomplete

## Do Not Assume

- `[Example: Do not assume sample logs are authoritative.]`
- `[Example: Do not assume old chat output is current.]`
- `[Example: Do not reuse deprecated queries.]`

## Preferred Output Style for AI Tools

When useful, AI responses should include:

- current interpretation
- evidence used
- assumptions
- blind spots
- proposed file updates
- next checkpoint

## Edit Authority

This file is a controlled Signal Brief.

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

## Last Updated

Local time: `[YYYY-MM-DD HH:MM timezone]`

Updated by: `[Human/ChatGPT/Codex/etc.]`
