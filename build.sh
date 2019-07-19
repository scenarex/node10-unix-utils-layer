#!/bin/bash -x

set -e

mkdir -p layer
rm -rf layer

docker build -t lambci-nodejs10 .
CONTAINER=$(docker run -d lambci-nodejs10 false)

# The contents of /opt will be copied to directory layer
# In AWS lambda environment the contents of layer will be in /opt directory even if they were in 'layer's root!!!
docker cp $CONTAINER:/opt layer
docker rm $CONTAINER
