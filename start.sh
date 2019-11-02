#! /bin/bash

# check if image is already built, if not build it
if ! docker images | grep -q fastai-image; then
    echo "No image found. Building new image..."
    docker build -t fastai-image https://github.com/wAuner/fastai_docker.git
fi

# check if a container already exists and if so, use it
if docker ps -a | grep -q fastai-container
then
    echo "Existing container found. Starting it..."
    docker start -a fastai-container
else
    echo "No existing container found. Creating one..."
    docker run -ti -p 8888:8888 --runtime=nvidia --shm-size="8G" \
    -v $(pwd):/workspace/mydata --name fastai-container fastai-image
fi 
