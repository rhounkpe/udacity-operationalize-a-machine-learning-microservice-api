#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=rhounkpe/udacity-cloud-devops-project-rufin-hounkpe

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run dacity-cloud-devops-project-rufin-hounkpe --image=rhounkpe/udacity-cloud-devops-project-rufin-hounkpe --port=80

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl expose deployment udacity-cloud-devops-project-rufin-hounkpe --type=LoadBalancer --port=8000 --target-port=80

