variable "region" {
  type        = string
  default     = "ap-south-1"
  description = "Region in which infrastructure will be Provisioned"
}

variable "ami" {
  type        = string
  default     = "ami-022ce6f32988af5fa"
  description = "AMI to be used to provision EC2 Server"
}

variable "instance_type" {
  type        = string
  default     = "t2.medium"
  description = "Instance Type to be used to provision EC2 Server"
}

variable "availability_zone" {
  type        = string
  default     = "ap-south-1a"
  description = "Availability Zone in which EC2 Server should be Provisioned"
}

variable "key_name" {
  type        = string
  default     = "DevOpsCloudAutomation"
  description = "Key name to be used to connect to EC2 Server after Provisioned"
}

variable "tags" {
  type        = string
  default     = "Cloud_Server"
  description = "Name of the EC2 Server"
}