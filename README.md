# fastai_docker
Creates a docker image based on the official pytorch image with all you need for the [fastai course](https://course.fast.ai/). 
Also includes a convience script for people not familiar with docker. 

## Prerequisites
1. Nvidia Drivers installed on the host
2. [Install Docker](https://docs.docker.com/install/)
3. [Install Nvidia Docker Engine](https://github.com/NVIDIA/nvidia-docker/wiki/Installation-(Native-GPU-Support))

## Usage
1. Clone repository: `git clone https://github.com/wAuner/fastai_docker.git`
2. `cd fastai_docker`
3. make script executable `chmod +x start`
4. build and run: `./start`

Next time you want to run it, just use `./start` again. It checks if an image and a container exists. 
If a container exists, it will reuse it.
It also makes the current directory available to the docker container under `/workspace/mydata`. 
Note that if you create files (e.g. notebooks) from within docker, these will belong to root.
