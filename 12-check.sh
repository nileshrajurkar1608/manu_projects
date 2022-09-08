#!/bin/bash 

ID=$(id -u)
if [ $ID -eq 0 ]
    echo "Executing httpd installtion"
    yum install httpd -y  

else 
    echo -e ""

fi 