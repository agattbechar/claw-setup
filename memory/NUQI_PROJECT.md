# NUQI - Nouakchott Urban Quality Index

**Project Status:** Concept Phase → Ready for MVP  
**Last Updated:** 2026-02-20  
**Decision:** Greenlight - This is the project to build

---

## Why This Project (The Decision)

**The Problem with the Inflation Project:**
- Weak statistical significance (brothers' feedback: "meaningless")
- Claimed causality without proper identification
- Complex econometrics beyond current skill level
- Results were "unimpressive" to economists/statisticians

**Why NUQI is Different:**
- ✅ **No prediction** - Only measurement (distances, elevation, density)
- ✅ **Transparent scoring** - Formula is visible and auditable
- ✅ **Real data** - OSM, NASA SRTM, WorldPop (standard, documented)
- ✅ **Actually useful** - Government planners need this
- ✅ **Impressive demo** - Visual map with instant scores
- ✅ **Layered complexity** - Start simple, add features

**Key Principle:**
> "You are not predicting. You are measuring. Measurement is defensible. Prediction is debatable."

---

## Core Concept

**NUQI = Nouakchott Urban Quality Index**

A spatial intelligence system that assigns every location in Nouakchott a transparent, explainable score representing overall urban suitability.

**What it answers:**
- "Can you safely and legally build here?"
- "Where should we put the next clinic/school/road?"
- "Which areas are underserved?"

**User interaction:**
1. User taps location on map
2. System calculates scores
3. Returns: NUQI score (0-100) + breakdown + explanation

---

## Scoring Model (MCDA - Multi-Criteria Decision Analysis)

**Formula:**
```
NUQI = Σ(Component_i × Weight_i)
```

**Components (each 0-100):**

| Component | Weight | What it Measures | Data Source |
|-----------|--------|------------------|-------------|
| **Accessibility** | 30% | Distance to roads, city center | OSM roads |
| **Services** | 25% | Proximity to hospitals, schools, markets | OSM amenities |
| **Buildability** | 20% | Elevation, slope, flood risk | NASA SRTM |
| **Density** | 15% | Population nearby | WorldPop |
| **Resilience** | 10% | Distance to risk areas | Derived |

**Normalization (distance → score):**
```
0-250m   = 100 points
250-500m = 80 points
500-1km  = 50 points
1km+     = 20 points
```

**Why this works:**
- Policy-like thresholds (not statistical)
- Transparent and configurable
- Defensible to planners

---

## Data Sources (All Public, All Reliable)

| Data | Source | Format | Size |
|------|--------|--------|------|
| Roads | OpenStreetMap | GeoJSON/Shapefile | Small |
| Amenities (hospitals, schools) | OpenStreetMap | GeoJSON | Small |
| Elevation | NASA SRTM | Raster (TIFF) | ~50MB |
| Population Density | WorldPop | Raster/CSV | ~10MB |
| Administrative Boundaries | UN/OSM | Shapefile | Small |
| Urban Boundaries | Derived from satellite | Vector | Small |

**Why these:**
- Globally standard
- Reproducible
- No scraping
- No private APIs
- Laptop-friendly (Nouakchott is small)

---

## Technical Architecture

### Stack
- **Backend:** Python + FastAPI
- **Spatial:** GeoPandas, Rasterio, Shapely
- **Database:** SQLite + Spatialite (or PostGIS later)
- **Frontend:** Leaflet or MapLibre
- **Data:** OSMnx for OSM data, rasterio for elevation

### System Flow
```
User taps map (lat, lon)
    ↓
FastAPI endpoint /score?lat=18.1&lon=-16.0
    ↓
Scoring Engine:
  - accessibility.py (road distances)
  - services.py (amenity distances)
  - terrain.py (elevation/slope)
  - density.py (population lookup)
    ↓
Score Aggregator (weighted sum)
    ↓
JSON response:
  {
    "nuqi": 72,
    "accessibility": 80,
    "services": 60,
    "terrain": 90,
    "density": 65,
    "explanation": "Good road access, safe elevation, moderate infrastructure"
  }
    ↓
Frontend displays score + breakdown + map
```

### Database Schema
```sql
-- Roads table
roads (id, geom, road_type, name)

-- Amenities table  
amenities (id, geom, type, name) -- type: hospital, school, market

-- Elevation (raster tile reference)
elevation_tiles (id, filepath, bbox)

-- Population grid
population_grid (id, geom, density_value)

-- Scores cache (for performance)
scores_cache (lat, lon, nuqi, components_json, timestamp)
```

---

## AI Features (Low-Risk, High-Value)

**AI is NOT for scoring** (that would be black box).

**AI IS for:**
1. **Explanations:** "Why is this score 42?"
   - "Score is low because: far from primary roads (2.3km), high crowding pressure, low elevation (flood risk)"

2. **Memo Generator:** One-page summary in Arabic/French
   - "Planning note: this zone is high-priority for clinics; expected score gain +15"

3. **Policy Assistant:** Search Law 2024-003 and 2023-017
   - "What does the law say about permits in flood zones?"
   - Ingest PDFs, allow semantic search

**Why this works:**
- AI adds value without making claims
- Explanations are derived from scores, not hallucinated
- Legal assistant is genuinely useful for government users

---

## UI/UX Design

### Mobile-First (3-Second Value)

**Main Screen:**
- Map of Nouakchott
- User taps anywhere
- Card slides up with:

```
╔════════════════════════════╗
║  NUQI: 72/100              ║
║  ████████████░░░░░░░░░░    ║
╠════════════════════════════╣
║  ✅ Good road access (80)  ║
║  ✅ Safe elevation (90)    ║
║  ⚠️  Moderate services (60)║
║                            ║
║  [Tap for details]         ║
╚════════════════════════════╝
```

**Details View:**
- Breakdown of all 5 components
- Explanation in plain language
- "What-If" simulator:
  - "Add clinic within 500m → Score +12"
  - "Upgrade to paved road → Score +8"

### Government Mode (Desktop)
- Side-by-side comparison: District A vs District B
- "Priority Ranking" for clinic placement
- Export: PDF + CSV + screenshot
- Scenario planning: "If we add 3 clinics, where gives max gain?"

---

## Use Cases (Why Government Cares)

| Agency | Use Case |
|--------|----------|
| **Urban Planning** | Where to extend roads? Where to zone for housing? |
| **Health Ministry** | Where are clinics most needed? (underserved areas) |
| **Education** | Optimal school placement |
| **Disaster Prevention** | Identify flood-vulnerable neighborhoods |
| **Investment** | Find high-potential, undervalued districts |
| **Land Regulation** | Monitor informal expansion |

**Killer Feature:**
> "Find top 20 priority zones for clinic placement"

---

## Development Roadmap

### Phase 1: Serious MVP (1-2 weeks)
**Goal:** Impressive demo that works

**Components:**
- [ ] Download OSM data (Nouakchott roads)
- [ ] Download SRTM elevation
- [ ] Download WorldPop population
- [ ] Build scoring engine (3 components: roads, elevation, population)
- [ ] FastAPI endpoint `/score`
- [ ] Simple map UI (tap-to-score)

**Deliverable:** Tap anywhere → get score

### Phase 2: Real System (2-3 weeks)
**Goal:** Government-useful

- [ ] Add amenities (hospitals, schools, markets)
- [ ] Add all 5 components to scoring
- [ ] Sub-score breakdown in UI
- [ ] What-If simulator
- [ ] AI explanations

**Deliverable:** Full NUQI with explanations

### Phase 3: Professional (2-3 weeks)
**Goal:** Presentation-ready

- [ ] Weight sliders + sensitivity preview
- [ ] Comparison mode (A vs B)
- [ ] Export reports (PDF/CSV)
- [ ] District ranking
- [ ] Legal assistant (Law 2024-003 search)

**Deliverable:** Product that looks enterprise-grade

---

## What Makes This "Not a Joke"

### Presentation Checklist

| Feature | Student (Joke) | Professional (Expert) |
|---------|---------------|----------------------|
| **Data** | "I downloaded a CSV" | "Integrated Multi-source Spatial Data (OSM + Sentinel-2 + WorldPop)" |
| **Logic** | "Higher is better" | "Multi-Criteria Decision Analysis with sensitivity testing" |
| **Scoring** | "AI predicted this" | "Weighted linear combination with auditable weights" |
| **UI** | "Map with pins" | "Spatial Decision Support System (SDSS) with interactive weighting" |
| **Goal** | "Show where it's nice" | "Optimize resource allocation and mitigate urban sprawl" |

### Key Phrases to Use
- "Multi-Criteria Decision Analysis (MCDA)"
- "Spatial Decision Support System (SDSS)"
- "Isochrone-based accessibility"
- "Hexagonal spatial indexing (H3)" - optional but impressive
- "Normalized accessibility scores via policy-driven thresholds"

### What to AVOID Saying
- ❌ "AI predicts the best locations"
- ❌ "Machine learning model"
- ❌ "Algorithm decides"
- ❌ "This proves X causes Y"

### What to SAY Instead
- ✅ "This measures structural accessibility"
- ✅ "The score quantifies urban suitability"
- ✅ "Transparent scoring based on measurable criteria"
- ✅ "Decision-support tool for planners"

---

## Legal/Policy Anchors (For Credibility)

**Reference these laws:**
- **Law 2024-003:** Urban planning and construction standards
- **Law 2023-017:** Real estate development
- **Nouakchott Master Plan 2040** (if accessible)
- **JICA / Arab Urban Development Institute** reports

**Why:** Citing the framework instantly raises credibility. Even if your tool is independent, referencing official planning shows you understand the context.

---

## Comparison: Student vs Professional

### Student Project (What to Avoid)
- Pretty map with pins
- Mystery scoring algorithm
- "AI" buzzwords without substance
- Claims about prediction
- No clear use case

### Professional Tool (What to Build)
- Transparent, explainable scores
- MCDA methodology
- Decision-support features
- Measurable, factual outputs
- Clear government use cases

---

## First Steps (What to Do Now)

### Immediate Actions:

1. **Create project folder**
   ```bash
   mkdir -p ~/dev/projects/nuqi
   cd ~/dev/projects/nuqi
   ```

2. **Set up Python environment**
   ```bash
   python3 -m venv venv
   source venv/bin/activate
   pip install geopandas rasterio shapely fastapi uvicorn osmnx
   ```

3. **Download first dataset** (OSM for Nouakchott)
   ```python
   import osmnx as ox
   place = "Nouakchott, Mauritania"
   roads = ox.graph_from_place(place, network_type="drive")
   ox.save_graph_shapefile(roads, filepath="data/nouakchott_roads")
   ```

4. **Test elevation download**
   ```bash
   # Use SRTM downloader or NASA Earthdata
   # Get 1-arc second SRTM tile for Nouakchott region
   ```

5. **Build first scorer** (just roads + elevation)
   - Distance to nearest road
   - Elevation at point
   - Simple weighted average

6. **Create map UI**
   - Leaflet.js with OpenStreetMap tiles
   - Tap to get lat/lon
   - Call API endpoint
   - Display score

---

## Success Criteria

**Minimum Viable Success:**
- [ ] Tap map → get score (0-100)
- [ ] Score based on at least 3 components
- [ ] Explanation of why score is what it is
- [ ] Runs on laptop
- [ ] Demo-able to someone in 2 minutes

**Full Success:**
- [ ] All 5 components implemented
- [ ] What-If simulator working
- [ ] AI explanations
- [ ] Comparison mode
- [ ] Export functionality
- [ ] Looks professional (not student-project)

---

## Why This Will Work

1. **Nouakchott is small** - Fast queries, manageable data
2. **Data exists** - No scraping, no fragile sources
3. **Problem is real** - Planners actually need this
4. **Output is visual** - Demo impresses instantly
5. **Logic is simple** - Distance calculations, not complex stats
6. **Scales up** - Can add features incrementally

---

## Remember

> "You're not predicting. You're measuring."

This is the key to credibility. Everything else follows from this principle.

---

## Next Decision Point

**Choose first use case to anchor MVP:**

- **A) Clinic placement** (health access) ← RECOMMENDED
- **B) School placement** (education)
- **C) Road upgrade prioritization** (infrastructure)
- **D) Flood-risk/buildability screening** (risk)

**Recommendation: A (Clinic Placement)**
- Clear value (health is universal priority)
- Simple data needs (roads + clinics + population)
- Easy to validate (government knows where clinics are missing)
- Highly visual (underserved areas light up on map)

Once chosen, next step is: exact NUQI formula for that use case + minimal datasets + API schema + UI layout.

---

## Related Conversations

- Previous project: Mauritania inflation/decoupling analysis (abandoned due to statistical weakness)
- Brothers' feedback: "Good try but meaningless results, focus on learning stats first"
- Lesson learned: Don't claim causality without proper identification; don't predict when you can measure

---

## Contact/Context

**User:** Bechar Agatt  
**Location:** Mauritania  
**Context:** 2nd year Computer Science student, building portfolio projects  
**Goal:** Impressive, defensible, useful project that doesn't look like a student toy

---

**Status:** Ready to start Phase 1 (MVP)
