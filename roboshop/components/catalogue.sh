#!/bin/bash

set -e 

source components/common.sh

COMPONENT=catalogue
FUSER=roboshop 

echo -n "Configure Yum Remos for nodejs:"
curl -sL https://rpm.nodesource.com/setup_lts.x | bash >> /tmp/${COMPONENT}.log 
stat $?

echo -n "Installing nodejs:"
yum install nodejs -y >> /tmp/${COMPONENT}.log 
stat $? 

echo -n "Adding $FUSER user:"
id ${FUSER} || useradd ${roboshop}   # Creates users only in case if the user account doen's exist
stat $? 

echo -n "Downloading $COMPONENT :"
curl -s -L -o /tmp/{COMPONENT}.zip "https://github.com/stans-robot-project/${COMPONENT}/archive/main.zip" >> /tmp/${COMPONENT}.log 
stat $? 

echo -n "Cleanup of Old $COMPONENT content:"
rm -rf /home/${FUSER}/${COMPONENT}  >> /tmp/${COMPONENT}.log 
stat $?

echo -n "Extracting $COMPONENT content: "
cd /home/${FUSER}/ >> /tmp/${COMPONENT}.log 
unzip -o  /tmp/{COMPONENT}.zip  >> /tmp/${COMPONENT}.log   &&   mv ${COMPONENT}-main ${COMPONENT} >> /tmp/${COMPONENT}.log 
stat $? 

echo -n "Changing the ownership to $FUSER:"
chown -R $FUSER:$FUSER $COMPONENT/
stat $?

echo -n "Installing $COMPONENT Dependencies:"
cd $COMPONENT && npm install &>> /tmp/${COMPONENT}.log 
stat $? 

echo -n "Configuring the Systemd file: "
sed -i e 's/MONGO_DNSNAME/mongodb.roboshop.internal' /home/${FUSER}/${CATALOGUE}/systemd.service 




# vim systemd.servce

# # mv /home/roboshop/catalogue/systemd.service /etc/systemd/system/catalogue.service
# # systemctl daemon-reload
# # systemctl start catalogue
# # systemctl enable catalogue
# # systemctl status catalogue -l

# NOTE: You should see the log saying `connected to MongoDB`, then only your catalogue
# will work and can fetch the items from MongoDB

# Ref Log:
# {"level":"info","time":1656660782066,"pid":12217,"hostname":"ip-172-31-13-123.ec2.internal","msg":"MongoDB connected","v":1}