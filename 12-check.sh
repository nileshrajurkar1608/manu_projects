#!/bin/bash 

ID=$(id -u)
if [ $ID -e]
echo "Executing httpd installtion"
yum install httpd -y  