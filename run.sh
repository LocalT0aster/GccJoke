#!/bin/bash

# Name of the Docker image and container
IMAGE_NAME="gcc_mock"
CONTAINER_NAME="gcc_container"

# Stop and remove the existing container if it exists
docker ps -a | grep $CONTAINER_NAME > /dev/null 2>&1
if [ $? -eq 0 ]; then
    echo "Stopping and removing existing container..."
    docker stop $CONTAINER_NAME
    docker rm $CONTAINER_NAME
fi

docker rmi $IMAGE_NAME || true

# Build the Docker image
echo "Building Docker image..."
docker build -t $IMAGE_NAME .

# Run the Docker container in interactive mode
echo "Starting Docker container..."
docker run --name $CONTAINER_NAME -it --rm $IMAGE_NAME bash
