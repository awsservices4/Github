#!/bin/bash

export IMAGE=$(sed -n '1p' /tmp/.auth)
export TAG=$(sed -n '2p' /tmp/.auth)
export PASS=$(sed -n '3p' /tmp/.auth)

echo "*** Finished export ***"

docker login -u suisyola -p $PASS

echo "*** After docker login ***"

cd ~/maven && docker-compose up -d

echo "*** After docker-compose up ***"
