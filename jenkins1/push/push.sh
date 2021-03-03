#!/bin/bash

echo "*****************************"
echo "******* Pushing image *******"
echo "*****************************"

IMAGE="maven-project"

echo "*** Logging in ***"
docker login -u suisyola -p $PASS

echo "*** Tagging image ***"
docker tag $IMAGE:$BUILD_TAG suisyola/$IMAGE:$BUILD_TAG

echo "*** Pushing image ***"
docker push suisyola/$IMAGE:$BUILD_TAG