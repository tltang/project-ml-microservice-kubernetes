#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath="tltang168/proj"

# Step 2
# Run the Docker Hub container with kubernetes
/usr/local/bin/kubectl run udacity --image=$dockerpath

# Step 3:
# List kubernetes pods
/usr/local/bin/kubectl get pods

# Step 4:
# Forward the container port to a host
/usr/local/bin/kubectl port-forward udacity 8000:80
