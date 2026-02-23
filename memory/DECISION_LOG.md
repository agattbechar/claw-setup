# Project Decision Log

## 2026-02-19: Inflation Project → Abandoned

### Why It Failed
**Feedback from brothers (economists/statisticians):**
- "Meaningless results"
- "Unimpressive"
- "Good question but weak execution"
- "Can't do scientific topics without proper stats training"

### Technical Problems
- Weak statistical significance
- Claimed causality without proper identification
- OLS with HAC errors = undergrad level
- No controls for confounders (global commodity prices, fiscal policy)
- Found correlation in timing, not causal identification

### Lessons Learned
- Don't claim causality without proper methods
- Don't predict when you can measure
- Complex econometrics requires proper training
- Results must be defensible to domain experts

---

## 2026-02-19: NUQI Project → Selected

### Why This Wins

**Compared to Inflation Project:**

| Aspect | Inflation | NUQI |
|--------|-----------|------|
| Claims | Predictive (causality) | Descriptive (measurement) |
| Methods | Complex econometrics | Simple spatial queries |
| Data | Noisy macro data | Clean geospatial data |
| Results | Statistically weak | Factually verifiable |
| Defense | Hard to justify | Easy to explain |
| Visuals | Tables/charts | Interactive map |
| Use case | Academic debate | Government planning |

### Why It's Defensible
- **No prediction:** Just measures distances, elevation, density
- **Transparent:** Formula is visible: `Score = 0.3×A + 0.25×B + ...`
- **Real data:** OSM, NASA SRTM, WorldPop (all standard)
- **Measurable outputs:** "2.3km from nearest road" vs "β ≈ 0.12 (p=0.03)"
- **Incremental:** Can start simple, add complexity

### Why Government Cares
- "Where should we build the next clinic?"
- "Which neighborhoods are flood risks?"
- "Where is land undervalued?"
- Real decision-support, not academic exercise

### Why It's Impressive
- Interactive map (visual wow factor)
- Tap-to-score (instant value)
- What-If simulator (planning tool)
- AI explanations (modern tech, safe usage)
- Professional methodology (MCDA)

### Risk Mitigation
- **Scope:** Nouakchott only (small, manageable)
- **Data:** All public, all reliable (no scraping)
- **Complexity:** Layered (start with 3 components)
- **Output:** Measurable (not predictive)

### Success Criteria
- MVP: Tap map → get score (2 weeks)
- Real: Full 5 components + explanations (4 weeks)
- Pro: Weight sliders + exports (6 weeks)

### Comparison to Alternatives

**Other ideas considered:**
- Crypto/web3 projects (too speculative, not useful)
- Personal data viz (not impressive enough)
- ML prediction (requires proper training)
- Business apps (not differentiated)

**Why NUQI beats them:**
- Actually useful (government problem)
- Unique (no one building this for Mauritania)
- Defensible (measurable, not speculative)
- Doable (simple logic, real data)
- Impressive (visual, interactive)

---

## Decision

**Project:** NUQI (Nouakchott Urban Quality Index)  
**Status:** ✅ Greenlit  
**Confidence:** High  
**Next Step:** Start Phase 1 (MVP)

---

## References

- Brothers' feedback: "Good try but train on other stuff first"
- ChatGPT conversation: Urban planning analysis
- Gemini conversation: MCDA methodology + AI features
- OpenClaw conversation: Technical architecture + implementation plan

---

**Key Insight:**
> "Most developers chase business apps and AI demos. Very few build spatial insight tools. Yet those are what professionals actually use."
