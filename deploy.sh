#!/bin/sh
# MUST RUN AS ROOT
# remove all containers
docker rm -f $(docker ps -a -q)
# Pull & Run
docker pull "$1"
docker run -d -p 80:80 --name pys-container "$1"
