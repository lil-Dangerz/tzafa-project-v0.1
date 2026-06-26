# Cold Case Vault

## Watch Role

Cold Case Vault.

This folder stores superseded, closed, deprecated, retired, or otherwise inactive project material that should be retained as history.

It is not the active truth ledger. It is not the working evidence vault. It is not the scratch workbench.

## Purpose

Use `09_archive/` to preserve:

```text
closed phase material
superseded project artifacts
retired work products
deprecated bundles
historical closure records
frozen reference snapshots
archive notes
```

Archive material may still be useful for history, audit trail, or future reopening, but it should not be treated as active project record unless explicitly restored or revalidated.

## Core Rule

`09_archive/` is for retained history, not active work.

Move material here when it is no longer current but should still be preserved.

Examples:

```text
closed mission bundles
superseded report sets
retired output sets
deprecated work products
resolved but retained handoff context
```

## File Boundaries

### `09_archive/`

Use this folder for inactive or retired material that should remain available as project history.

### Active project layers

Do not move active or still-governing material here while it is still being used as:

- current evidence
- active query logic
- current notebook work
- current reports
- current outputs
- active decisions
- current verified truth

### `08_workbench/`

Use `08_workbench/` for temporary staging or experiments.

Use `09_archive/` only after material is intentionally retired, closed, superseded, or frozen.

## Archive Handling Rules

- Preserve enough context that future readers can tell why something was archived.
- Prefer clear archive names and dated bundles when useful.
- Do not silently archive active material.
- If a current file is superseded, update its active registry or ledger before or along with archiving.
- Archived material may require revalidation before reuse.

## Archive and Reuse Flow

Archive material should normally move through this pattern:

```text
identify material that is closed, superseded, deprecated, or retired
confirm it should no longer be treated as active
move or copy it into 09_archive/
record archive context when needed
update active registries or ledgers so the item is no longer treated as current
require explicit review before future reuse
```

The closeout prompt may update this folder:

```text
prompts/closeout.prompt.md
```

That prompt may archive closure-related material only within its explicit authority.

## Naming Guidance

When useful, organize archive material by clear historical names.

Good examples:

```text
phase-1-closeout-bundle-2026-06-25/
superseded-report-set-q2-2026/
deprecated-output-snapshot-returns-flow/
retired-handoff-context-2026-06-25.md
```

Avoid names like:

```text
oldstuff/
backup2/
archive-new/
misc-old.md
```

## Cross-References

Relevant files:

```text
PROJECT_STATE.md
AI_CONTEXT.md
AI_HANDOFF.md
00_control/WORK_LOG.md
02_evidence/DEPRECATED_EVIDENCE.md
03_queries/QUERY_REGISTRY.md
04_notebooks/NOTEBOOK_INDEX.md
05_reports/REPORT_INDEX.md
06_outputs/OUTPUT_INDEX.md
07_decisions/ARCHITECTURE_DECISIONS.md
08_workbench/README.md
TOOL_NOTES.md
```

## Safety Rules

Do not store secrets, credentials, API keys, tokens, private keys, certificates, or restricted data in this folder unless explicitly sanitized and approved.

Do not let archived material remain ambiguous if it could be mistaken for current active work.

Do not restore archived material to active use without explicit review or revalidation.

## Last Updated

Local time: `[YYYY-MM-DD HH:MM timezone]`

Updated by: `[Human/ChatGPT/Codex/etc.]`
