#!/bin/bash

source components/common.sh

COMPONENT=rabbitmq

yum install https://github.com/rabbitmq/erlang-rpm/releases/download/v23.2.6/erlang-23.2.6-1.el7.x86_64.rpm -y &>> ${LOGFILE} 
stat $? 

echo -n "Configuring the Yum Repo for $COMPONENT:"
curl -s https://packagecloud.io/install/repositories/rabbitmq/rabbitmq-server/script.rpm.sh | sudo bash  &>> ${LOGFILE} 
stat $? 

echo -n "Installing RabbitMQ: "
yum install rabbitmq-server -y  &>> ${LOGFILE} 
stat $? 

echo -n "Starting $COMPONENT :"
systemctl enable rabbitmq-server &>> ${LOGFILE} 
systemctl start rabbitmq-server &>> ${LOGFILE} 
stat $? 

rabbitmqctl list_users | grep roboshop 
echo -n "Creating $COMPONENT Application user:" &>> ${LOGFILE} 
rabbitmqctl add_user roboshop roboshop123 &>> ${LOGFILE} 
stat $? 

echo -n "Configuring the $COMPONENT $FUSER permissions: "
rabbitmqctl set_user_tags roboshop administrator &>> ${LOGFILE}  &&  rabbitmqctl set_permissions -p / roboshop ".*" ".*" ".*"  &>> ${LOGFILE} 
stat $? 


