"""
Download OSM data for Nouakchott
Run this in your ~/dev/projects/nuqi directory
"""
import osmnx as ox
import geopandas as gpd
from pathlib import Path

# Create data directory
Path("data").mkdir(exist_ok=True)

# Define Nouakchott bounding box (approximate)
# You can refine these coordinates
north, south, east, west = 18.2, 17.9, -15.8, -16.1

print("Downloading roads for Nouakchott...")
# Get road network
g = ox.graph_from_bbox(north, south, east, west, network_type="drive")

# Save as shapefile for now (easier to inspect)
ox.save_graph_shapefile(g, filepath="data/nouakchott_roads")

# Also save as GeoPackage (better format)
nodes, edges = ox.graph_to_gdfs(g)
edges.to_file("data/nouakchott_roads.gpkg", driver="GPKG")

print(f"✓ Downloaded {len(edges)} road segments")
print(f"✓ Saved to data/nouakchott_roads.gpkg")

# Get amenities (hospitals, schools, markets)
print("\nDownloading amenities...")
amenities = ox.geometries_from_bbox(
    north, south, east, west,
    tags={
        'amenity': ['hospital', 'clinic', 'school', 'marketplace', 'pharmacy'],
        'shop': ['supermarket', 'convenience']
    }
)

if len(amenities) > 0:
    amenities.to_file("data/nouakchott_amenities.gpkg", driver="GPKG")
    print(f"✓ Downloaded {len(amenities)} amenities")
    print(f"  Types: {amenities['amenity'].value_counts().to_dict()}")
else:
    print("⚠ No amenities found in this bbox")

print("\n✓ OSM data download complete!")
