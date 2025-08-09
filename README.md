# CCS3308 - Docker-based Web Application

## Deployment Requirements
- Docker
- Docker Compose
- Git

## Application Description
This is a simple Flask web application that counts the number of visits to the homepage. It uses Redis as a persistent data store to keep track of the visit count.

## Network and Volume Details
- **Network:** `app-network` — a Docker bridge network enabling communication between containers.
- **Volume:** `redis-data` — a named Docker volume to persist Redis data even if containers stop or restart.

## Container Configuration
- **web:** Flask app container, built from a custom Dockerfile, exposes port 5000.
- **redis:** Redis database container, uses the official Redis image and persists data in a volume.

## Containers List and Roles
| Container Name | Role                   | Port Mapping      |
|----------------|------------------------|-------------------|
| `web`          | Flask web application  | Host:5000 → 5000  |
| `redis`        | Redis data store       | Internal port 6379|

## Instructions

### 1. Open Terminal

- **Windows:** Open Git Bash or PowerShell.
- **Mac:** Open Terminal.
- **Linux:** Open your terminal emulator.

### 2. Navigate to Project Folder

```bash
cd ~/CIT-23-02-0176
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
