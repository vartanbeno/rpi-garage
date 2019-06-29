#!/usr/bin/env bash

SCRIPT_PATH="$( cd "$(dirname "$0")"; pwd -P )"
DOCKER_NAME=${1-garage-server}

docker image build -t $DOCKER_NAME $SCRIPT_PATH

# Set environment variables
. $SCRIPT_PATH/.env

# Passing --privileged gives the container full access to the host's devices (in this case, we want GPIO)
# Could instead pass in --device /dev/gpiomem
docker container run --name $DOCKER_NAME --detach --publish $PORT:$PORT --restart unless-stopped --privileged $DOCKER_NAME
