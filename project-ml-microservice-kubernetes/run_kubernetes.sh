#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath="grayfox87/uda-house-price-predictor"

# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deployment uda-house-price-predictor --image=$dockerpath

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward deployment/uda-house-price-predictor 8000:80