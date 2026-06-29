# Deprecated Evidence

## Watch Role

Evidence Retirement Register.

This file records evidence that should no longer be treated as current or trusted for normal project use.

It helps humans and AI tools avoid reusing stale, replaced, conflicting, shortened, suspicious, or otherwise untrusted evidence.

## Purpose

Use this file to record evidence that is:

```text
deprecated
replaced
stale
shortened
transformed in a risky way
conflicting
suspicious
no longer trusted
superseded by newer evidence
```

Do not delete evidence history just because an item is no longer current.

Record the reason it should not be used and what, if anything, replaces it.

## Entry Format

| Evidence ID | Name | Original Location / Reference | Reason Deprecated | Replacement / Conflict | Date Marked | Safe to Reuse? | Notes |
|---|---|---|---|---|---|---|---|
| E-0001 | `[Evidence name]` | `[Path, URL, system, or note]` | `[Why it should no longer be used]` | `[Replacement, conflict, or None]` | `[YYYY-MM-DD HH:MM timezone or Unknown]` | `[Yes/No/Unknown]` | `[Notes]` |

## Deprecated or Untrusted Evidence

| Evidence ID | Name | Original Location / Reference | Reason Deprecated | Replacement / Conflict | Date Marked | Safe to Reuse? | Notes |
|---|---|---|---|---|---|---|---|
| E-0004 | `stale-result-alert-screenshot-2026-06-29.png` | `02_evidence/stale-result-alert-screenshot-2026-06-29.png` | `Shortened screenshot may hide the active filters and exact time range.` | `Replaced by E-0005` | `2026-06-29 10:35 America/Mexico_City` | `No` | `Keep for traceability only; use the full screenshot for later review.` |

## Deprecation Triggers

Evidence may belong here when it is:

- replaced by a newer export
- shortened or transformed in a way that may hide important detail
- found to conflict with better-supported evidence
- discovered to be incomplete, misleading, or incorrectly sourced
- stale enough that it should not be reused without revalidation
- judged unsafe to treat as authoritative

Examples:

```text
Superseded by E-0007 export from a later date
Conflicts with E-0011 and source system audit log
Shortened screenshot hides the applied filters
Derived CSV dropped columns required for validation
```

## Relationship Rules

When possible, connect deprecated evidence back to:

- its original `EVIDENCE_INDEX.md` entry
- the replacement evidence item
- the conflicting evidence item
- the file or session where the problem was discovered

Use consistent evidence IDs when referring across files.

## Reuse Rule

Evidence listed here should not be treated as normal current evidence unless a human explicitly confirms reuse.

If reuse is allowed, explain the limitation clearly in `Notes` and consider whether a newer validated source should replace it instead.

## Cross-References

Relevant files:

```text
02_evidence/EVIDENCE_INDEX.md
PROJECT_STATE.md
AI_CONTEXT.md
03_queries/QUERY_REGISTRY.md
04_notebooks/NOTEBOOK_INDEX.md
AI_HANDOFF.md
TOOL_NOTES.md
```

## Safety Rules

Do not store secrets, credentials, API keys, tokens, private keys, certificates, or restricted data in this file unless explicitly sanitized and approved.

Do not paste large raw evidence payloads into this file.

Do not silently move evidence into this file without documenting why.

Do not treat deprecation alone as proof of fraud or error; record the specific reason.

## Last Updated

Local time: `[YYYY-MM-DD HH:MM timezone]`

Updated by: `[Human/ChatGPT/Codex/etc.]`
