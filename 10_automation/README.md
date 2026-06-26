# Engine Room

## Watch Role

Engine Room.

This folder stores scripts, Docker files, helpers, utilities, automation scaffolds, and execution support assets used by the project.

It is not the verified truth ledger. It is not the evidence vault. It is not the prompt library.

## Purpose

Use `10_automation/` to preserve:

```text
python utilities
shell or powershell helpers
docker files
automation scaffolds
execution wrappers
repeatable helper scripts
environment support files
automation notes
run instructions
```

Automation assets must not live only in chat.

If a script or automation helper matters to project work, it should be stored or referenced here.

## Core Rule

`10_automation/` is for executable or automation-supporting project assets.

If an automation asset becomes strategic project doctrine, record the decision in:

```text
07_decisions/ARCHITECTURE_DECISIONS.md
```

If it produces durable evidence, queries, notebooks, reports, outputs, or control records, those artifacts still belong in their own destination layers.

## File Boundaries

### `10_automation/`

Use this folder for code or configuration intended to automate, assist, or standardize repeatable project work.

### `prompts/`

Use `prompts/` for AI operating instructions.

Do not use `10_automation/` as a substitute for prompt files, and do not use prompt files as script storage.

### `02_evidence/`, `03_queries/`, `04_notebooks/`, `05_reports/`, `06_outputs/`

Use those layers for the artifacts produced or governed by automation.

Do not let automation assets replace the registries or ledgers that track those outputs.

### `00_control/` and `07_decisions/`

Use control and decision layers for approved operational or strategic records about automation.

Do not treat scripts alone as approved project policy.

## Handling Rules

- Store automation files with clear names and clear scope.
- Prefer repeatable helpers over undocumented one-off commands when the work will recur.
- Document assumptions or environment needs when they are not obvious from the file itself.
- Keep automation outputs routed into the correct durable project layer.
- Do not silently treat unreviewed automation as safe, correct, or authoritative.

## Review and Usage Flow

Automation work should normally move through this pattern:

```text
identify repeatable work
create or store the helper in 10_automation/
document how it should be used when needed
run it only with appropriate review and approval
route resulting artifacts into the correct destination layer
record strategic automation choices in decisions when they become durable policy
```

There is no dedicated automation-management prompt in the current template prompt set.

Automation files may be created or edited during normal project work when explicitly instructed.

## Naming Guidance

When useful, organize automation assets by stable descriptive names.

Good examples:

```text
refresh-evidence-index.ps1
render-report-bundle.py
docker-compose.observability.yml
validate-query-registry.py
```

Avoid names like:

```text
script1.py
newtool.ps1
helper-final.py
testdocker.yml
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
prompts/README.md
```

## Safety Rules

Do not store secrets, credentials, API keys, tokens, private keys, certificates, or restricted data in this folder unless explicitly sanitized and approved.

Do not run or trust automation blindly just because it exists in the repository.

Do not let automation outputs bypass the normal project registries and ledgers.

## Last Updated

Local time: `[YYYY-MM-DD HH:MM timezone]`

Updated by: `[Human/ChatGPT/Codex/etc.]`
