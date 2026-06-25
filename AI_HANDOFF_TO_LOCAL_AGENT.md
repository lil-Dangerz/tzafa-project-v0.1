# AI Handoff to Local Agent

## Immediate Instruction to Receiving Agent

You are receiving a detailed relay packet for a local-first observability project template named `tzafa-project`.

Read this entire file before acting. Do not edit any files yet.

After reading, report:

```text
MODE: Diagnostic

Relay Acceptance Report

Project Objective:
[summary]

Why This Project Exists:
[summary]

Current Local Path:
[path]

Current Approved State:
[summary]

Current Checkpoint:
[checkpoint]

Files Allowed To Edit Right Now:
[list]

Files Forbidden To Edit Right Now:
[list]

Detected Risks:
[list]

Questions / Blockers:
[list]

Exact Next Safe Action:
[action]

Checkpoint:
Awaiting human confirmation before editing.
```

Then stop. Do not continue, create files, modify files, stage files, commit files, run formatters, rename files, or infer missing content unless explicitly instructed by the human.

---

## Handoff Type

Maximum-detail relay packet from ChatGPT/Tzafa to a local file-editing AI agent such as Codex, ChatGPT VS Code extension, or another VS Code assistant.

This file is intended to preserve as much operational context as possible while allowing the receiving AI to work directly with local files.

---

## Critical Source-of-Truth Rule

This handoff is a relay packet, not the highest source of truth.

Authority order:

```text
1. Current committed project files
2. Git status / Git diff
3. Human explicit instruction in the current local session
4. This handoff file
5. Prior chat memory or inferred context
```

If this handoff conflicts with committed project files, the committed files win.

If this handoff conflicts with the human's current explicit instruction, ask for clarification or follow the human instruction if it is safe and within project discipline.

Do not treat this handoff as permission to edit broadly.

---

## Project Objective

Create a reusable, local-first observability project template named `tzafa-project`.

The template provides a disciplined file-backed command center for observability, investigation, dashboard design, query development, evidence handling, notebook/report work, and AI-assisted collaboration.

Its purpose is to let humans and multiple AI tools work on the same project without relying on one long chat as the source of truth.

The project coordinates ChatGPT, Codex, VS Code assistants, Python, Jupyter, Quarto, Docker, Git, and future automation through approved folders, control files, reusable prompts, explicit file authority, Git checkpoints, and handoff/handon/closeout discipline.

---

## Why This Project Exists

This project exists because a prior long-running observability/dashboard investigation became vulnerable to context drift, memory loss, repeated mistakes, ambiguous evidence state, and chat-only project knowledge.

The earlier work involved WMS Brazil dashboard analysis and Elastic/Kibana query development over an extended period. As the chat grew, the risk increased that evidence versions, validated queries, assumptions, dashboard decisions, and tool mistakes could be forgotten, mixed together, or silently overwritten.

The user wants a durable local project structure where files, not chat memory, are authoritative.

The template is designed to prevent:

```text
long-chat context collapse
repeated query mistakes after validation
evidence contamination
untracked assumptions
unclear file authority
missing handoff state
AI tools editing too broadly
tool-generated cache/noise entering Git
project-specific findings leaking into reusable templates
dashboard or observability work proceeding without evidence-backed state
```

The deeper goal is to create a portable Watch system: a reusable command framework that can be copied for future observability projects and used across multiple AI tools without losing operational discipline.

---

## User Preferences and Operating Style

The human user prefers:

```text
checkpoint-by-checkpoint approval
clear explanations of what is being reviewed
no irrelevant questions
no excessive copy-paste when local file editing can be used
manual paste for short approved Markdown files when efficient
local agent editing for multi-file or higher-risk edits
Git status / diff as the control surface
practical Watch terminology without excessive theatrical tone
explicit boundaries between approved, pending, and proposed content
```

Important interpretation rule:

During short file checkpoints, when the user says `approve`, they may mean:

```text
approved
created locally
saved locally
ready for the next checkpoint
```

Do not ask them to create the same file again unless there is ambiguity, an error, or Git status suggests the file is missing.

---

## Tzafa / Watch Doctrine

This project uses the Tzafa/Warden framing:

```text
Clarity is Liberty.
```

Operational vocabulary:

```text
Watch Order          = CURRENT_MISSION.md
Watch Ledger         = PROJECT_STATE.md
Signal Brief         = AI_CONTEXT.md
Relay Packet         = AI_HANDOFF.md
Scout Notes          = TOOL_NOTES.md
Evidence Vault       = 02_evidence/
Query Arsenal        = 03_queries/
Field Lab            = 04_notebooks/
Dispatches           = 05_reports/
Produced Signals     = 06_outputs/
Command Log          = 00_control/
Strategic Decisions  = 07_decisions/
Command Prompts      = prompts/
Local Hygiene Guard  = .gitignore
Cross-Platform Signal Guard = .gitattributes
```

Response style should be precise, methodical, assessment-focused, and explicit about blind spots and assumptions.

Substantive responses should begin with:

```text
MODE: [Initialization | Threat Mapping | Troubleshooting | Diagnostic | Design | Query | Advisory]
```

Use checkpoint discipline:

```text
Stop after each step.
Require explicit human confirmation before continuing.
Do not perform multiple unapproved design steps at once.
```

For substantive project responses, include:

```text
Threat Level
Blind Spots
Assumptions
Confidence
```

Also classify proposed solutions when relevant:

```text
ROOT CAUSE RESOLUTION
```

or:

```text
TEMPORARY MITIGATION
```

and justify the classification.

---

## Local Environment

Known local path:

```text
C:\Users\Allen\Documents\Git\tzafa-project-v0.1
```

User is working on Windows and currently using the ChatGPT Windows app.

The ChatGPT Windows app does not directly edit local files in this workflow. The local agent or VS Code assistant should perform local file edits.

The user also has or may use:

```text
VS Code
Codex app / CLI / extension
ChatGPT VS Code extension or other VS Code assistants
Python
Docker
Jupyter
Quarto
Git
```

Local Git has been initialized.

Known local tool-generated folder:

```text
.elastic-copilot/
```

It is ignored by Git.

Earlier `.qodo/` was seen as an extra folder in an inspection report, but later `git status --ignored` showed only `.elastic-copilot/`. No action needed unless `.qodo/` reappears.

---

## Git Workflow

Use local Git as checkpoint ledger.

Rules:

```text
Do not stage or commit unless explicitly instructed.
Before changing files, inspect git status.
After changing files, report exact files changed.
Use git diff for review when requested.
Do not add tool-generated cache/noise folders.
```

Useful commands:

```powershell
git status --short
git status --ignored
git diff -- <path>
git add <path>
git commit -m "<message>"
```

Current confirmed state before this handoff was requested:

```text
00_control/ had been committed successfully.
git status --short produced no file output after that commit.
01_context/ work then began.
01_context/README.md was created.
01_context/CONTEXT_INDEX.md was created.
git status --short showed ?? 01_context/
```

Because this handoff file is being generated outside the local folder, the receiving agent must inspect the actual local Git state before proceeding.

---

## Approved Root Structure

Approved root folder name:

```text
tzafa-project
```

Current local extracted folder:

```text
tzafa-project-v0.1
```

Approved root structure:

```text
tzafa-project/
├── README.md
├── CURRENT_MISSION.md
├── PROJECT_STATE.md
├── AI_CONTEXT.md
├── AI_HANDOFF.md
├── TOOL_NOTES.md
├── .gitignore
├── .gitattributes
├── prompts/
├── 00_control/
├── 01_context/
├── 02_evidence/
├── 03_queries/
├── 04_notebooks/
├── 05_reports/
├── 06_outputs/
├── 07_decisions/
├── 08_workbench/
├── 09_archive/
└── 10_automation/
```

Do not create `ai_tools/`. It was considered and rejected. AI tool cache/noise belongs in `.gitignore`, not tracked folders.

---

## Approved Root Files

### README.md

Approved purpose: human and AI entry point. Explains the template, operating model, folder map, prompt usage, handoff model, safety and hygiene.

Root README was revised after prompt layer expansion.

It includes or should include:

```text
Project Operating Model Mermaid diagram
Mission Initialization Flow Mermaid diagram
Multi-Chat Handoff Flow Mermaid diagram
First Files to Fill
Moving Work Between Chat Windows or Tools
Reusable Prompt Files
Command Boundaries
Prompt Maintenance
Folder Map
Safety and Hygiene
Controlled File Edit Rule
```

### CURRENT_MISSION.md

Role: Watch Order.

Purpose: what are we doing right now?

Approved sections:

```text
# Current Mission
## Mission Name
## Mission Objective
## Why This Mission Exists
## Scope
## Out of Scope
## Current Phase
[Initialization | Evidence Intake | Investigation | Query Development | Validation | Reporting | Closed]
## Current Confirmed Action
## Mission Owner
## Active Tools
## Mission Inputs
## Expected Outputs
## Active Risks
## Blind Spots
## Assumptions
## Definition of Done
## Update Rules
## Last Updated
```

### PROJECT_STATE.md

Role: Watch Ledger.

Purpose: what do we currently know to be true?

Controlled truth ledger. AI may edit only when explicitly instructed.

Approved sections include:

```text
# Project State
## Current Truth Summary
## Current Status
## Confirmed Facts
## Unconfirmed Claims
## Known Problems
## Known Good Assets
## Known Bad / Deprecated Assets
## Active Blind Spots
## Active Assumptions
## Cross-References
## Edit Authority
## Update Rules
## Last Updated
```

### AI_CONTEXT.md

Role: Signal Brief. Normally created/refreshed by `prompts/mission-init.prompt.md`.

If `AI_CONTEXT.md` conflicts with `PROJECT_STATE.md`, treat `PROJECT_STATE.md` as higher authority.

AI tools may edit only with explicit instruction.

### AI_HANDOFF.md

Role: Relay Packet.

Usage model:

```text
one current active handoff
short handoff history
```

Not permanent truth. Verified truth belongs in `PROJECT_STATE.md`. Evidence belongs in `02_evidence/`. Queries belong in `03_queries/`. Notebook outputs belong in `04_notebooks/` or `06_outputs/`.

Start-of-session procedure:

```text
read CURRENT_MISSION.md
read PROJECT_STATE.md
read AI_CONTEXT.md
read AI_HANDOFF.md
```

End-of-session procedure:

```text
update what was done
what changed
files touched or referenced
blockers
warnings
exact next task
files next session should read
```

### TOOL_NOTES.md

Role: Scout Notes.

Captures tool-specific behavior, limitations, repeated mistakes, environment quirks, Elastic/Kibana version behavior, notebook environment notes, Codex rules, VS Code notes, Quarto, Docker/Python notes.

Not for project truth, active relay, query status, evidence status, or outputs.

AI may edit only when explicitly instructed or when instruction explicitly says to record a tool note/repeated mistake.

### .gitignore

Approved includes secrets/credentials, local config, Python caches/envs, Jupyter checkpoints, Quarto artifacts, Node, OS/editor noise, temp files, raw `*.log` ignored by default, generated/disposable outputs, Docker local overrides, large archives, and AI-tool generated caches/temp/logs.

Approved AI-tool ignore block included:

```text
.codex/
.chatgpt/
.claude/
.amazonq/
.qodo/
.copilot/
.elastic-copilot/

.ai/
.ai_cache/
.ai_tmp/
.ai_logs/

**/.codex/
**/.chatgpt/
**/.claude/
**/.amazonq/
**/.qodo/
**/.copilot/
**/.elastic-copilot/

*.ai.log
*.codex.log
*.chatgpt.log
*.claude.log
*.amazonq.log
*.qodo.log
*.copilot.log
```

### .gitattributes

Approved: normalize text cross-platform; Markdown/qmd/txt LF; Python/sh LF; ps1/bat/cmd CRLF; JSON/NDJSON/YAML/CSV/TSV/XML LF; query files LF; `.ipynb` LF; images binary; svg text; PDF/docx/pptx/xlsx binary; html LF; archives binary; Git LFS candidate patterns commented only.

---

## Approved Prompt Layer

Approved `prompts/` structure:

```text
prompts/
├── README.md
├── mission-init.prompt.md
├── watch-status.prompt.md
├── threat-map.prompt.md
├── context-audit.prompt.md
├── session-capture.prompt.md
├── evidence-intake.prompt.md
├── query-review.prompt.md
├── dashboard-review.prompt.md
├── notebook-review.prompt.md
├── decision-record.prompt.md
├── handoff.prompt.md
├── handon.prompt.md
├── closeout.prompt.md
└── prompt-audit.prompt.md
```

Prompt files are commands, not evidence. They should not contain project-specific findings.

### prompts/README.md

Approved as Command Prompt Index. Includes Prompt Files table, Command Cycle Mermaid, Relay Patterns, Command Boundaries, How to Use a Prompt, Standard Watch Discipline, Controlled File Rule, Prompt Safety Rules, and Prompt Maintenance.

### mission-init.prompt.md

Role: Establish the Watch. Equivalent to `/establish-watch`.

May edit only:

```text
CURRENT_MISSION.md
PROJECT_STATE.md
AI_CONTEXT.md
```

May read supporting files when provided.

Must not edit evidence indexes, query registries, notebook indexes, work logs, decision logs, handoffs, tool notes, or archives.

If those need updates, list under `Proposed Follow-Up File Updates`.

Must separate user-provided facts, evidence-backed facts, assumptions, blind spots, open questions, proposed file updates, and proposed follow-up file updates.

Unknown fields should be `[Unknown]`.

Stop after drafting baseline.

No recommendations/remediation/dashboards/queries/notebooks/scripts/evidence intake/query review/handoff/closeout/implementation.

Pending future revision:

```text
Add Context Discovery Check.
During initialization, inspect supplied context for durable domain, vocabulary, system overview, topology, or external references.
Do not edit 01_context/ directly.
List proposed context updates under Proposed Follow-Up File Updates.
```

### watch-status.prompt.md

Role: Warden Status. Equivalent to `/warden-status`.

Read-only diagnostic. Must not edit files.

Checks mission clarity, project truth, handoff, stale context, questions, evidence/query/notebook/report/output/tool status, blockers, and drift.

Uses drift detection:

```text
DRIFT DETECTED: [Objective | Scope | Role | Context]
```

or None confirmed.

### threat-map.prompt.md

Role: Threat Mapping. Equivalent to `/threat-map`.

Read-only analysis only. No recommendations/fixes/implementation/query/dashboard/evidence intake.

Analyzes drift, contamination risk, deprecated evidence, unvalidated queries, missing signals, dashboard blind spots, notebook reproducibility, tool mistakes, assumptions, hidden dependencies, data lineage, checkpoints, failure modes. Includes OSI layers 1-7 and observability lens.

### context-audit.prompt.md

Role: Drift Sweep. Read-only by default.

Audits file consistency/contamination across Watch Order, Ledger, Signal Brief, Relay, evidence records, query records, notebooks, outputs, tool notes.

Must not edit; lists follow-ups.

### session-capture.prompt.md

Role: Signal Capture. Read-only by default.

Purpose: salvage durable signal from messy/long chats, tool sessions, notebook discussions, old chat recovery.

Must not treat chat output as verified truth unless evidence-backed or user-confirmed.

Must propose file destinations, not edit files.

### evidence-intake.prompt.md

Role: Evidence Intake.

May edit only:

```text
02_evidence/EVIDENCE_INDEX.md
02_evidence/DEPRECATED_EVIDENCE.md
```

Must not edit project state, AI context, query registries, notebook indexes, work logs, decision logs, handoffs, tool notes, archives.

Evidence types:

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

Status:

```text
raw
working
validated
deprecated
conflicting
unknown
```

### query-review.prompt.md

Role: Query Review.

May edit only:

```text
03_queries/QUERY_REGISTRY.md
```

Generic: supports Elastic DSL, ES|QL, KQL, Lucene, Painless, SQL, PromQL, LogQL, API queries, other.

Query status:

```text
draft
tested
validated
broken
deprecated
superseded
unknown
```

Validation rule:

```text
only mark validated if explicit confirmation or supplied evidence
written not executed = draft
executed but correctness not confirmed = tested
```

### dashboard-review.prompt.md

Role: Observatory Review. Read-only by default.

Reviews dashboards/panels/visualizations/monitoring surfaces.

Must not edit files, rewrite queries, redesign dashboards; list follow-up updates.

Panel classification:

```text
useful
unclear
misleading
redundant
missing_dependency
deprecated_dependency
unknown
```

Risk labels:

```text
missing_signal
wrong_query
wrong_field
wrong_time_range
stale_data
deprecated_dependency
ambiguous_visualization
false_confidence
unvalidated_assumption
audience_mismatch
unknown
```

### notebook-review.prompt.md

Role: Field Lab Review.

May edit:

```text
04_notebooks/NOTEBOOK_INDEX.md
06_outputs/OUTPUT_INDEX.md
```

Reviews Jupyter, Quarto, notebook-derived analysis.

Status:

```text
draft
working
validated
stale
deprecated
unknown
```

Output status:

```text
working
validated
deprecated
temp
unknown
```

### decision-record.prompt.md

Role: Command Ruling.

May edit:

```text
00_control/DECISION_LOG.md
07_decisions/ARCHITECTURE_DECISIONS.md
```

Destination rule:

```text
00_control/DECISION_LOG.md = tactical/project decisions
07_decisions/ARCHITECTURE_DECISIONS.md = strategic/long-term architecture/design/platform decisions
unclear = [Needs Human Routing]
```

Status:

```text
proposed
approved
rejected
superseded
active
deferred
unknown
```

### handoff.prompt.md

Role: Relay Out.

May edit:

```text
AI_HANDOFF.md
```

May propose only TOOL_NOTES.md updates and other follow-up file updates.

Must not edit current mission, project state, AI context, evidence indexes, query registries, notebook indexes, work logs, decision logs, tool notes, archives.

Creates/refreshes outgoing relay at end of session. Does not close mission. Does not accept incoming.

### handon.prompt.md

Role: Relay Acceptance. Read-only.

May read `CURRENT_MISSION.md`, `PROJECT_STATE.md`, `AI_CONTEXT.md`, `AI_HANDOFF.md`, `TOOL_NOTES.md`, and support files.

Must not edit any files including `AI_HANDOFF.md`.

Purpose: incoming handoff gate at start of receiving session.

Acceptance statuses:

```text
accepted
accepted_with_warnings
blocked
conflicted
stale
rejected
unknown
```

### closeout.prompt.md

Role: Close the Watch.

Approved with edit authority enabled.

May edit:

```text
PROJECT_STATE.md
AI_HANDOFF.md
00_control/WORK_LOG.md
09_archive/
```

Can close mission/phase and preserve closure state for future reopening.

If mission/phase complete:

```text
mark active handoff complete
or clear active relay
```

If closed but may need future reopening:

```text
preserve closure notes
preserve archive reference
preserve enough relay context to reconstruct future work
```

If follow-up work remains:

```text
closeout first
then run handoff.prompt.md
```

Reopen pattern:

```text
closeout -> archive reference preserved -> future mission-init or handoff -> handon
```

### prompt-audit.prompt.md

Role: Command Inspection.

Approved with conditional edit authority.

Default mode:

```text
read-only audit
```

Edit mode:

```text
allowed only after explicit human approval
allowed only for prompt/documentation files specifically named by the human
```

It audits prompt clarity, redundancy, drift, unsafe assumptions, missing guardrails, project-specific contamination, missing file authority, missing stop rules, inconsistent roles, and documentation references.

---

## Approved 00_control Layer

Role:

```text
00_control/ = Command Log
```

Approved structure:

```text
00_control/
├── README.md
├── WORK_LOG.md
├── OPEN_QUESTIONS.md
├── RISK_REGISTER.md
└── DECISION_LOG.md
```

Confirmed local state: `00_control/` was created, all five files were staged and committed, and `git status --short` produced no file output after commit.

### File Roles

```text
README.md          Command Log instructions
WORK_LOG.md        Chronological work trail
OPEN_QUESTIONS.md  Open, answered, retired, or blocking questions
RISK_REGISTER.md   Known risks, impacts, owners, and status
DECISION_LOG.md    Tactical/project decisions
```

### Boundaries

```text
00_control/DECISION_LOG.md = tactical/project decisions
07_decisions/ARCHITECTURE_DECISIONS.md = strategic architecture/design/platform decisions
```

### Status Values

Work status:

```text
planned
in_progress
completed
blocked
superseded
unknown
```

Question status:

```text
open
answered
blocked
retired
unknown
```

Risk status:

```text
active
mitigated
accepted
closed
superseded
unknown
```

Decision status:

```text
proposed
approved
rejected
superseded
active
deferred
unknown
```

---

## Current 01_context Layer

Role:

```text
01_context/ = Mission Context
```

Approved purpose:

```text
Store durable background context that supports the project but is not raw evidence, not current mission control, and not final output.
```

Approved structure:

```text
01_context/
├── README.md
├── CONTEXT_INDEX.md
├── DOMAIN_NOTES.md
├── VOCABULARY.md
├── SYSTEM_OVERVIEW.md
└── TOPOLOGY.md
```

Approved roles:

```text
README.md           Context folder instructions
CONTEXT_INDEX.md    Catalog of context files and status
DOMAIN_NOTES.md     Business/domain background and operating assumptions
VOCABULARY.md       Terms, acronyms, field meanings, naming conventions
SYSTEM_OVERVIEW.md  High-level system/service/process description
TOPOLOGY.md         Architecture, dependency, or flow diagrams in text/Mermaid
```

Boundary:

```text
CURRENT_MISSION.md = what we are doing now
PROJECT_STATE.md   = current verified truth
01_context/        = durable supporting background
02_evidence/       = raw or registered proof
```

### 01_context/README.md

Approved and created locally.

Purpose: Mission Context instructions.

It explains that `01_context/` is for stable background context and not current mission order, verified truth ledger, raw evidence, or final output.

Needs pending future edit: add Context Update Trigger.

### 01_context/CONTEXT_INDEX.md

Approved and created locally.

Purpose: Context Catalog.

Tracks context files and status.

Status values:

```text
draft
active
stale
deprecated
superseded
unknown
```

Type values:

```text
domain
vocabulary
system_overview
topology
process
data_flow
dependency
assumption
external_reference
other
unknown
```

Has starter entries for:

```text
01_context/DOMAIN_NOTES.md
01_context/VOCABULARY.md
01_context/SYSTEM_OVERVIEW.md
01_context/TOPOLOGY.md
```

### 01_context/DOMAIN_NOTES.md

Draft content was proposed but not yet approved/created at the time of this handoff discussion.

Clarified purpose:

```text
DOMAIN_NOTES.md = durable background about what the system is for, how the business/process works, and what real-world rules affect interpretation.
```

Allegory:

```text
DOMAIN_NOTES.md = terrain map
PROJECT_STATE.md = current intelligence report
02_evidence/ = captured signals and proof
TOOL_NOTES.md = scout behavior and tool quirks
SYSTEM_OVERVIEW.md = watchtower layout
```

Examples:

Warehouse/WMS domain:

```text
An exchange is a customer return/replacement flow.
A cancelled exchange should not be counted as completed.
Shipping confirmation may lag warehouse picking.
```

Sonar/software-quality domain:

```text
A quality gate is the pass/fail rule used before release.
Code coverage may be measured against new code, overall code, or both depending on policy.
Security hotspots require review but are not always confirmed vulnerabilities.
```

Incident response domain:

```text
P1 means customer-facing outage.
P2 means degraded service with workaround.
MTTA means mean time to acknowledge.
MTTR means mean time to restore.
```

Not for:

```text
raw logs
screenshots
query results
stack traces
Codex bugs
temporary theories
final report conclusions
secrets
```

The user correctly observed that this context should often be gathered during initialization.

Approved operating model:

```text
mission-init detects context needs
01_context files store durable context
human-approved follow-up applies edits
```

Pending future edit to `mission-init.prompt.md`: add Context Discovery Check.

Pending future edit to `01_context/README.md`: add Context Update Trigger.

Pending future addition to `DOMAIN_NOTES.md` update rules:

```text
If durable domain context is discovered during analysis, handoff, evidence review, query review, dashboard review, or notebook review, propose a DOMAIN_NOTES.md update instead of silently editing this file.
```

---

## Pending Context Trigger Rule

The following was proposed and liked by the user, but not yet applied unless the human later says otherwise.

### Context Update Trigger for 01_context/README.md

```md
## Context Update Trigger

During project work, humans and AI tools should check whether new durable background context has been discovered.

A context update may be needed when work reveals:

```text
new domain knowledge
new business rules
new vocabulary or acronyms
new system behavior
new service dependencies
new topology or data-flow details
new external documentation references
stable tool or platform constraints
```

AI tools should not silently edit context files.

When an AI tool detects possible durable context, it should propose:

```text
Context Update Check:
- Proposed target file:
- Proposed summary:
- Source / reference:
- Reason this is durable context:
```

The human must approve before the context file is updated.
```

### Context Discovery Check for mission-init.prompt.md

```md
## Context Discovery Check

During initialization, inspect the supplied project description, files, evidence summaries, and user-declared facts for durable context.

If durable domain, vocabulary, system overview, topology, or external reference information is found, do not edit `01_context/` directly.

List proposed updates under:

```text
Proposed Follow-Up File Updates
```

Target files may include:

```text
01_context/DOMAIN_NOTES.md
01_context/VOCABULARY.md
01_context/SYSTEM_OVERVIEW.md
01_context/TOPOLOGY.md
01_context/CONTEXT_INDEX.md
```
```

---

## External Documentation Placement Rule

The user asked whether Sonar documentation or project-specific documentation belongs in context.

Clarified placement rule:

```text
External documentation reference      -> 01_context/CONTEXT_INDEX.md
Project-specific summary of Sonar use -> 01_context/SYSTEM_OVERVIEW.md
Domain/business meaning               -> 01_context/DOMAIN_NOTES.md
Tool-specific behavior or gotchas     -> TOOL_NOTES.md
Raw exported docs or PDFs             -> 02_evidence/ or future 01_context/references/
```

Examples:

```text
"SonarQube is used in this project."
Better in SYSTEM_OVERVIEW.md.

"A failed Sonar quality gate blocks release."
Could be in DOMAIN_NOTES.md because it is a process rule.

"Sonar scanner command failed today with exit code 1."
Not domain notes. Evidence, work log, or tool note depending on context.

"Official Sonar quality gate documentation."
Reference in CONTEXT_INDEX.md or future references folder.
```

Potential future folder not yet approved:

```text
01_context/references/
```

Do not create it unless approved.

---

## Local Collaboration Model

Preferred division of labor:

```text
ChatGPT Windows app = Warden / architecture / checkpoint review / prompt design
VS Code = human inspection / Git diff / file tree control
Codex or VS Code assistant = local file editor / multi-file patch executor
Git = source-of-truth checkpoint ledger
```

For short single Markdown files:

```text
human may manually copy approved content into VS Code
save the file
run git status
say "approve" to mean approved + created + saved
```

For multi-file edits, audits, or risky operations:

```text
use Codex / VS Code assistant
explicitly restrict file authority
report exact files changed
stop
```

---

## Do-Not-Do List for Receiving Agent

Do not:

```text
edit files without explicit permission
create unapproved folders
create ai_tools/
move prompt files
rename root files
change approved authority rules
stage or commit without instruction
include WMS-specific facts in reusable template placeholders
treat this handoff as source-of-truth over project files
treat old chat memory as evidence
mark unvalidated queries as validated
store secrets or credentials
paste large raw logs into Markdown control files
silently convert threat-map findings into registered risks
silently update context files without approval
run broad formatters across the repo
```

---

## Current Exact Next Task

The next design checkpoint before the handoff discussion was:

```text
01_context/DOMAIN_NOTES.md
```

However, because the user asked for a downloadable handoff, the next local receiving agent should first perform relay acceptance.

First safe task for the receiving local agent:

```text
Read AI_HANDOFF_TO_LOCAL_AGENT.md.
Read README.md.
Read PROJECT_STATE.md.
Read AI_CONTEXT.md.
Read prompts/README.md.
Read 00_control/README.md.
Read 01_context/README.md.
Read 01_context/CONTEXT_INDEX.md.
Run git status --short.
Do not edit anything.
Report current state, current checkpoint, and files allowed/forbidden for the next action.
Stop.
```

Only after human confirmation should the local agent continue with `01_context/DOMAIN_NOTES.md`.

---

## Files Allowed To Edit Right Now

By default, after reading this handoff:

```text
None
```

The receiving agent must report first and stop.

If the human then authorizes continuation of the next checkpoint, the only likely next file is:

```text
01_context/DOMAIN_NOTES.md
```

But do not edit it until authorized.

---

## Files Forbidden To Edit Right Now

Until explicit authorization:

```text
all files
```

Especially do not edit:

```text
README.md
CURRENT_MISSION.md
PROJECT_STATE.md
AI_CONTEXT.md
AI_HANDOFF.md
TOOL_NOTES.md
prompts/
00_control/
.gitignore
.gitattributes
02_evidence/
03_queries/
04_notebooks/
05_reports/
06_outputs/
07_decisions/
08_workbench/
09_archive/
10_automation/
```

---

## Drift Risks

Current drift risks:

```text
long original ChatGPT design thread
large number of approved prompt rules
user's workflow correction about "approve" meaning created/saved
pending context-trigger edits not yet applied
DOMAIN_NOTES.md content not yet finalized
temptation to let local agent edit too much
possible confusion between context, evidence, project state, and tool notes
```

Receiving agent must be conservative.

---

## Known Blind Spots

```text
The exact current local git state must be checked by the receiving agent.
The exact contents of manually created 01_context files have not been independently inspected by this handoff.
Inner folder placeholders after 01_context remain mostly pending.
No real domain/project-specific data has been populated yet.
10_automation/agents portable Warden pack was discussed but not approved or created.
01_context/references/ was discussed as possible future location but not approved.
```

---

## Checkpoint Enforcement

Hard rule:

```text
Stop after each step.
Require explicit confirmation.
Do not automatically continue.
```

The receiving agent should not bundle multiple file drafts unless explicitly asked.

---

## Required Relay Acceptance Response

When the local agent reads this file, respond with:

```text
MODE: Diagnostic

Relay Acceptance Report

Project Objective:
[summary]

Why This Project Exists:
[summary]

Current Local Path:
[path]

Current Approved State:
[summary]

Current Checkpoint:
[checkpoint]

Git Status:
[output summary]

Files Allowed To Edit Right Now:
[list]

Files Forbidden To Edit Right Now:
[list]

Detected Risks:
[list]

Questions / Blockers:
[list]

Exact Next Safe Action:
[action]

Threat Level:
[Undetermined | Low | Guarded | Elevated | High | Critical]

Blind Spots:
[list]

Assumptions:
[list]

Confidence:
[Low | Medium | High]

Band-Aid vs Root Cause Classification:
[ROOT CAUSE RESOLUTION or TEMPORARY MITIGATION]
[reason]

Checkpoint:
Awaiting human confirmation before editing.
```

Then stop.
