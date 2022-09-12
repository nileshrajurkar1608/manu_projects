#!/bin/bash

set -e 

source components/common.sh

COMPONENT=redis

echo -n "Configuring the $COMPONENT repo: "
curl -L https://raw.githubusercontent.com/stans-robot-project/redis/main/redis.repo -o /etc/yum.repos.d/redis.repo  &>> /tmp/${COMPONENT}.log 
stat $?

echo -n "Installing $COMPONENT: "
yum install redis-6.2.7 -y &>> /tmp/${COMPONENT}.log 
stat $? 

echo -n "Whitelisting the redis config : "
sed -i -e 's/127.0.0.1/0.0.0.0/g' redis.conf

# # curl -L https://raw.githubusercontent.com/stans-robot-project/redis/main/redis.repo -o /etc/yum.repos.d/redis.repo
# # yum install redis-6.2.7 -y

# 2. Update the BindIP from 127.0

# 2. Update the BindIP from 127.0.0.1 to 0.0.0.0 in config file /etc/redis.conf & /etc/redis/redis.conf

# # systemctl enable redis
# # systemctl start redis
# # systemctl status redis -l