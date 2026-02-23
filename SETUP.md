# MASTER SETUP — Our OpenClaw Configuration

*The complete living documentation of our system. Updated as we evolve.*

**Last Updated:** 2026-02-23  
**OpenClaw Version:** 2026.2.21-2  
**Primary Model:** moonshot/kimi-k2.5  
**Status:** ✅ Optimized & Active

---

## Quick Stats

| Metric | Value |
|--------|-------|
| Context Usage | 69k/256k (27%) |
| Compactions | 0 (memory flush active) |
| Session Cost | ~$0.0000 (Kimi is cheap) |
| Files in Workspace | 25+ |
| Cron Jobs | 3 (disabled by default) |
| Skills Ready | 13/50 |

---

## The File Architecture

### Core Identity Files (Auto-Loaded)
These load automatically on every session (~2,000 tokens):

| File | Purpose | Size | Notes |
|------|---------|------|-------|
| `SOUL.md` | Who I am, how I think | ~3,100 tokens | Personality, boundaries, preferences |
| `USER.md` | Who you are | ~1,600 tokens | Your background, goals, humor style |
| `AGENTS.md` | Boot sequence + rules | ~2,800 tokens | **START HERE** every session |
| `TOOLS.md` | Local tool notes | ~200 tokens | Environment-specific details |
| `IDENTITY.md` | Basic metadata | ~200 tokens | Name, emoji, avatar |
| `HEARTBEAT.md` | Periodic checks | ~400 tokens | What to monitor |

**⚠️ CRITICAL:** Only these 6 files auto-load. Everything else must be explicitly read.

### Memory System (The RAM → Disk Pipeline)

| File | Purpose | Update Frequency | Who Writes |
|------|---------|------------------|------------|
| `memory/YYYY-MM-DD.md` | Daily raw logs | Every session | Me (append-only) |
| `MEMORY.md` | Curated long-term | During heartbeat reviews | Me (curation only) |
| `tasks/lessons.md` | Mistake → prevention | After every error | Me |
| `INSIGHTS.md` | Patterns about you | As observed | Me |

**Rule:** Daily logs = raw. MEMORY.md = curated. Never write directly to MEMORY.md during tasks.

### Task & Project Management

| File | Purpose | Status |
|------|---------|--------|
| `todo.md` | Live task list | Current sprint |
| `progress-log.md` | Build/test/log/decide cycles | Active projects |
| `NUQI_LOG.md` | Complete project docs | Paused, ready to resume |
| `BOOKMARKS.md` | "Implement later" items | 10+ items tracked |

### Reference & Documentation

| File | Purpose |
|------|---------|
| `MISTAKES.md` | Error log with root cause analysis |
| `WORKFLOW.md` | How we work, conventions, cron details |
| `DECISION_LOG.md` | Major project decisions |

---

## Active Systems

### 1. Memory Protection (Ramya Optimizations)
```json
{
  "compaction": {
    "mode": "safeguard",
    "memoryFlush": {
      "enabled": true,
      "softThresholdTokens": 4000
    }
  },
  "contextPruning": {
    "mode": "cache-ttl",
    "ttl": "6h",
    "keepLastAssistants": 3
  }
}
```

**What this does:**
- Writes important context to disk before compaction at 4000 tokens
- Prunes old context after 6 hours (prevents overflow)
- Keeps last 3 assistant responses
- **Result:** No more "I forgot what we were talking about"

### 2. Cron Jobs (3 Active, Currently Disabled)

| Job | Schedule | Purpose | Status |
|-----|----------|---------|--------|
| `nuqi-nudge` | Every 2 days | Remind about NUQI progress | ❌ Disabled |
| `git-commit-reminder` | Daily 22:00 GMT | Check uncommitted work | ❌ Disabled |
| `weekly-memory-review` | Sundays 10:00 GMT | Review & compress MEMORY.md | ❌ Disabled |

**To enable:** Say "Enable [job name]"  
**To disable:** Say "Disable [job name]"

### 3. Security Posture

| Check | Status | Notes |
|-------|--------|-------|
| Gateway binding | ✅ Loopback only | Not exposed to internet |
| WhatsApp allowlist | ✅ 6 numbers | Includes Ibtissam (+22236240484) |
| Credentials dir | ✅ 700 perms | Secured |
| Email access | ❌ None | Intentionally not granted |
| X/Twitter access | ❌ None | Policy risk, not needed |

**Warnings:**
- Trusted proxies not configured (low risk on loopback)
- Some denyCommands use approximate names (acceptable for local use)

### 4. Model Configuration

**Primary:** moonshot/kimi-k2.5
- Cost: ~$0.001/1K tokens
- Context: 256k
- Tool calls: Reliable
- **Best for:** Our current usage level

**Bookmarked for later:**
- Sonnet 4.6: Opus-level at 1/5 cost ($3/$15 per 1M) — if Kimi insufficient
- MiniMax M2.5: Budget king ($0.30/$1.20 per 1M) — if need to cut costs 50%+

---

## Communication Channels

| Channel | Priority | Use For |
|---------|----------|---------|
| WhatsApp | Primary | Quick messages, status updates |
| Web Chat | Always on | Deep work, long sessions |
| Discord | Bookmarked | Complex multi-channel workflows (future) |

**Group Chat Rules:**
- Respond when: mentioned, can add value, correcting misinfo
- Stay silent when: casual banter, already answered, "yeah" responses
- Use reactions: 👍 ❤️ 😂 🤔 💡 ✅ 👀

---

## Bookmarked for Later (From Article Dissections)

### When Scaling
- [ ] Model tiering (Sonnet 4.6, Opus, multi-model)
- [ ] Parallel multi-model processing
- [ ] Discord for complex workflows
- [ ] Mission Control UI (NextJS)

### When Security Changes
- [ ] Trusted proxy configuration (if exposing gateway)
- [ ] Exact command name matching
- [ ] X/Twitter automation (if policy changes)

### When Projects Advance
- [ ] Sonnet 4.6 as daily driver
- [ ] MiniMax M2.5 for budget
- [ ] Grok for X search
- [ ] Budget dashboard

### When More Hardware
- [ ] Mac Mini/Mac Studio upgrade
- [ ] Multiple machine setup

---

## Write Discipline (Active Process)

### After Every Task:
1. ✅ Log decision + outcome → `memory/YYYY-MM-DD.md`
2. ✅ If mistake → append to `tasks/lessons.md`
3. ✅ If significant insight → note for MEMORY.md review

### Never:
- ❌ Write directly to MEMORY.md during tasks
- ❌ Leave context only in conversation (gets compacted)
- ❌ Skip logging lessons from mistakes

---

## Handover Protocol

**Before session end or model switch:**
```markdown
### HANDOVER — YYYY-MM-DD HH:MM

**Discussed:**
[Summary]

**Decided:**
[Decisions made]

**Pending:**
- [ ] Task 1 (details)
- [ ] Task 2 (details)

**Next Steps:**
[Exact next actions]
```

**Why:** New model starts fresh. Without handover, all context is lost.

---

## Active Learning System

I actively observe and log insights about you:

**What I track:**
- Learning patterns (intuition-first vs. theory-first)
- Decision style (optimize for speed vs. perfection)
- Core values (generosity, layered identity building)
- Context switching ability

**Where it goes:** `INSIGHTS.md`

**When I share:** When the insight is useful or surprising

---

## Current Projects

| Project | Status | Next Step | Blocker |
|---------|--------|-----------|---------|
| NUQI | ⏸️ Paused | Download OSM data, build scorer | User has other priorities |
| Article Dissection | ✅ Active | Continue processing bookmarked articles | None |
| "Fun Project" | 🔜 Queued | Waiting for user reveal | Unknown what it is |

---

## Quick Commands Reference

### For You:
```bash
# Check status
openclaw status --all --deep
openclaw doctor --fix

# Cron management
openclaw cron list
openclaw cron enable [job-id]
openclaw cron disable [job-id]

# Git (in workspace)
git status
git add .
git commit -m "message"
```

### For Me:
```
"Enable [cron job name]"
"What should we work on?" (reverse prompt)
"Add to bookmarks: [item] — trigger: [when]"
"I learned [X] about myself" (updates INSIGHTS.md)
```

---

## Optimizations Applied (Chronological)

1. **2026-02-22:** Set up memory system (SOUL.md, WORKFLOW.md, MISTAKES.md)
2. **2026-02-22:** Created 3 cron jobs (NUQI nudge, git reminder, weekly review)
3. **2026-02-22:** Documented NUQI project comprehensively
4. **2026-02-22:** Added Ibtissam to WhatsApp allowlist
5. **2026-02-22:** Implemented task tracking (todo.md, progress-log.md, lessons.md)
6. **2026-02-22:** Created active learning system (BOOKMARKS.md, INSIGHTS.md)
7. **2026-02-23:** Deleted BOOTSTRAP.md (361 tokens saved)
8. **2026-02-23:** Added memory flush + context pruning (Ramya optimizations)
9. **2026-02-23:** Consolidated boot sequence in AGENTS.md
10. **2026-02-23:** Added write discipline + handover protocol

---

## How to Update This File

**When we make changes:**
1. I update relevant section
2. Update "Last Updated" date
3. Add to "Optimizations Applied" chronology
4. Update Quick Stats if metrics changed

**When you want to know something:**
- "Show me our current setup" → I reference this file
- "What cron jobs are running?" → Check Active Systems section
- "What's bookmarked for later?" → Check Bookmarks section

---

*This is our living documentation. Everything we build, optimize, or bookmark lives here.*
