#!/bin/bash

echo "**************************"
echo "*****Testing the Code***"
echo "**************************"
# we turn this part mvn -B -Dskiptest clean package as parameters for the command

docker run --rm -v $PWD/java-app:/app -v /root/.m2/:/root/.m2/ -w /app maven:3-alpine "$@"
