#!/bin/bash

set -e 

source components/common.sh

COMPONENT=catalogue



# curl -L https://raw.githubusercontent.com/stans-robot-project/redis/main/redis.repo -o /etc/yum.repos.d/redis.repo
# yum install redis-6.2.7 -y

curl -L https://raw.githubusercontent.com/stans-r