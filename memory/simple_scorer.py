"""
Simple NUQI Scorer - Phase 1 MVP
Calculates accessibility score based on distance to nearest road
"""
import geopandas as gpd
import numpy as np
from shapely.geometry import Point
from pathlib import Path

def load_roads():
    """Load road network"""
    roads = gpd.read_file("data/nouakchott_roads.gpkg")
    print(f"Loaded {len(roads)} road segments")
    return roads

def distance_to_nearest_road(lat, lon, roads):
    """
    Calculate distance from point to nearest road
    Returns distance in meters
    """
    point = Point(lon, lat)
    
    # Calculate distance to each road segment
    distances = roads.geometry.distance(point)
    
    # Return minimum distance
    min_distance = distances.min()
    return min_distance

def distance_to_score(distance_meters):
    """
    Convert distance to accessibility score (0-100)
    Using policy-driven thresholds
    """
    if distance_meters <= 250:
        return 100
    elif distance_meters <= 500:
        return 80
    elif distance_meters <= 1000:
        return 50
    else:
        return 20

def calculate_nuqi_simple(lat, lon):
    """
    Calculate simple NUQI score (Phase 1)
    Just accessibility for now
    """
    print(f"\nCalculating NUQI for lat={lat}, lon={lon}")
    
    # Load data
    roads = load_roads()
    
    # Calculate distance to nearest road
    dist = distance_to_nearest_road(lat, lon, roads)
    print(f"Distance to nearest road: {dist:.0f}m")
    
    # Convert to score
    accessibility_score = distance_to_score(dist)
    print(f"Accessibility score: {accessibility_score}/100")
    
    # For Phase 1, NUQI = just accessibility
    # Later we'll add: services, terrain, density
    nuqi = accessibility_score
    
    result = {
        "nuqi": nuqi,
        "accessibility": accessibility_score,
        "distance_to_road_m": round(dist, 1),
        "explanation": f"Distance to nearest road: {dist:.0f}m"
    }
    
    return result

if __name__ == "__main__":
    # Test with a point in Nouakchott
    # City center-ish
    test_lat = 18.0735
    test_lon = -15.9582
    
    result = calculate_nuqi_simple(test_lat, test_lon)
    
    print("\n" + "="*40)
    print("NUQI RESULT")
    print("="*40)
    print(f"Score: {result['nuqi']}/100")
    print(f"Accessibility: {result['accessibility']}/100")
    print(f"Explanation: {result['explanation']}")
    print("="*40)
