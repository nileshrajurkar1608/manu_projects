#!/bin/bash 

# AMI_ID="ami-00ff427d936335825"
AMI_ID=$(aws ec2 describe-images  --filters "Name=name,Values=DevOps-LabImage-CentOS7"  | jq '.Images[].ImageId' | sed -e 's/"//g')
SGID=""
echo "The AMI which we are using is $AMI_ID"


aws ec2 run-instances --image-id ${AMI_ID} --instance-type t3.micro --key-name MyKeyPair --security-group-ids sg-903004f8
