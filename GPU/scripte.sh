#!/usr/bin/env bash
gcc host.c -o a -lOpenCL -DCL_TARGET_OPENCL_VERSION=120
