"""
NUQI API - Phase 1 MVP
FastAPI backend for Nouakchott Urban Quality Index
"""
from fastapi import FastAPI
from fastapi.middleware.cors import CORSMiddleware
import geopandas as gpd
from shapely.geometry import Point
from pathlib import Path
import json

app = FastAPI(title="NUQI API", version="0.1.0")

# Enable CORS for frontend
app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],
    allow_methods=["*"],
    allow_headers=["*"],
)

# Load data on startup
roads = None

def load_data():
    """Load spatial data"""
    global roads
    roads_path = Path("data/nouakchott_roads.gpkg")
    
    if roads_path.exists():
        roads = gpd.read_file(roads_path)
        print(f"✓ Loaded {len(roads)} road segments")
    else:
        print("⚠ Road data not found. Run download_osm.py first.")

def distance_to_score(distance_meters):
    """Convert distance to accessibility score"""
    if distance_meters <= 250:
        return 100
    elif distance_meters <= 500:
        return 80
    elif distance_meters <= 1000:
        return 50
    else:
        return 20

@app.on_event("startup")
async def startup():
    load_data()

@app.get("/")
def root():
    return {
        "service": "NUQI API",
        "version": "0.1.0",
        "status": "running",
        "data_loaded": roads is not None
    }

@app.get("/score")
def get_score(lat: float, lon: float):
    """
    Calculate NUQI score for a location
    
    Query params:
    - lat: latitude (-16.0 to -15.8 for Nouakchott)
    - lon: longitude (17.9 to 18.2 for Nouakchott)
    
    Returns:
    - nuqi: overall score (0-100)
    - accessibility: road access score (0-100)
    - distance_to_road_m: distance in meters
    - explanation: human-readable summary
    """
    if roads is None:
        return {"error": "Road data not loaded"}, 500
    
    # Create point
    point = Point(lon, lat)
    
    # Calculate distance to nearest road
    distances = roads.geometry.distance(point)
    min_distance = distances.min()
    
    # Calculate score
    accessibility = distance_to_score(min_distance)
    
    # For Phase 1, just accessibility
    nuqi = accessibility
    
    # Generate explanation
    if min_distance <= 250:
        explanation = "Excellent road access"
    elif min_distance <= 500:
        explanation = "Good road access"
    elif min_distance <= 1000:
        explanation = "Moderate road access"
    else:
        explanation = "Limited road access"
    
    return {
        "nuqi": nuqi,
        "accessibility": accessibility,
        "distance_to_road_m": round(min_distance, 1),
        "explanation": explanation,
        "location": {"lat": lat, "lon": lon}
    }

@app.get("/health")
def health_check():
    """Health check endpoint"""
    return {
        "status": "healthy",
        "roads_loaded": roads is not None,
        "road_count": len(roads) if roads is not None else 0
    }

if __name__ == "__main__":
    import uvicorn
    uvicorn.run(app, host="0.0.0.0", port=8000)
