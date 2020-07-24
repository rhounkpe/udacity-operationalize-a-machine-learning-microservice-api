#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath="rhounkpe/udacity-cloud-devops-project-rufin-hounkpe"

# Step 2
# Run the Docker Hub container with kubernetes
# kubectl create deployment dacity-cloud-devops-project-rufin-hounkpe --image=$dockerpath
kubectl run "dacity-cloud-devops-project-rufin-hounkpe" --generator=run-pod/v1 --image=$dockerpath --port=80 --labels app="dacity-cloud-devops-project-rufin-hounkpe"

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward dacity-cloud-devops-project-rufin-hounkpe 8000:80
# kubectl expose deployment udacity-cloud-devops-project-rufin-hounkpe --type="Nodeport" --target-port=80
# kubectl port-forward deployment/udacity-cloud-devops-project-rufin-hounkpe 8000:80
