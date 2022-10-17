#!/bin/sh
# MUST RUN AS ROOT
# remove all containers
docker rm -f $(docker ps -a -q)
# Pull & Run
docker pull us-central1-docker.pkg.dev/learn-terraform-364715/docker-images/pys:latest
docker run -d -p 80:80 --name pys-container us-central1-docker.pkg.dev/learn-terraform-364715/docker-images/pys:latest
