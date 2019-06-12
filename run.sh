#!/usr/bin/env bash

DOCKER_NAME=${1-garage-door-opener}

docker image build -t $DOCKER_NAME .

# Set environment variables
. .env

# Passing --privileged gives the container full access to the host's devices (in this case, we want GPIO)
# Could instead pass in --device /dev/gpiomem
docker container run --name $DOCKER_NAME --detach --publish $PORT:$PORT --restart unless-stopped --privileged $DOCKER_NAME
