#!/bin/sh
#this is for example variable, you can change it on your own.
export AWS_ACCESS_KEY_ID=$(aws configure get aws_access_key_id)
export AWS_SECRET_ACCESS_KEY=$(aws configure get aws_secret_access_key)
export NAME=k8s.rizkyramadhan.info
export KOPS_STATE_STORE=s3://k8s.rizkyramadhan.info

aws iam create-group --group-name kops
aws iam attach-group-policy --policy-arn arn:aws:iam::aws:policy/AmazonEC2FullAccess --group-name kops
aws iam attach-group-policy --policy-arn arn:aws:iam::aws:policy/AmazonRoute53FullAccess --group-name kops
aws iam attach-group-policy --policy-arn arn:aws:iam::aws:policy/AmazonS3FullAccess --group-name kops
aws iam attach-group-policy --policy-arn arn:aws:iam::aws:policy/IAMFullAccess --group-name kops
aws iam attach-group-policy --policy-arn arn:aws:iam::aws:policy/AmazonVPCFullAccess --group-name kops
aws iam create-user --user-name kops
aws iam add-user-to-group --user-name kops --group-name kops
aws iam create-access-key --user-name kops

aws s3api create-bucket \
    --bucket k8s.rizkyramadhan.info \
    --region us-east-1

aws s3api put-bucket-versioning \
    --bucket k8s.rizkyramadhan.info \
    --versioning-configuration Status=Enabled

aws ec2 describe-availability-zones --region us-west-2

kops create cluster \
    --zones us-west-2a \
    --node-count 3 \
    ${NAME}

kops update cluster ${NAME} --yes

kops validate cluster