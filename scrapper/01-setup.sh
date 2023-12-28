#!/usr/bin/env bash

YOUR_API_KEY="${1}"
IMAGE_NAME="${2}"

set -e

function usage {
    cat <<EOF
    ./setup.sh YOUR_API_KEY IMAGE_NAME
EOF
}

if [[ $# -ne 2 ]]; then
    echo "required 2 args!"
    usage
    exit 1
fi

docker build --build-arg API_KEY=${YOUR_API_KEY} -t ${IMAGE_NAME} .

echo ${IMAGE_NAME} > image.log
