terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.31.0" # AWS provider version, not terraform version
    }
  }

  backend "s3" {
    bucket = "kalidindi-bucket-prod"
    key    = "k8-eksctl"
    region = "us-east-1"
    dynamodb_table = "kalidindi-locking-prod"
  }
}

provider "aws" {
  region = "us-east-1"
}