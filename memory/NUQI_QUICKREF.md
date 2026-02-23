# NUQI Quick Reference

## The Project
**Nouakchott Urban Quality Index** - A spatial intelligence system that scores any location in Nouakchott based on accessibility, services, terrain, density, and resilience.

## Core Principle
> "You are not predicting. You are measuring."

## The Formula
```
NUQI = 0.3×Accessibility + 0.25×Services + 0.2×Buildability + 0.15×Density + 0.1×Resilience
```

## Data Sources
- **Roads:** OpenStreetMap
- **Elevation:** NASA SRTM
- **Population:** WorldPop
- **Amenities:** OSM (hospitals, schools, markets)

## Tech Stack
- Python + FastAPI
- GeoPandas + Rasterio
- SQLite/Spatialite
- Leaflet (frontend)

## AI Usage (Safe)
- Explain scores in plain language
- Generate planning memos
- Search planning laws (PDF RAG)
- **NOT for scoring** (that's black box)

## Phases
1. **MVP (1-2w):** Roads + Elevation + Population → Score
2. **Real System (2-3w):** Add services + all 5 components + explanations
3. **Professional (2-3w):** Weight sliders + comparisons + exports

## First Use Case
**Clinic Placement** (recommended)
- Clear value
- Easy to validate
- Highly visual

## What to Avoid Saying
- ❌ "AI predicts..."
- ❌ "Machine learning..."
- ❌ "Algorithm decides..."

## What to Say Instead
- ✅ "Multi-Criteria Decision Analysis"
- ✅ "Measures structural accessibility"
- ✅ "Transparent scoring"

## Why This Works
- Nouakchott is small (fast queries)
- Data exists (no scraping)
- Problem is real (planners need it)
- Visual output (impresses instantly)
- Simple logic (distances, not complex stats)

## Status
✅ Concept finalized  
⏳ Ready to start Phase 1 (MVP)

## Next Step
Set up environment + download OSM data for Nouakchott
