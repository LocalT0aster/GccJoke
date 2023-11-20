# PowerShell script to build and run the Docker container

# Name of the Docker image and container
$IMAGE_NAME = "gcc_mock"
$CONTAINER_NAME = "gcc_container"

# Check if the container already exists
$containerExists = docker ps -a -f name=$CONTAINER_NAME | Select-String $CONTAINER_NAME

if ($containerExists) {
    # Stop and remove existing container
    Write-Host "Stopping and removing existing container..."
    docker stop $CONTAINER_NAME
    docker rm $CONTAINER_NAME
}

# Build the Docker image
Write-Host "Building Docker image..."
docker build -t $IMAGE_NAME .

# Run the Docker container in interactive mode
Write-Host "Starting Docker container..."
docker run --name $CONTAINER_NAME -it --rm $IMAGE_NAME
