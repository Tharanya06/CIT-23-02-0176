#!/bin/bash
echo "Starting app..."

# Start Redis
docker run -d --name redis_server --network app_network -v redis_data:/data --restart always redis:7

# Start Flask app
docker run -d --name flask_app --network app_network -p 5000:5000 --restart always -e REDIS_HOST=redis_server flask_app

echo "App is running at http://localhost:5000"
