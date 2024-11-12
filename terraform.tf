terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.75.1"
    }
  }

  backend "s3" {
    bucket = "devopscloudautomation"
    region = "ap-south-1"
    key    = "production/terraform.tfstate"

    dynamodb_table = "terraform-state-locking"

    profile = "terraform"
  }
}