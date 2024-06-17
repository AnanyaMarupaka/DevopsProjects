#!/bin/bash

#########################
#Author: Ananya
#Date: 16 June 24
#
#Version: V1
#
# This Script will report the AWS resource usage
#########################



# AWS S3
# AWS EC2
# AWS Lambda
# AWS IAM Users

set -x

# Listing all s3 buckets
aws s3 ls >> s3Bucket

# List EC2 Instance
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

# List Lambda Functions
aws lambda list-functions >> resourceTracker

# List IAM Users
aws iam list-users
                                                                     31,1          Bot
