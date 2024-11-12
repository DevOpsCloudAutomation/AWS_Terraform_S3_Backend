
# AWS Terraform Backend with S3 Bucket

This repository provides a Terraform configuration to set up an AWS backend using an S3 bucket for storing Terraform state files. By using an S3 bucket, we can ensure that Terraform state is stored in a reliable and scalable way, while also enabling state locking via DynamoDB to prevent concurrent modification.

## Setup S3 Bucket as Terraform State Backend
### Create S3 Bucket and DynamoDB Table in Amazon Web Services.
- S3 Bucket to Store Terraform State File.
- DynamoDB Table for Terraform State File Locking.

## Configure S3 Bucket and DynamoDB Table Details in terraform.tf File.
```sh
backend "s3" {
    bucket = "S3 Bucket Name"
    region = "AWS Region in which S3 Bucket is Provisioned"
    key    = "Path to Terraform State File in the S3 Bucket"

    dynamodb_table = "DynamoDB Table"

    profile = "terraform"
}
```