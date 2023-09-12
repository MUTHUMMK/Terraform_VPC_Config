#!/bin/bash

#Create  instance infrastructure 

terraform init && terraform apply --auto-approve

sleep 5

# to get public IP and store the variable 
a=$(aws ec2 describe-instances --region ap-south-1 --filters "Name=tag:Name,Values=PUBLIC_NODE" --query "Reservations[].Instances[].PublicIpAddress" --output text )

echo "$a"

echo "Terraform Exceute Successfully"