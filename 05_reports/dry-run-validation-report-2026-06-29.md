# Dry Run Validation Report

## Report Metadata

- Report ID: `R-0001`
- Date: `2026-06-29`
- Branch: `codex/dry-run-1`
- Report Type: `validation_report`
- Audience: `Human QA, AI QA, template maintainer`
- Status: `draft`

## Purpose

This report documents the full dummy dry run executed against the reusable Tzafa project template after the first-use readiness fixes already applied on `main` and `development`.

It records:

- what was tested
- what was changed on the dry-run branch
- what worked
- what remained weak
- what the dry run proved about template usability
- what template improvement is recommended next

## Executive Verdict

The reusable template is usable for manual first use.

It was not cleanly first-use ready before the earlier template fixes on `main` and `development`, but those blockers were already corrected before this dry run.

The dry run showed that the fixed template can:

- initialize a project
- route evidence, queries, notebooks, and outputs into the correct folders
- register those artifacts in the correct ledgers
- support read-only dashboard review
- support closeout-oriented control updates

The dry run also exposed one workflow design gap:

- later prompt flows can leave `CURRENT_MISSION.md` and parts of `AI_CONTEXT.md` out of sync with the actual branch state because prompt authority is split across phases

This is not a fatal usability blocker, but it is a legitimate template refinement target.

## Preconditions

Before this dry run started, the reusable template had already been repaired on `main` and `development` for the following first-use blockers:

- mission-init authority alignment
- missing notebook folder readiness
- metadata neutralization
- Markdown source normalization
- `.gitignore` correction for official handoff files

Those fixes are part of the reusable template baseline.

## Dry Run Objective

The dry run used a fictional observability mission to test whether the template could be used as an actual working project structure without contaminating the reusable branch.

The dummy scenario was intentionally fictional and focused on:

- catalog search reliability
- latency
- stale-result interpretation
- freshness degradation
- Elasticsearch and Kibana observability assumptions

## Scope Executed

The following dry-run phases were exercised on `codex/dry-run-1`:

1. `mission-init`
2. `evidence-intake`
3. `query-review`
4. `notebook-review`
5. native dummy artifact creation
6. `dashboard-review`
7. `closeout` drafting and control-layer update
8. cleanup verification

## Chronological Summary

### 1. Mission Initialization

Initialized:

- `CURRENT_MISSION.md`
- `PROJECT_STATE.md`
- `AI_CONTEXT.md`
- `01_context/CONTEXT_INDEX.md`
- `01_context/DOMAIN_NOTES.md`
- `01_context/VOCABULARY.md`
- `01_context/SYSTEM_OVERVIEW.md`
- `01_context/TOPOLOGY.md`

Purpose:

- test whether the template could establish an initial project baseline from supplied durable dummy facts
- confirm that selected `01_context/` files could be populated during initialization under the approved authority model

### 2. Evidence Intake

Updated:

- `02_evidence/EVIDENCE_INDEX.md`
- `02_evidence/DEPRECATED_EVIDENCE.md`

Later created native dummy evidence files:

- `02_evidence/search-api-latency-sample-2026-06-29.ndjson`
- `02_evidence/catalog-index-freshness-export-2026-06-29.csv`
- `02_evidence/kibana-search-reliability-dashboard-2026-06-29.ndjson`
- `02_evidence/stale-result-alert-screenshot-2026-06-29.png`
- `02_evidence/stale-result-alert-screenshot-full-2026-06-29.png`

Purpose:

- test evidence routing
- test evidence registration
- test deprecated evidence handling

### 3. Query Review

Updated:

- `03_queries/QUERY_REGISTRY.md`

Created native dummy query files:

- `03_queries/search-latency-percentiles.esql`
- `03_queries/stale-result-alerts.kql`
- `03_queries/freshness-bucket-summary.sql`
- `03_queries/search-cluster-error-filter.lucene`

Purpose:

- test query routing
- test status handling for draft, tested, and broken queries

### 4. Notebook Review

Updated:

- `04_notebooks/NOTEBOOK_INDEX.md`
- `06_outputs/OUTPUT_INDEX.md`

Created native dummy notebook and output files:

- `04_notebooks/jupyter/search-latency-and-freshness-review.ipynb`
- `06_outputs/search-latency-percentiles-2026-06-29.png`
- `06_outputs/freshness-bucket-summary-2026-06-29.csv`

Purpose:

- test notebook routing
- test output routing
- test notebook-to-output linkage

### 5. Dashboard Review

Read and reviewed:

- `prompts/dashboard-review.prompt.md`
- `02_evidence/kibana-search-reliability-dashboard-2026-06-29.ndjson`
- linked evidence, queries, notebook, and outputs

Purpose:

- test read-only dashboard-review behavior
- confirm that a dashboard surface could be evaluated from routed project files

Result:

- routing worked
- review logic worked
- dashboard evidence was intentionally too thin for trust-ready conclusions

### 6. Closeout Draft

Updated:

- `PROJECT_STATE.md`
- `AI_HANDOFF.md`
- `00_control/WORK_LOG.md`

Purpose:

- test closeout-authorized updates
- record what the branch actually proved

Result:

- `PROJECT_STATE.md` could be updated honestly
- `AI_HANDOFF.md` could be refreshed to the current branch state
- `00_control/WORK_LOG.md` could capture a durable activity trail

### 7. Cleanup Verification

Performed a read-only contamination and branch-state sweep.

Purpose:

- confirm that dry-run content remained isolated on `codex/dry-run-1`
- confirm that `main` and `development` remained clean

Result:

- `main` and `development` were not modified by dry-run content
- all dummy content remained confined to the disposable branch working tree

## What Worked

The dry run confirmed the following reusable template behaviors:

- the template can be initialized from a supplied mission description
- selected `01_context/` files can be populated in a controlled way
- evidence routing works
- query routing works
- notebook routing works
- output routing works
- native artifact files can coexist with their registries correctly
- deprecated evidence can be tracked separately
- dashboard-review can operate as a read-only diagnostic prompt
- closeout can update the files within its declared authority

## What Did Not Fail But Remains Weak

The dry run exposed these weaknesses:

### Split control-file synchronization

Later prompt flows can advance project state without being allowed to refresh every top-level control file that summarizes that state.

Observed example:

- `PROJECT_STATE.md` was updated during closeout
- `CURRENT_MISSION.md` and parts of `AI_CONTEXT.md` still described the earlier pre-artifact phase

This created a control-layer synchronization gap.

### Thin dashboard evidence

The dummy dashboard export was enough for routing and prompt testing, but not enough for trustworthy observability review because it lacked:

- explicit audience
- full panel configuration
- threshold logic
- filter state
- confirmed panel-to-query bindings

### Analytical validation was not the goal

The dry run did not prove:

- query correctness
- notebook execution correctness
- output correctness
- real operational truth

That limitation was intentional.

## Usability Conclusion

### Is the reusable template usable right now?

Yes.

It is usable for manual first use on `main` and `development`.

### Did the template require modification before that was true?

Yes.

Those earlier readiness fixes were necessary and were already applied to `main` and `development`.

### Did the dry run find a new fatal blocker?

No.

### Did the dry run find a real improvement target?

Yes.

The main improvement target is explicit control-file synchronization after later prompt phases materially change branch state.

## Recommendation

Recommended next template improvement:

- add a small explicit control-refresh rule to the reusable template workflow

Recommended behavior:

- when a later phase materially changes project state, refresh affected control files if the active prompt is authorized
- if the active prompt is not authorized, explicitly propose a control-refresh follow-up instead of leaving the files silently stale

This recommendation preserves narrow prompt authority while reducing misleading drift across:

- `CURRENT_MISSION.md`
- `PROJECT_STATE.md`
- `AI_CONTEXT.md`
- `AI_HANDOFF.md`

## Planned Implementation Target

This recommendation is planned to be implemented on:

- `development`

Intent of that future implementation:

- improve synchronization rules in the reusable template
- preserve existing artifact-routing doctrine
- avoid carrying any dummy dry-run content onto the reusable branch

## Important Boundary

The dry-run branch content must not be merged into the reusable template as-is.

The following are dry-run instance content, not reusable template truth:

- dummy mission state
- fictional catalog search domain context
- dummy evidence artifacts
- dummy query files
- dummy notebook and output files
- dummy handoff and closeout state

Only reusable workflow improvements should be considered for implementation on `development`.

## Files Most Relevant To This Report

- `CURRENT_MISSION.md`
- `PROJECT_STATE.md`
- `AI_CONTEXT.md`
- `AI_HANDOFF.md`
- `00_control/WORK_LOG.md`
- `01_context/CONTEXT_INDEX.md`
- `01_context/DOMAIN_NOTES.md`
- `01_context/VOCABULARY.md`
- `01_context/SYSTEM_OVERVIEW.md`
- `01_context/TOPOLOGY.md`
- `02_evidence/EVIDENCE_INDEX.md`
- `02_evidence/DEPRECATED_EVIDENCE.md`
- `03_queries/QUERY_REGISTRY.md`
- `04_notebooks/NOTEBOOK_INDEX.md`
- `06_outputs/OUTPUT_INDEX.md`

## Final Summary

The dry run achieved its main goal.

It demonstrated that the repaired template is usable, that artifact routing works across the tested layers, and that dry-run contamination can be kept isolated from the reusable branches.

The main follow-up is not to copy dry-run content into the template, but to implement a small reusable workflow improvement on `development` so later prompt phases cannot leave control files silently out of sync.
