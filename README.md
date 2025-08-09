# My Docker App

## Overview
This project contains scripts to manage a Docker-based application with persistent storage and network configuration.

## Files
- **prepare-app.sh** → Builds image, creates network & volume
- **start-app.sh** → Starts container
- **stop-app.sh** → Stops container (keeps data)
- **remove-app.sh** → Removes container, image, network, and volume
- **docker-compose.yaml** → Optional Docker Compose configuration

## How to Use
Using the Bash scripts:
```bash
./prepare-app.sh
./start-app.sh
./stop-app.sh
./remove-app.sh
