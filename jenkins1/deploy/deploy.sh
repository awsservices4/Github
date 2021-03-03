#!/bin/bash

echo "*****************"
echo "*** Transferring Variables ***"
echo "*****************"

echo maven-project > /tmp/.auth
echo $BUILD_TAG >> /tmp/.auth
echo $PASS >> /tmp/.auth

# Transfer the variables to remote machine via SSH copy
echo "*** Transferring .auth ***"
scp /tmp/.auth aloysius@192.168.1.3:/tmp/.auth

# Transfer the publish script to remote machine via SSH copy
echo "*** Transferring publish.sh ***"
scp jenkins/deploy/publish.sh aloysius@192.168.1.3:~/maven/publish.sh

#Execute publish.sh via SSH
echo "*** SSH in process ***"
ssh aloysius@192.168.1.3 "~/maven/publish.sh"