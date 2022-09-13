#!/bin/bash

set -e 

source components/common.sh

COMPONENT=shipping


LOGFILE=/tmp/robot.log 

echo -n "Installing Maven: "
yum install maven -y &>> LOGFILE
stat $? 

# Created User 
USER_SETUP 

DOWNLOAD_AND_EXTRACT
# Downloading and extract 

echo -n "Generating the artifact :"
cd /home/${FUSER}/${COMPONENT}
mvn clean package   &>> LOGFILE
mv target/shipping-1.0.jar shipping.jar
