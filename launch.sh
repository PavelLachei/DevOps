#!/bin/bash

# Tasks:
#1 Builds a Docker image called corp-nginx based on the instructions in the Dockerfile.
docker build --file /home/ec2-user/docker/Dockerfile . --tag corp-nginx

#2 Launches a detached Docker container named corpweb using the corp-nginx image.
#3 The running container should map port 80 in the container to port 8080 on the host.
docker run -d -P -p 8080:80 --name corpweb corp-nginx
