#!/bin/bash

GITHUB_REPO=$1
DOCKERHUB_REPO=$2

git clone "https://github.com/$GITHUB_REPO.git" tmp

docker build -t "$DOCKERHUB_REPO:latest" tmp
docker login -u "$DOCKER_USER" -p "$DOCKER_PWD"
docker push "$DOCKERHUB_REPO:latest" 

echo "Build and push completed successfully! Visit https://hub.docker.com/r/$DOCKERHUB_REPO"
