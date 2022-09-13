#!/bin/bash

set -e 

source components/common.sh

COMPONENT=shipping


LOGFILE=/tmp/robot.log 


yum install maven -y &>> LOGFILE

