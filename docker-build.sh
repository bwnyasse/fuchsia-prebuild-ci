#!/usr/bin/env bash

#IMAGE='registry.gitlab.com/toulousedart/fushia-build-ci/prebuild'

IMAGE='bwnyasse/fuchsia-prebuild-ci'

docker build -t $IMAGE .
docker push $IMAGE
