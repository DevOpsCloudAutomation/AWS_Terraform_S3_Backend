
# AWS Terraform Backend with S3 Bucket

### This repository provides a Terraform configuration to set up an AWS backend using an S3 bucket for storing Terraform state files. By using an S3 bucket, we can ensure that Terraform state is stored in a reliable and scalable way, while also enabling state locking via DynamoDB to prevent concurrent modification.

## Create and Setup S3 Bucket for Storing Terraform State File

## Create and Setup DynamoDB Table for Terraform State File Locking

## Configure S3 Bucket and DynamoDB Table Details in terraform.tf File
```sh
backend "s3" {

    bucket = "S3 Bucket Name"
    region = "AWS Region in which S3 Bucket is Provisioned"
    key    = "Path to Terraform State File in the S3 Bucket"

    dynamodb_table = "DynamoDB Table"

}
```

## Conclusion
### This configuration sets up a remote backend with S3 and optional state locking via DynamoDB, providing a robust, team-friendly way to manage Terraform State File.
