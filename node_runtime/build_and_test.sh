#!/usr/bin/env bash

set -e

IMAGE=s1hofmann/node-runtime
TAG=12.18.0

docker build -t $IMAGE:$TAG --build-arg NODE_VERSION=$TAG .
dgoss run -it $IMAGE:$TAG
