#!/bin/bash

# Deploy S3 bucket CloudFormation stack
aws cloudformation create-stack \
  --stack-name sample-s3-bucket-stack \
  --template-body file://sample_s3_bucket.yaml \
  --tags Key=Environment,Value=dev Key=Project,Value=aws-devops \
  --region us-east-1

# Wait for stack creation to complete
aws cloudformation wait stack-create-complete \
  --stack-name sample-s3-bucket-stack \
  --region us-east-1

echo "Stack deployment completed"