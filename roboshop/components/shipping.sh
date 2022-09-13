#!/bin/bash

set -e 

source components/common.sh

COMPONENT=shipping


LOGFILE=/tmp/robot.log 

echo -n "Installing Maven: "
yum install maven -y &>> LOGFILE
stat $? 

USER_SETUP 