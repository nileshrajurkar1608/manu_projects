#!/bin/bash

set -e 

source components/common.sh

COMPONENT=payment

# Calling PYTHON function
# PYTHON

echo -n "Installing Pyhton:"
yum install python36 gcc python3-devel -y &>> ${LOGFILE} 
stat $? 

USER_SETUP

DOWNLOAD_AND_EXTRACT

cd /home/${FUSER}/${COMPONENT}/
pip3 install -r requirements.txt   &>> ${LOGFILE} 
stat $? 

USER_ID=$(id -u roboshop)
USER_ID=$(id -u roboshop)
