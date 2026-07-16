---
name: upgrade-to-v3
description: Migration guide from AI-SHIPR v2.x to v3.0. Read this if you have an existing AI-SHIPR install from before 2026-06-25.
user-invocable: false
---

# Upgrading from AI-SHIPR v2.x to v3.0

If you already have AI-SHIPR v2.x installed and working, here is what changes in v3.0 and what you need to do.

If this is your first install: ignore this file and follow `Half-Sprint-Guide.md` instead.

---

## What Changed

### 1. Slash commands are now curated to 6 (was ~20)

The old design exposed every workflow and many agents as slash commands. The new design treats slash commands like the AI-SHIPR system itself: reserved for daily rhythms, recurring reviews, and the system guide.

**The 6 slash commands in v3.0:**

| Command | What It Does |
|---|---|
| `/today` | Daily briefing |
| `/weekly` | Friday loop close |
| `/handoff` | EOD or ownership-transfer document |
| `/review-initiative` | Weekly initiative review |
| `/review-experiment` | Weekly experiment review |
| `/shipr-guide` | Get help with the AI-SHIPR system |

**Removed slash commands** (still work, just invoked differently — see below):
`/sprint`, `/plan`, `/launch`, `/iterate`, `/frame`, `/audit`, `/prep`, `/decide`, `/hypothesis`, `/coach`, `/canvas`, `/strategize`, `/gap`, `/after-meeting`, `/voice`, `/summarize-sprint`, `/learn`, `/discovery`, `/figma`.

### 2. Nothing was deleted. Every capability still works.

The agents and skills behind the removed slash commands are all still installed. They are now invoked two ways:

1. **By name in conversation.** Example: "Run Problem-Framer on this." Or: "Have PM-Coach help me with my 1:1 prep."
2. **Auto-invoked by Claude.** Each capability has a `description` in its frontmatter that Claude reads at session start. When the situation matches, Claude picks the right one without you asking.

This matches how the rest of your ABC-TOM system already works (copywriter, gatekeeper, researcher are invoked by name in conversation, not as slash commands).

### 3. `setup.sh` now installs everything

The old `setup.sh` only scanned `A-AI/AI-Skills/`. The new one scans `AI-Skills/`, `AI-Agents/`, AND `AI-Workflows/`, and installs every file with `name:` frontmatter as a Claude Code skill. About 73 capabilities total: 6 visible slash commands, 67 hidden (model-invoke only).

The `user-invocable: false` flag in a SKILL.md frontmatter is what hides a capability from `/` autocomplete while keeping it available to Claude. This is a standard Claude Code feature ([docs](https://code.claude.com/docs/en/skills.md#control-who-invokes-a-skill)).

### 4. Frontmatter added to ~60 files

Every agent, skill, and workflow file now has YAML frontmatter (`name:`, `description:`, optionally `user-invocable: false`). The frontmatter is what `setup.sh` reads to install each file into `.claude/skills/<name>/SKILL.md`.

### 5. CLAUDE.md and Half-Sprint-Guide.md updated

- `CLAUDE.md` Quick Commands table trimmed from 20 to 6 entries.
- `CLAUDE.md` Workflows table now shows "How to invoke" (slash command vs by name).
- `CLAUDE.md` Section 0 (Context Layer) now has an explicit branch for `team_mode: solo`. Previous versions only documented `individual` and `lead`, leaving solo to fall through an unstated default. The new branch reads: "No org layer to read. Proceed directly to Section 1." Functional behavior is unchanged — this is a clarity fix so solo users can see their path explicitly.
- `Half-Sprint-Guide.md` setup section updated to reflect the new install behavior.

### 7. Cross-session memory persistence

A common failure mode in earlier versions: the PM tells Claude "remember this" or "from now on do X" during a busy session, but the instruction never lands in `Learning.md` and is gone the next session. The fix is structural — capture moves from one opt-in checkpoint to three reinforcing triggers.

**New `.claude/settings.json` with two hooks:**

- `SessionStart` → runs `.claude/hooks/learning-staleness.sh`. If `Learning.md` has not been updated in more than 7 days, injects context so Claude flags the staleness and asks about backfilling recent sessions before the first substantive response.
- `UserPromptSubmit` → runs `.claude/hooks/memory-cue.sh`. Detects persistent-instruction phrases (`remember`, `from now on`, `next time`, `don't forget`, `stop doing`, `going forward`, `always do`, `never do`, plus Hebrew equivalents) and injects context so Claude proposes a Learning Candidate before continuing the main task.

Both hooks are pure shell + Python 3, no extra dependencies. Hooks live in `.claude/hooks/` and `setup.sh` now makes them executable on install (unzip strips the executable bit on macOS/Linux).

**New `/close-session` slash command:**

End-of-session sweep. Scans the full conversation for things missed mid-session (corrections, decisions, surprises, validated approaches), clusters them into 1–5 candidates, and proposes them as a single batch. Run manually at the end of a substantive session, or accept when Claude auto-suggests it as the conversation winds down.

**CLAUDE.md Learning Capture section rewritten** to document the three triggers (agent/skill runs, memory-cue hook, `/close-session`) and the session-staleness check. The Quick Commands table now lists `/close-session`.

**Why this combination over a single Stop hook:** the Claude Code `Stop` hook fires at the end of every Claude response, not at session close. Forcing a sweep on every turn would create noise; gating it with a session-marker file is fragile. SessionStart + UserPromptSubmit + an explicit `/close-session` skill achieves the same goal with cleaner hook semantics.

**Upgrade impact:** existing installs need to copy `.claude/settings.json`, `.claude/hooks/`, and the updated `setup.sh` from the v3.0+ zip, then re-run `bash setup.sh`. See the upgrade options below — the new files are now part of Option B's file list.

### 8. Decision-Log + mandatory Session-Close Protocol + drift check + /today continuity

The hooks and `/close-session` slash command in section 7 caught immediate cues and gave an opt-in sweep, but two structural gaps remained: decisions had nowhere clean to land (Learning.md was for patterns, not decisions), and the close sweep was still opt-in. Section 8 closes both.

**New file: `Decision-Log.md` at the AI-SHIPR root.**

Append-only record of decisions made in conversation that affect strategy, scope, sequencing, prioritization, or process. Lower bar than `Learning.md` — every meaningful decision lands here, not just the surprising ones. Format documented in the file's header.

**Mandatory Session-Close Protocol (CLAUDE.md rule).**

The `/close-session` slash command has been removed. In its place: a CLAUDE.md rule that fires the same protocol *automatically* on:

1. End signals — "we're done", "that's it", "wrap up", "thanks, that's all", or Hebrew equivalents.
2. The user invoking `/today`, `/weekly`, or `/handoff` — protocol fires *before* the slash command runs, so prior-session captures land first.
3. Sessions with 3+ substantive exchanges that go idle on a closing thought.

The protocol presents **one combined diff** grouped by destination file (Decision-Log.md, Learning.md, strategy files), and **defaults to write-all**. The user opts out per item ("no 3", "edit 5") or accepts the whole batch by pressing enter. Per-item yes/no is exactly the friction that loses captures — the new default is to write.

The protocol definition lives in `A-AI/AI-Skills/close-session-protocol.md` with `user-invocable: false` — it is rule-fired, not typed.

**Why no slash command:** a slash command has the same weakness as the original Learning Capture flow — it's opt-in. The user has to remember to type it. The whole point of section 8 is that capture must not depend on the user remembering. The CLAUDE.md rule + hooks make capture automatic.

**Strategy file drift check (CLAUDE.md rule).**

New behavior rule: when a conversation decision contradicts a strategy file (`Vision.md`, `Strategic-Bets.md`, `KPIs.md`, a persona, or any `shared/` file), name the file, name the conflict, and offer the edit before continuing. Closes the silent-drift failure mode where strategy files go stale because nobody notices the conflict.

**/today continuity surfacing.**

`/today` now reads `Decision-Log.md` and `Learning.md` (last 7 days) and surfaces a "Since Last Session" block at the top of the briefing:

> Since your last session you decided: [X]. You learned: [Y]. You deferred: [Z].
> Still relevant for today? (yes / revise / drop)

The PM becomes the verifier — they catch anything the Session-Close Protocol mis-routed or skipped. If nothing was captured since the last `/today`, the block names that gap explicitly and suggests backfill.

**Net file changes for section 8:**
- New: `Decision-Log.md` (root, append-only template + entries section)
- Renamed: `A-AI/AI-Skills/close-session.md` → `close-session-protocol.md`, demoted to `user-invocable: false`
- Edited: `CLAUDE.md` — `/close-session` removed from Quick Commands; new "Session-Close Protocol (Mandatory)" section; new behavior rules for Decision-Log filing and strategy drift; Learning Capture section updated to route decisions to Decision-Log.md
- Edited: `A-AI/AI-Skills/today.md` — reads Decision-Log.md; new "Since Last Session" output section

**Upgrade impact:** existing installs need to copy the new/renamed skill file, the updated `CLAUDE.md`, the new `Decision-Log.md` (do not overwrite if the user already has one — append to the file list in Option B), and the updated `today.md`. Re-run `bash setup.sh` to refresh the `.claude/skills/` registry — this also removes the old `close-session` skill since it no longer has a source file under that name. **Manual cleanup:** if `/close-session` still shows in `/` autocomplete after re-running setup, delete `.claude/skills/close-session/` directly.

### 9. Three field-reported bugs — Day 2 skip, hallucinated ordinal fields, fabricated competitors

Three user-reported issues from active AI-SHIPR sessions, each addressed structurally rather than as one-off prompt fixes.

**Bug A — Claude skipped Stakeholders.md and PM-Voice on Day 2.**

Root cause: Day 1's `01-Populate-Strategy` already writes first-pass content to PM-Profile.md, Personas.md, and Stakeholders.md. Day 2's Half-Sprint-Guide text said "Fill Stakeholders.md" — when Claude opened the file and saw it was already populated, it skipped it. The guide and the workflow were giving Claude contradictory signals.

Fix in `Half-Sprint-Guide.md`:
- Day 2 is now explicitly framed as "review and refine the Day 1 outputs", not "fill". The fields the Setup Worksheet cannot collect are flagged as `[To assess]` in the template, and Day 2 is where the PM fills them using the rubric.
- A dedicated "Important for Claude" note tells the model: **do not assume any file is done because it has content**. Walk through every file, every field. Skipping a file because Day 1 touched it is the documented failure mode.
- `Create-PM-Voice` is now an explicit Day 2 action (optional but recommended) — previously it lived nowhere in the Half-Sprint cadence, even though `Settings.md` exposes `pm_voice: active` as a config knob.

**Bug B — Claude invented "Trust level with product" with no rubric.**

Root cause: the Stakeholders.md template had 5 fields and no defined ordinal scales. When Claude needed a relationship indicator, it invented "Trust level with product" on the fly and assigned High/Medium/Low values backed only by intuition. When the PM asked "what does Medium mean?", Claude couldn't answer — there was no rubric to point to, because Claude had invented the field.

Fix in `R-Relationships/Stakeholders/Stakeholders.md`:
- New `## Rubrics` section at the top of the template defines three ordinal scales with operational anchors: **Trust level with product team** (High / Medium / Low, anchored in observed behavior over the last 1–2 quarters), **Decision role** (Sponsor / Approver / Influencer / Informed), **Current sentiment** (Champion / Supportive / Neutral / Skeptical / Blocker). Each level has a behavioral description, not a vibe.
- Template entry shape now includes those three rubric-gated fields alongside the original five (Optimizes for, Biggest fear, Common objections, Communication style, What they need to see to say "yes").
- `01-Populate-Strategy` updated: it does not infer the rubric-gated fields from the Setup Worksheet (the worksheet does not collect them); it writes `[To assess]` placeholders for the PM to fill on Day 2.
- `Stakeholder-Translator` updated: must read the Rubrics section first, use the defined scales exactly as written, never invent new ordinal levels, and flag `[To assess]` placeholders instead of guessing.

Fix in `CLAUDE.md` (two new behavior rules, system-wide):
- **No invented template fields** — if you need a field that does not exist in the template, propose extending it; don't silently add a schema the rest of the system can't consume.
- **No ungrounded ordinal levels** — every High/Medium/Low (or similar) must trace to a rubric in the destination file. If no rubric exists, reference one in another file, propose adding it, or replace the ordinal with a concrete observation.

**Bug C — Competitor-Watch-List contained irrelevant Rula competitors.**

Root cause: when the user ran `Competitive-Landscape-Mapper` without supplying known competitors, Claude filled the landscape table with companies pulled from training data — including Rula's competitors, which were unrelated to the user's product. The skill's behavior rules said what to do *with* competitors but not what to do when none were provided.

Fix in `A-AI/AI-Skills/Competitive-Landscape-Mapper.md`:
- New behavior rule: **No fabricated competitors.** Do not name companies that are not provided by the user, present in `S-Strategy/Product.md`, or grounded in a verifiable source. Generic categories ("a CRM", "an in-house spreadsheet") are fine when specifics are unknown. If competitors are missing and cannot be inferred from strategy files, **ask before generating** — do not fill from training data.
- The Rula-style failure mode (writing "[Company X]'s primary competitors" when [Company X] is unrelated to the user's product) is named explicitly in the rule so future audits can grep for it.

New template added: `I-Information/Templates/template-competitor-watch-list.md`. Previously, when a PM ran `Competitive-Landscape-Mapper`, the output landed in the user's `I-Information/Resources/` folder with whatever shape Claude invented — and stale outputs (like the Rula example that triggered this fix) accumulated there. The new template gives the watch list a defined shape in the same `I-Information/Templates/` location as the other reusable structures, and the template header makes explicit that no competitor is added unless grounded in a user-verified source — reinforcing the skill's behavior rule at the artifact level.

Fix in `CLAUDE.md` — third new behavior rule, system-wide:
- **No fabricated proper nouns** — applies beyond competitors. No companies, products, people, or tools named from training-data associations when they're not in user-provided context or a file you've read. When context is missing, ask.

**Net file changes for section 9:**
- Edited: `R-Relationships/Stakeholders/Stakeholders.md` — added Rubrics section + three rubric-gated fields
- Edited: `Half-Sprint-Guide.md` — Day 2 rewritten as refine-not-fill; Create-PM-Voice added; "Important for Claude" note against skip-on-populated
- Edited: `A-AI/AI-Workflows/01-Populate-Strategy.md` — File 8 (Stakeholders.md) shape updated; rubric-gated fields written as `[To assess]` rather than inferred
- Edited: `A-AI/AI-Agents/Stakeholder-Translator.md` — must read Rubrics, use defined scales, flag `[To assess]`, no schema extensions
- Edited: `A-AI/AI-Skills/Competitive-Landscape-Mapper.md` — no fabricated competitors rule
- New: `I-Information/Templates/template-competitor-watch-list.md` — defined shape for the artifact, with the no-fabrication rule restated in the template header
- Edited: `CLAUDE.md` — three new system-wide behavior rules (invented fields, ungrounded ordinals, fabricated proper nouns)

**Upgrade impact:** existing installs need the edited templates, agent/skill files, workflow file, CLAUDE.md, and Half-Sprint-Guide.md from this section. If a user already has Stakeholders.md filled with the old 5-field shape, the new rubric-gated fields can be appended without losing existing content — the Rubrics section at the top is purely additive.

### 6. Your personal data is untouched

All migration is in `A-AI/`, `setup.sh`, `CLAUDE.md`, and `Half-Sprint-Guide.md`. Your `Learning.md`, `Settings.md`, `S-Strategy/`, `H-Hypotheses/`, `I-Initiatives/`, `R-Relationships/` files are NOT modified by this upgrade.

---

## How to Upgrade

### Option A: Clean install (recommended)

1. **Back up your personal files.** Copy these to a safe location outside the AI-SHIPR folder:
   ```
   Learning.md
   Settings.md
   S-Strategy/   (all .md files)
   H-Hypotheses/   (all .md files)
   I-Initiatives/   (all .md files)
   P-Proof/   (all .md files)
   R-Relationships/   (all .md files)
   shared/   (if you use lead mode)
   ```

2. **Delete your old AI-SHIPR folder.**

3. **Unzip the v3.0 zip** into the same location.

4. **Copy your personal files back** into the new folder structure. Most filenames are unchanged.

5. **Delete the old `.claude/skills/` folder** if it exists in the new AI-SHIPR folder (it should not, but just in case).

6. **Run setup:**
   ```bash
   cd AI-SHIPR
   bash setup.sh
   ```

7. **Restart Claude Code.** Type `/` to confirm only the 6 v3.0 commands appear.

### Option B: In-place upgrade

If you do not want to copy files around:

1. **Delete `.claude/skills/`** inside your existing AI-SHIPR folder. This removes all stale slash commands from previous installs.

2. **Replace these files** from the v3.0 zip into your existing folder:
   - `setup.sh`
   - `CLAUDE.md`
   - `Half-Sprint-Guide.md`
   - `UPGRADE-to-v3.md` (this file)
   - `.claude/settings.json` (new — registers the memory-persistence hooks)
   - `.claude/hooks/` (new — `learning-staleness.sh`, `memory-cue.sh`)
   - `Decision-Log.md` (new — **do not overwrite** if you already have one; append the new template header at the top of yours)
   - Everything inside `A-AI/AI-Skills/`
   - Everything inside `A-AI/AI-Agents/`
   - Everything inside `A-AI/AI-Workflows/`

3. **Run setup:**
   ```bash
   bash setup.sh
   ```

4. **Restart Claude Code.** Type `/` to confirm only the 6 v3.0 commands appear.

---

## Telling Your Claude to Do the Upgrade

If you would rather have Claude do the migration for you, open a chat in your AI-SHIPR folder and paste this:

> I just received AI-SHIPR v3.0. Please read `UPGRADE-to-v3.md` in this folder and walk me through the upgrade step by step. Confirm with me before doing anything that touches files I cannot easily restore.

Claude will read this file, ask you which option you prefer (A or B), and execute the steps.

---

## Verification After Upgrade

After running `bash setup.sh` and restarting Claude Code:

- [ ] Type `/` in Claude Code. You should see exactly 6 AI-SHIPR commands: `/today`, `/weekly`, `/handoff`, `/review-initiative`, `/review-experiment`, `/shipr-guide`. `/close-session` should **not** appear — the close protocol is now rule-fired, not user-typed.
- [ ] Try `/today` to confirm the daily briefing still works, and that the new "Since Last Session" block appears at the top.
- [ ] Try invoking an agent by name: "Run Problem-Framer on this: <your problem>."
- [ ] Try `/shipr-guide` and ask a system question.
- [ ] Confirm the memory-cue hook is wired up: type a memory cue like "remember that I prefer X" — Claude should propose capturing it before continuing. If it doesn't, check that `.claude/hooks/*.sh` are executable (`ls -l .claude/hooks/`) and that `.claude/settings.json` exists.
- [ ] Confirm the Session-Close Protocol fires on end signals: after a substantive session, say "we're done" — Claude should produce a combined-diff sweep grouped by destination file (Decision-Log.md, Learning.md, strategy files).
- [ ] Confirm `Decision-Log.md` exists at the AI-SHIPR root with the template header.

If `/` shows the old commands (`/sprint`, `/plan`, etc.), delete `.claude/skills/` and run `bash setup.sh` again, then fully quit and reopen Claude Code.

---

## Questions? Issues?

If something is missing or behaves unexpectedly after the upgrade, the most common cause is a stale `.claude/skills/` folder. Delete it and re-run `bash setup.sh`. The script is safe to re-run any number of times.

For anything else, ask `/shipr-guide`.

---

> AI-SHIPR v3.0 — released 2026-06-25
> Built by Yaniv Yaakubovich
> www.verve-pm.com
