#!/bin/bash 

# AMI_ID="ami-00ff427d936335825"

# If1 $ is empty or $1 is not supplied, then I want to mark it as failure.
if [ -z  "$1" ] ; then 
    echo -e "\e[31m Machine Name Is Missing \e[0m"
    exit 1
fi 

COMPONENT=$1

AMI_ID=$(aws ec2 describe-images  --filters "Name=name,Values=DevOps-LabImage-CentOS7"  | jq '.Images[].ImageId' | sed -e 's/"//g')
SGID="sg-000671b0e1fb3d069"
echo "The AMI which we are using is $AMI_ID"

aws ec2 run-instances --image-id ${AMI_ID} --instance-type t3.micro  --security-group-ids ${SGID}  --tag-specifications "ResourceType=instance,Tags=[{Key=Name,Value=${COMPONENT}}]" --instance-market-options "MarketType=spot, SpotOptions={SpotInstanceType=persistent,InstanceInterruptionBehavior=stop}"| jq 

echo  "Spot Instance $COMPONENT is ready"
echo "Creating Route53 Record . . . ."

sed -e 's/PRIVATEIP/'
aws route53 change-resource-record-sets --hosted-zone-id Z04602961I29SHWLCRCU3 --change-batch file://r53.json | jq 