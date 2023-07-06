#!/bin/bash

#####################################
# Admin : Mari Selvan
# Date : 06/07/2023
#
# Version : #1
####################################
echo This is the report about AWS Service Usages

# AWS EC2
# AWS S3
# AWS Lambda
# AWS IAM Users

# EC2 Instances Lists
echo List Of EC2 Instances:
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

# S3 Bucket Lists
echo List Of S3 Buckets:
aws s3 ls

# Lambda Functions
echo List Of Lambda:
aws lambda list-functions

# IAM Users List
echo List Of IAM Users:
aws iam list-users | jq '.Users[].UserName,.Users[].UserId'