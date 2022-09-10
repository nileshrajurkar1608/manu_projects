#!/bin/bash

source components/common.sh

COMPONENT=mongodb

echo -n "Configuring the MongoDB repo:"
curl -s -o /etc/yum.repos.d/${COMPONENT}.repo https://raw.githubusercontent.com/stans-robot-project/${COMPONENT}/main/mongo.repo
stat $? 

echo -n "Installing ${COMPONENT}:"
yum install -y mongodb-org 
stat $? 

echo "Updating the $COMPONENT Config:"
sed -i -e 's/12/hello-centos/' passwd

systemctl enable mongod >> /tmp/${COMPONENT}.log
systemctl start mongod  