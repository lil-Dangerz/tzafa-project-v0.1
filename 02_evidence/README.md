# Evidence Vault

## Watch Role

Evidence Vault.

This folder stores raw proof, exports, samples, screenshots, schemas, references, and other evidence artifacts used to support project work.

It is not the verified truth ledger. It is not the current mission order.

## Purpose

Use `02_evidence/` to preserve evidence such as:

```text
logs
metric exports
trace exports
event exports
dashboard exports
screenshots
configs
schemas
samples
external references
notebook-derived evidence
report-derived evidence
```

Evidence may remain in its native format.

This folder is the project’s evidence storage area, while evidence status and trust decisions should be recorded in the evidence registries.

## Core Files

| File | Purpose |
|---|---|
| `EVIDENCE_INDEX.md` | Register current evidence and its status. |
| `DEPRECATED_EVIDENCE.md` | Record stale, replaced, shortened, conflicting, suspicious, or no-longer-trusted evidence. |

## File Boundaries

### `02_evidence/`

Use this folder for raw or registered proof.

### `PROJECT_STATE.md`

Use `PROJECT_STATE.md` for confirmed truth, not for storing raw evidence.

### `01_context/`

Use `01_context/` for durable background context, not proof artifacts.

### `03_queries/`

Use `03_queries/` for query logic, query files, and query status, not raw evidence storage.

### `04_notebooks/` and `06_outputs/`

Use notebooks and outputs for analysis work and produced artifacts.

If they generate evidence that should be retained as proof, register or store it here as appropriate.

## Evidence Types

Use one of these evidence types when possible:

```text
log
metric_export
trace_export
event_export
dashboard_export
screenshot
config
schema
sample
notebook
report
ticket
external_reference
other
```

## Evidence Status Values

Use one of:

```text
raw
working
validated
deprecated
conflicting
unknown
```

## Evidence Handling Rules

- Keep evidence in native format when practical.
- Register important evidence in `EVIDENCE_INDEX.md`.
- Record stale or untrusted evidence in `DEPRECATED_EVIDENCE.md`.
- Prefer references and metadata in Markdown files over pasting large raw payloads into `.md`.
- Preserve timestamps, source details, and transformation notes when known.
- Mark shortened, transformed, copied, or derived evidence clearly.
- Do not treat evidence presence alone as verified truth; truth belongs in `PROJECT_STATE.md`.

## Intake and Update Flow

Evidence should normally move through this pattern:

```text
capture or receive evidence
store it in native format
register it in EVIDENCE_INDEX.md
validate or classify it
move stale or untrusted items into DEPRECATED_EVIDENCE.md when needed
reference it from project state, queries, notebooks, reports, or handoffs
```

The preferred prompt for evidence registration is:

```text
prompts/evidence-intake.prompt.md
```

That prompt may update only:

```text
02_evidence/EVIDENCE_INDEX.md
02_evidence/DEPRECATED_EVIDENCE.md
```

## Naming and Organization Guidance

When useful, organize evidence by stable descriptive names rather than vague temporary names.

Good examples:

```text
warehouse-exchange-sample-2026-06-25.json
kibana-dashboard-export-returns-flow.ndjson
sonar-quality-gate-screenshot-2026-06-25.png
incident-timeline-export-p1-checkout.csv
```

Avoid names like:

```text
stuff.json
image1.png
test.csv
new-export.ndjson
```

## Sensitive Data Rules

Do not store secrets, credentials, API keys, tokens, private keys, certificates, or restricted data in this folder unless explicitly sanitized and approved.

Be cautious with:

- raw production logs
- customer data
- account identifiers
- infrastructure details
- exported configs

If sensitive material must be referenced, prefer storing a sanitized copy and recording that it is sanitized.

## Cross-References

Relevant files:

```text
PROJECT_STATE.md
AI_CONTEXT.md
02_evidence/EVIDENCE_INDEX.md
02_evidence/DEPRECATED_EVIDENCE.md
03_queries/QUERY_REGISTRY.md
04_notebooks/NOTEBOOK_INDEX.md
05_reports/REPORT_INDEX.md
06_outputs/OUTPUT_INDEX.md
AI_HANDOFF.md
```

## Last Updated

Local time: `[YYYY-MM-DD HH:MM timezone]`

Updated by: `[Human/ChatGPT/Codex/etc.]`
