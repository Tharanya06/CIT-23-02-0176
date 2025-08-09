#!/bin/bash
echo "Removing app..."
docker-compose down -v --rmi all
docker network rm app-network 2>/dev/null || echo "Network app-network removed or doesn't exist."
docker volume rm redis-data 2>/dev/null || echo "Volume redis-data removed or doesn't exist."
echo "App removed."
