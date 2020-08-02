#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath="rhounkpe/udacity-cloud-devops-project-rufin-hounkpe:v1"

# Step 2
# Run the Docker Hub container with kubernetes
# kubectl create deployment dacity-cloud-devops-project-rufin-hounkpe --image=$dockerpath
kubectl run hounkpedemo\
    --image=$dockerpath\
    --port=80 --labels="app=hounkpedemo"

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward hounkpedemo 8000:80
