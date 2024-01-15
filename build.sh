#!/usr/bin/env bash

# if [ -z "$1" ] then we quit and show some instructions
if [ -z "$1" ]; then
    echo "Usage: ./build.sh <path/to/your/latex/folder>"
    exit 1
fi

# Build the docker image
docker build -t latex-docker .

# Run the docker image
docker run -it -v "$1":/latex latex-docker
