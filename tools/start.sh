#!/bin/bash
#set variables if needed

# start the container stack
# (assumes the caller has permission to do this)
open -a docker

sleep 5

echo "changing to docker compose directory"
cd ../DockerCompose/DBP252/
#docker compose up  --pull missing -d
docker compose up -d

# wait for the service to be ready
while ! curl --fail --silent --head http://localhost:8080; do
  sleep 1
done

# open the browser window
open http://localhost:8080