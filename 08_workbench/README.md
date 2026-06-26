# Sand Table

## Watch Role

Sand Table.

This folder stores scratch work, experiments, temporary scaffolds, draft fragments, and disposable working material used during project work.

It is not the verified truth ledger. It is not the evidence vault. It is not a durable registry layer.

## Purpose

Use `08_workbench/` to preserve temporary material such as:

```text
scratch notes
trial files
temporary comparisons
prototype snippets
draft fragments
throwaway exports
experiment staging files
work-in-progress scaffolds
```

This folder exists so exploratory or temporary work has a defined place instead of leaking into durable project records.

Items here may be useful, but they should not be treated as project truth, validated evidence, approved decisions, or final outputs unless they are promoted into the correct durable layer.

## Core Rule

`08_workbench/` is a temporary working area.

If something becomes important, move or register it in the correct durable destination.

Examples:

```text
evidence -> 02_evidence/
queries -> 03_queries/
notebooks -> 04_notebooks/
reports -> 05_reports/
outputs -> 06_outputs/
strategic decisions -> 07_decisions/
tactical decisions -> 00_control/DECISION_LOG.md
verified truth -> PROJECT_STATE.md
```

## File Boundaries

### `08_workbench/`

Use this folder for temporary, experimental, or staging material that is not yet durable project record.

### Durable project layers

Do not leave important material here once it becomes:

- evidence
- validated query logic
- reproducible notebook work
- audience-facing reports
- important generated outputs
- approved tactical decisions
- approved strategic decisions
- verified project truth

### `09_archive/`

Use `09_archive/` for superseded or closed material that should be retained as history.

Do not use `08_workbench/` as long-term storage for retired artifacts.

## Handling Rules

- Keep experiments and scratch work clearly named.
- Prefer short-lived files over hidden undocumented temporary state.
- Promote important artifacts into the correct durable layer as soon as they matter to project work.
- Remove or archive stale scratch material when it stops being useful.
- Do not cite workbench files as authoritative unless the user explicitly confirms they should be treated that way.

## Review and Promotion Flow

Workbench material should normally move through this pattern:

```text
create scratch or experiment artifact
keep it in 08_workbench/ while it is temporary
decide whether it should be discarded, archived, or promoted
move durable material into the correct project layer
register promoted material in the destination index or ledger when required
```

There is no dedicated workbench prompt in the current template prompt set.

Workbench content may be created or edited during normal project work when explicitly instructed, but it should not silently become durable project record.

## Naming Guidance

When useful, organize workbench material by clear temporary names.

Good examples:

```text
scratch-query-comparison.md
draft-returns-flow-notes.txt
experiment-dashboard-layout.json
temp-output-check.csv
```

Avoid names like:

```text
stuff.txt
newfile.md
test2.json
random.csv
```

## Cross-References

Relevant files:

```text
PROJECT_STATE.md
AI_CONTEXT.md
AI_HANDOFF.md
00_control/WORK_LOG.md
02_evidence/EVIDENCE_INDEX.md
03_queries/QUERY_REGISTRY.md
04_notebooks/NOTEBOOK_INDEX.md
05_reports/REPORT_INDEX.md
06_outputs/OUTPUT_INDEX.md
07_decisions/ARCHITECTURE_DECISIONS.md
09_archive/
TOOL_NOTES.md
```

## Safety Rules

Do not store secrets, credentials, API keys, tokens, private keys, certificates, or restricted data in this folder unless explicitly sanitized and approved.

Do not let old or discarded experiments remain ambiguous if they could be mistaken for approved project artifacts.

Do not treat workbench files as durable truth just because they were convenient during exploration.

## Last Updated

Local time: `[YYYY-MM-DD HH:MM timezone]`

Updated by: `[Human/ChatGPT/Codex/etc.]`
