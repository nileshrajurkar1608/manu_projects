#!/bin/bash 

ID=$(id -u)
if [ $ID -eq 0 ]
    echo "Executing httpd installtion"
    yum install httpd -y  

else 
    echo -e "Try executing the script with sudo or a root user \e[0m "

fi 