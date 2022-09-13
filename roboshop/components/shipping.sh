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


cd 
