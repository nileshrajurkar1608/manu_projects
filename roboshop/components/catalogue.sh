#!/bin/bash


source components/common.sh

COMPONENT=catalogue

echo -n "Configure Yum Remos for nodejs:"
curl -sL https://rpm.nodesource.com/setup_lts.x | bash
stat $?

echo -n "Installing nodejs:"




# # curl -sL https://rpm.nodesource.com/setup_lts.x | bash
# # yum install nodejs -y


# # useradd roboshop

# $ curl -s -L -o /tmp/catalogue.zip "https://github.com/stans-robot-project/catalogue/archive/main.zip"
# $ cd /home/roboshop
# $ unzip /tmp/catalogue.zip
# $ mv catalogue-main catalogue
# $ cd /home/roboshop/catalogue
# $ npm install


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