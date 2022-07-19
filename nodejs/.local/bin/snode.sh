#!/bin/bash

IMAGE_NAME=${IMAGE_NAME:-node}
IMAGE_VERSION=${IMAGE_VERSION:-latest}

MOUNT=$PWD
MOUNT_POINT="/workspace"
WORKDIR="/workspace"

if git rev-parse --show-toplevel &> /dev/null; then
  GIT_ROOT=`git rev-parse --show-toplevel`
  MOUNT="$GIT_ROOT"
  MOUNT_POINT="$GIT_ROOT"
  WORKDIR="$PWD"
fi

docker run --rm -it \
  -v "$MOUNT:$MOUNT_POINT" \
  --network host \
  --user "$UID:$GID" \
  --workdir "$WORKDIR" \
  "$IMAGE_NAME:$IMAGE_VERSION" $@
