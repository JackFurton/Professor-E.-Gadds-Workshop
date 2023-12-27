#!/usr/bin/env bash

IMAGE_NAME=$(tail -n 1 image.log)

IMAGE_ID=$(docker images -q $IMAGE_NAME:latest)

docker run $IMAGE_ID
