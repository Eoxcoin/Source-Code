#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR/..

DOCKER_IMAGE=${DOCKER_IMAGE:-eoxpay/eoxd-develop}
DOCKER_TAG=${DOCKER_TAG:-latest}

BUILD_DIR=${BUILD_DIR:-.}

rm docker/bin/*
mkdir docker/bin
cp $BUILD_DIR/src/eoxd docker/bin/
cp $BUILD_DIR/src/eox-cli docker/bin/
cp $BUILD_DIR/src/eox-tx docker/bin/
strip docker/bin/eoxd
strip docker/bin/eox-cli
strip docker/bin/eox-tx

docker build --pull -t $DOCKER_IMAGE:$DOCKER_TAG -f docker/Dockerfile docker
