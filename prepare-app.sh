#!/bin/bash
echo "Preparing app..."

# Build Flask image
docker build -t flask_app ./app

# Create Docker volume for Redis
docker volume create redis_data

# Create Docker network
docker network create app_network

echo "Preparation complete."
