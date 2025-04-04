#!/bin/bash

# create docker image
docker build -t item-app:v1 .
# display docker images local
docker images
# change image name for hub
docker tag item-app:v1 xpaww/item-app:v1
# login to docker hub
echo $PASSWORD_DOCKER_HUB | docker login -u xpaww --password-stdin
# upload image to docker hub
docker push xpaww/item-app:v1