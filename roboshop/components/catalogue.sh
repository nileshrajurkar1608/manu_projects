#!/bin/bash


source components/common.sh

COMPONENT=catalogue


# curl -sL https://rpm.nodesource.com/setup_lts.x | bash
# yum install nodejs -y


# useradd roboshop

$ curl -s -L -o /tmp/catalogue.zip "https://github.com/stans-robot-project/catalogue/archive/main.zip"
$ cd /home/roboshop
$ unzip /tmp/catalogue.zip
$ mv catalogue-main catalogue
$ cd /home/roboshop/catalogue
$ npm install


