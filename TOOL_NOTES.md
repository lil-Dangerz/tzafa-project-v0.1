# Tool Notes

## Watch Role

Scout Notes.

This file records useful behavior, limitations, repeated mistakes, environment notes, and handling rules for tools used in this project.

It prevents the same tool mistakes from being rediscovered across different sessions, chat windows, machines, or agents.

## Purpose

Use this file to record:

- tool-specific limitations
- repeated AI mistakes
- correct prompting rules
- local environment quirks
- Elastic/Kibana version behavior
- notebook environment notes
- Codex editing rules
- VS Code workspace notes
- Quarto rendering notes
- Docker/Python setup notes

This file is not the project truth ledger. Verified project truth belongs in `PROJECT_STATE.md`.

This file is not the handoff file. Active relay instructions belong in `AI_HANDOFF.md`.

## How to Use This File

Use this file when a tool behavior needs to be remembered across sessions.

At the end of a session, update this file if:

- a tool repeated a mistake
- a prompt rule was discovered
- an environment issue affected work
- a version-specific behavior was confirmed
- a tool should avoid editing or generating something in a certain way

At the start of a session, read this file when:

- the task involves queries
- the task involves notebooks
- the task involves Codex editing
- the task depends on Elastic/Kibana behavior
- previous tool mistakes may affect the work

This file should not replace:

- `PROJECT_STATE.md` for verified project truth
- `AI_HANDOFF.md` for active relay instructions
- `03_queries/QUERY_REGISTRY.md` for query status
- `02_evidence/EVIDENCE_INDEX.md` for evidence status

## Tool Inventory

| Tool | Available? | Role | Notes |
|---|---:|---|---|
| ChatGPT Web | `[Yes/No/Unknown]` | `[Reasoning, review, documentation, query support]` | `[Notes]` |
| ChatGPT App | `[Yes/No/Unknown]` | `[Local app context, Work with Apps, review]` | `[Notes]` |
| Codex App | `[Yes/No/Unknown]` | `[Agentic editing, implementation support]` | `[Notes]` |
| Codex CLI | `[Yes/No/Unknown]` | `[Terminal/local repo work]` | `[Notes]` |
| VS Code | `[Yes/No/Unknown]` | `[Workspace, editing, extensions]` | `[Notes]` |
| Jupyter Notebook | `[Yes/No/Unknown]` | `[Analysis, query execution, charts/tables]` | `[Notes]` |
| Quarto | `[Yes/No/Unknown]` | `[Reports, reproducible docs]` | `[Notes]` |
| Python | `[Yes/No/Unknown]` | `[Scripts, notebooks, data handling]` | `[Notes]` |
| Docker | `[Yes/No/Unknown]` | `[Future reproducible environments/services]` | `[Notes]` |
| Elastic/Kibana | `[Yes/No/Unknown]` | `[Data access, dashboards, queries]` | `[Notes]` |

## ChatGPT Notes

### Useful Behavior

- `[What ChatGPT is good at in this project.]`

### Limitations

- `[Known limitation.]`

### Prompting Rules

- `[Rule for getting better output.]`

### Mistakes to Avoid

| Mistake | Correct Rule | Status |
|---|---|---|
| `[Mistake ChatGPT repeated]` | `[Correct behavior]` | `[Active/Resolved]` |

## Codex Notes

### Useful Behavior

- `[What Codex is good at in this project.]`

### Editing Rules

- `[Files or folders Codex may edit when instructed.]`
- `[Files or folders Codex should avoid unless explicitly instructed.]`

### Mistakes to Avoid

| Mistake | Correct Rule | Status |
|---|---|---|
| `[Mistake Codex made]` | `[Correct behavior]` | `[Active/Resolved]` |

## VS Code Notes

### Workspace Notes

- `[Workspace setup note.]`

### Extension Notes

- `[Extension behavior or limitation.]`

### Mistakes to Avoid

- `[VS Code or extension-specific issue.]`

## Jupyter Notes

### Environment

- Python environment: `[venv/conda/system/docker/unknown]`
- Kernel: `[Kernel name/version]`

### Rules

- Notebooks may store outputs.
- Register important notebooks in `04_notebooks/NOTEBOOK_INDEX.md`.
- Store generated outputs in `06_outputs/` when reusable.
- Reference evidence and queries used by the notebook.

### Mistakes to Avoid

- `[Notebook mistake or environment issue.]`

## Quarto Notes

### Rendering

- Render command: `[quarto render path/to/file.qmd]`
- Output formats: `[html/pdf/docx/etc.]`

### Rules

- Store `.qmd` files under `04_notebooks/quarto/`.
- Register important `.qmd` files in `04_notebooks/NOTEBOOK_INDEX.md`.
- Store rendered reports in `05_reports/exports/` or `06_outputs/rendered/`.

### Mistakes to Avoid

- `[Quarto-specific issue.]`

## Elastic / Kibana Notes

### Version

- Elastic version: `[8.x / 9.x / Unknown]`
- Kibana version: `[8.x / 9.x / Unknown]`

### Access

- Access method: `[Web / local / VPN / other]`
- Data views / indexes: `[List or reference]`

### Query Notes

- Preferred query types: `[DSL / ES|QL / KQL / Lucene / Unknown]`
- Known field naming rules: `[Notes]`
- Known time field: `[Field name or Unknown]`

### Mistakes to Avoid

| Mistake | Correct Rule | Status |
|---|---|---|
| `[Example: using deprecated field name]` | `[Correct field/query rule]` | `[Active/Resolved]` |

## Docker Notes

### Current Use

`[Not used yet / Used for local services / Used for notebooks / Other]`

### Future Use

- `[Potential automation or environment use.]`

## Python Notes

### Current Use

`[Scripts / notebooks / data parsing / query execution / unknown]`

### Environment Notes

- `[Package/environment constraints.]`

## Repeated Mistakes Register

Use this section for high-priority mistakes that any tool must avoid.

| ID | Tool / Source | Mistake | Correct Rule | Related File | Status |
|---|---|---|---|---|---|
| `TM-0001` | `[ChatGPT/Codex/Human/etc.]` | `[Mistake]` | `[Correct rule]` | `[Path/reference]` | `[Active/Resolved]` |

## Edit Authority

This file is readable by all project tools.

Editable by:

- humans
- AI tools when explicitly instructed

AI tools should not update this file silently unless the instruction explicitly says to record a tool note or repeated mistake.

## Last Updated

Local time: `[YYYY-MM-DD HH:MM timezone]`

Updated by: `[Human/ChatGPT/Codex/etc.]`
