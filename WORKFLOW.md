# WORKFLOW.md — How We Work

*Our agreed patterns, optimizations, and conventions. evolves over time.*

---

## Session Start Routine

1. **Read SOUL.md** — remember who I am
2. **Read USER.md** — remember who you are  
3. **Read INSIGHTS.md** — what have I learned about you?
4. **Read SETUP.md** — our complete system configuration
5. **Read today's memory file** — catch up on context
6. **Check HEARTBEAT.md** — any pending tasks?
7. **Active learning mode ON** — listen for new patterns, update USER.md and INSIGHTS.md

## Logging Standards

### Daily Logs (`memory/YYYY-MM-DD.md`)
Create at end of each session with:
- Summary (1-2 lines)
- What we did (bullet list)
- Decisions made
- Current project status table
- Notes / observations
- Next session plan

### Mistakes (`MISTAKES.md`)
Log immediately when something goes wrong:
- What happened
- The mistake
- Impact
- Root cause
- Fix
- Prevention

### This File (`WORKFLOW.md`)
Update when we agree on new patterns:
- New conventions
- Tool preferences
- Communication norms

---

## Communication Patterns

### How to Reach Me
- WhatsApp: Primary (you just set this up)
- Web chat: Always available
- Other: TBD

### Response Style
- Skip filler ("Great question!")
- Be direct and helpful
- Have opinions
- One thoughtful reply > three fragments

### Group Chat Rules (from AGENTS.md)
- Respond when: directly mentioned, can add value, correcting misinfo
- Stay silent when: casual banter, already answered, would just say "yeah"
- Use reactions for lightweight acknowledgment

---

## Project Management

### Active Projects Tracking
Keep a table in each daily log:
```
| Project | Status | Blocker | Next Step |
```

### Decision Log
Major decisions go in `memory/DECISION_LOG.md` (already exists)

### When Starting New Project
1. Create project folder
2. Write one-page concept doc
3. Define success criteria
4. Set first milestone

---

## Tool Preferences

### Coding
- **Style:** Practical > perfect. Working code beats beautiful code.
- **Git:** Commit often, push when stable. I'll remind you if uncommitted work sits >2 hours.
- **Testing:** Add when it prevents mistakes, not for coverage theater.

### Sub-Agents (Parallel Work)
Spawn when:
- Research needed while we code (e.g., "check latest papers on X")
- Multiple independent tasks (e.g., summarize 5 URLs at once)
- Long-running analysis that shouldn't block us

Usage: `sessions_spawn(task="...")`

### Cron Jobs (Gentle Reminders) ✅ ENABLED 2026-02-22
All three jobs are now active:
- `nuqi-nudge` — Every 2 days if no NUQI progress
- `git-commit-reminder` — Daily at 22:00 GMT  
- `weekly-memory-review` — Sundays 10:00 GMT

**To disable:** Tell me "Disable all cron jobs" or individually by name.

**When I'm offline and we reconnect, I'll remind you these are running.**

### Smart Heartbeat
Checks during idle polls:
- Uncommitted code detection
- Stale file flagging (>3 days)
- Rotating: NUQI progress, relevant news, weather

Configured in `HEARTBEAT.md`

### Write Discipline (From Ramya's Research)
**After every task:**
1. Log decision + outcome → `memory/YYYY-MM-DD.md`
2. If mistake → append to `tasks/lessons.md` (failure, root cause, prevention)
3. If significant insight → note for MEMORY.md curation (never write directly during tasks)

**Why:** Temporary context gets compacted. Written context survives. Daily logs = raw. MEMORY.md = curated during reviews only.

### Handover Protocol (Model Switches / Session End)
Before ending session or switching models:
```
Write HANDOVER section to memory/YYYY-MM-DD.md:
- What was discussed
- What was decided
- Pending tasks with exact details
- Next steps remaining
```

**Why:** New model starts fresh. Without handover, all context is lost.

### Memory System Config (Ramya Optimizations)
- **Memory flush:** Enabled at 4000 tokens (writes to disk before compaction)
- **Context pruning:** 6h TTL, keeps last 3 assistant responses
- **Compaction mode:** Safeguard (preserves structure)

---

## Open Questions (Answer When Ready)

- [ ] How do you want to handle notifications? (proactive vs on-demand) → Currently: proactive on important, silent on noise
- [x] Preferred hours for proactive messages? → Avoid 23:00-08:00 unless urgent
- [ ] Any topics I should never bring up?
- [ ] Git auto-commit? (I remind, you decide, or auto-commit with good messages?)
- [ ] NUQI nudge frequency? (Currently every 2 days — too much/too little?)

---

*Last updated: 2026-02-22*
