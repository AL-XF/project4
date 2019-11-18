#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=liiwza/udacityproject4

# Step 2:  
# Authenticate & tag
docker login --username=liiwza --password=12345play
tag=project4
echo "Docker ID and Image: $dockerpath"

# Step 3:
# Push image to a docker repository
docker tag project4 $dockerpath:$tag
docker push $dockerpath:$tag
