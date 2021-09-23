#!/usr/bin/env bash

set -e

use_tag="rennancockles/amazonlinux-python-buildpack:$NAME"

bash scripts/build.sh

bash scripts/docker-login.sh

docker push "$use_tag"