#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=udacity-cloud-devops-project-rufin-hounkpe

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login --username rhounkpe
docker tag udacity-cloud-devops-project-rufin-hounkpe rhounkpe/udacity-cloud-devops-project-rufin-hounkpe:v1

# Step 3:
# Push image to a docker repository
docker push rhounkpe/udacity-cloud-devops-project-rufin-hounkpe:v1
