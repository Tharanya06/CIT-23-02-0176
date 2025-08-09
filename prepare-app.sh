#!/bin/bash
echo "Preparing app..."
docker network create app-network 2>/dev/null || echo "Network app-network exists."
docker volume create redis-data 2>/dev/null || echo "Volume redis-data exists."
docker-compose build
echo "Preparation done."
