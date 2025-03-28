#!/bin/bash

#Variables
INSTANCE_TYPE="t2.micro"
AMI_ID="ami-0d6e4f7b6d4b6d4b6" #replace with the correct AMI ID 
KEY_NAME="MyKeyPair" #replace with the correct key pair name
SECURITY_GROUP_ID="sg-12345678" #replace with the correct security group ID
SUBNET_ID="subnet-12345678" #replace with the correct subnet ID
REGION="us-east-1" #replace with the correct region

#Launch the instance
aws ec2 run-instances \
    --image-id $AMI_ID \
    --instance-type $INSTANCE_TYPE \
    --key-name $KEY_NAME \
    --security-group-ids $SECURITY_GROUP_ID \
    --subnet-id $SUBNET_ID \
    --region $REGION

#Wait for the instance to be ready
INSTANCE_ID=$(aws ec2 describe-instances --filters "Name=tag:Name,Values=MyInstance" --query "Reservations[0].Instances[0].InstanceId" --output text)
aws ec2 wait instance-running --instance-ids $INSTANCE_ID