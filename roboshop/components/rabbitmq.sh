#!/bin/bash

source components/common.sh

COMPONENT=rabbitmq

echo -n "Installing Erland dependency:"
yum install https://github.com/rabbitmq/erlang-rpm/releases/download/v23.2.6/erlang-23.2.6-1.el7.x86_64.rpm -y &>> ${LOGFILE} 
stat $? 

echo -n "Configuring the Yum Repo for $COMPONENT:"
curl -s https://packagecloud.io/install/repositories/rabbitmq/rabbitmq-server/script.rpm.sh | sudo bash
stat $? 

echo -n "Installing RabbitMQ: "
yum install rabbitmq-server -y  &>> ${LOGFILE} 
stat $? 

echo -n "Starting $COMPONENT :"
systemctl enable rabbitmq-server ${LOGFILE} 
systemctl start rabbitmq-server ${LOGFILE} 
stat $? 

