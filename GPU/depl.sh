#!/usr/bin/env bash

docker run -it --mount type=bind,source="$(pwd)",target=/app ubuntu
