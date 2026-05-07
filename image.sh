#!/bin/bash

set -e

#mvn clean package -DskipTests

#cd user-service/target/ || exit 1

REGISTRY="wiensquareacr.azurecr.io"
IMAGE_NAME="company-website"
VERSION=latest

#az acr login --name "${REGISTRY}"
#docker buildx build --platform linux/arm64 --push --build-arg "VERSION=${VERSION}" -t "${REGISTRY}/${IMAGE_NAME}:latest" .
docker buildx build --platform linux/arm64 --load --build-arg "VERSION=${VERSION}" --build-arg PUBLIC_GOOGLE_MAPS_API_KEY=AIzaSyCTpaGmDUTlHdwgfT0keKjChSzBZKx44HQ --build-arg PUBLIC_GOOGLE_PLACE_ID=ChIJaX6xB90FbUcRU58MeUXU3KQ -t "${REGISTRY}/${IMAGE_NAME}:latest" .
#docker push "${REGISTRY}/${IMAGE_NAME}" --all-tags

cd - || exit 1
