#!/bin/bash

source components/common.sh


echo -n "Configuring the MongoDB repo:"
curl -s -o /etc/yum.repos.d/mongodb.repo https://raw.githubusercontent.com/stans-robot-project/mongodb/main/mongo.repo
stat $? 

echo "Installing Monogdb:"
