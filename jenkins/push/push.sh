#!/bin/bash

echo "********************************"
echo "***Pushing Image to Dockerhub***"
echo "********************************"

IMAGE="jenkinsmvnproject"

echo "****Logging into**********"
docker login -u zelfick -p $PASSWORD
echo "****Tagging Image**********"
docker tag $IMAGE:$BUILD_TAG zelfick/$IMAGE:$BUILD_TAG
echo "**Pushing to dockerhub*****"
docker push zelfick/$IMAGE:$BUILD_TAG
