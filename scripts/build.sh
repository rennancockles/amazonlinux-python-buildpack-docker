#!/usr/bin/env bash
set -e

use_tag="rennancockles/amazonlinux-python-buildpack:$NAME"

DOCKERFILE="$NAME"

if [ "$NAME" == "latest" ] ; then
  DOCKERFILE="python3.9"
fi

docker build -t "$use_tag" --file "./docker-images/${DOCKERFILE}.dockerfile" "./docker-images/"