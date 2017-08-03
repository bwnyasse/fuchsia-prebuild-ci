#!/usr/bin/env bash

IMAGE='registry.gitlab.com/toulousedart/fushia-build-ci/prebuild'

docker build -t $IMAGE .
docker push $IMAGE