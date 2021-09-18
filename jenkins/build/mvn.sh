#!/bin/bash

echo "****************"
echo "* Building jar!*"
echo "****************"

echo "$USER"
PROJ=/var/lib/jenkins/workspace/pipeline-docker-maven
docker run --rm -v /root/.m2:/root/.m2 -v $PROJ/java-app:/app -w /app maven:3-alpine "$@"
