#!/bin/bash
# NUQI Setup Script
# Run this in ~/dev/projects/nuqi

echo "🚀 Setting up NUQI project..."

# Check if we're in the right directory
if [ ! -f "requirements.txt" ]; then
    echo "❌ Error: Not in nuqi project directory"
    echo "   cd ~/dev/projects/nuqi"
    exit 1
fi

# Install requirements
echo "📦 Installing packages..."
pip install -r requirements.txt

# Create directories
mkdir -p data
mkdir -p static

# Download OSM data
echo "🗺️  Downloading OSM data for Nouakchott..."
python download_osm.py

# Test the scorer
echo "🧪 Testing simple scorer..."
python simple_scorer.py

echo ""
echo "✅ Setup complete!"
echo ""
echo "Next steps:"
echo "  1. Start API server: uvicorn main:app --reload"
echo "  2. Open index.html in browser"
echo "  3. Tap on map to calculate NUQI scores"
echo ""
echo "API docs: http://localhost:8000/docs"
echo "Test endpoint: http://localhost:8000/score?lat=18.0735&lon=-15.9582"
