#!/bin/bash 

ID=$(id -u)

echo "Executing httpd installtion"
yum install httpd -y  