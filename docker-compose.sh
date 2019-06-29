#!/usr/bin/env bash

SCRIPT_PATH="$( cd "$(dirname "$0")"; pwd -P )"
SERVER_PATH="$SCRIPT_PATH/server"
CLIENT_PATH="$SCRIPT_PATH/client"

CLIENT_NAME="garage-client"
SERVER_NAME="garage-server"

docker image build -t $SERVER_NAME $SERVER_PATH
docker image build -t $CLIENT_NAME $CLIENT_PATH

# Set environment variables for the server
. $SERVER_PATH/.env

# Passing --privileged gives the container full access to the host's devices (in this case, we want GPIO)
# Could instead pass in --device /dev/gpiomem
docker container run --name $SERVER_NAME --detach --publish $PORT:$PORT --restart unless-stopped --privileged $SERVER_NAME

CLIENT_PORT=${1-80}
docker container run --name $CLIENT_NAME -d -p $1:80 $CLIENT_NAME
