#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Change USER to your username in dockerhub
USER=grayfox87

# Step 1:
# Create dockerpath
dockerpath="${USER}/uda-house-price-predictor"

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login
# Alternative: If your credentials are not present in the credentials-store read pw from txt file
#cat ~/pass.txt | docker login --username ${USER} --password-stdin
docker tag uda-house-price-predictor $dockerpath

# Step 3:
# Push image to a docker repository
docker push $dockerpath