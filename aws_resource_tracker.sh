#!/bin/bash

###############
# Author: Sarthak
# Date: 5th-June
#
# Version: v1
#
# This script will report the AWS resource usage
################

set -x

# AWS S3
# AWS EC2
# AWS Lambda
# AWS IAM Users

# list s3 buckets
echo "print list of s3 buckets"
aws s3 ls

# list EC2 Instances
echo "print of ec2 instances"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

# list lambda
echo "print list of lambda functions"
aws lambda list-functions

# list IAM users
echo "print list of IAM users"
aws iam list-users

