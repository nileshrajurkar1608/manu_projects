#!/bin/bash

set -e 

source components/common.sh

COMPONENT=mysql

echo -n
curl -s -L -o /etc/yum.repos.d/mysql.repo https://raw.githubusercontent.com/stans-robot-project/mysql/main/${COMPONENT}.repo