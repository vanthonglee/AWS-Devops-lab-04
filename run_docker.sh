#!/usr/bin/env bash
# set -x
## Complete the following steps to get Docker running locally

# Step 1:
# Build image and add a descriptive tag
docker build -t udacity-aws-devops-lab-04:latest .

# Step 2: 
# List docker images
docker image ls

# Step 3: 
# Run flask app
docker run -p 8000:80 udacity-aws-devops-lab-04:latest