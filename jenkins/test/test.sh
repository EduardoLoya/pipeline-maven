#!/bin/bash

echo "################"
echo "*** Testing  ***"
echo "################"

PROJ=/var/lib/jenkins/workspace/pipeline-docker-maven
docker run --rm -v /root/.m2:/root/.m2 -v $PROJ/java-app:/app -w /app maven:3-alpine "$@"

