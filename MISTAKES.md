# MISTAKES.md — What Went Wrong & Why

*Every mistake is a lesson. Document it so we don't repeat it.*

---

## Template

```
### YYYY-MM-DD: [Short description]

**What happened:**
[Context and events]

**The mistake:**
[What went wrong]

**Impact:**
[Consequences]

**Root cause:**
[Why it happened — be honest]

**Fix:**
[What we did to recover]

**Prevention:**
[How to avoid next time]
```

---

## Log

### 2026-02-26: Lost Critical Viora Context

**What happened:**
User shared detailed context about Viora team (Mouna, Bede, cousin Bechar, hamam dependency) in an earlier session. Context was not written to memory files.

**The mistake:**
I did not actively write to memory during/after the conversation. Assumed context would persist or be captured automatically.

**Impact:**
- User had to repeat vital business context
- Wasted time reconstructing what was already shared
- Broke trust in memory system
- Delayed strategic progress

**Root cause:**
- Passive approach to memory ("I'll remember" vs "I'll write")
- No trigger to write after key revelations
- Did not treat each session as potentially stateless

**Fix:**
- User re-shared context
- Created memory/2026-02-25.md with full reconstruction
- Updated todo.md and progress-log.md with correct priorities

**Prevention:**
- **WRITE IMMEDIATELY** after any substantive context is shared
- End each session with: "Let me log this so we don't lose it"
- Treat memory_search as backup, not primary storage
- Memory is WRITE-HEAVY, read-light
- If user says "I told you this before" → stop, document the gap, fix protocol

---

