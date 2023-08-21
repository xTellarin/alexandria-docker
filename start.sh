#!/bin/bash
# Pull latest changes from GitHub
git pull

# Try to run docker-compose up in detached mode and capture its output
docker_output=$(docker-compose up -d 2>&1)

# If docker-compose up produced an output, check if it contains error message
if [[ $docker_output == *"ERROR"* ]]; then
    echo "Warning: There might be an issue with Docker. Please ensure Docker is installed and running! Here is the error message:"
    echo $docker_output
else
  echo "App started successfully"
  echo "You can access the app at http://localhost:80 by default."
  echo "Use 'docker compose stop' to stop the app."
fi
