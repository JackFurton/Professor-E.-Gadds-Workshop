#!/bin/bash

IMAGE_NAME="dev_env"
CONTAINER_NAME="dev_env_container"
WORK_DIR="${PWD}/workdir"
DOCKER_WORK_DIR="/root/workdir"

mkdir -p ${WORK_DIR}

docker run -it --name ${CONTAINER_NAME} -v ${WORK_DIR}:${DOCKER_WORK_DIR} ${IMAGE_NAME}
