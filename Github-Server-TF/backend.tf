terraform {
  backend "s3" {
    bucket         = "zomatobucket1812"
    region         = "ap-southeast-2"
    key            = "ZomatoApp-Clone/Github-Server-TF/terraform.tfstate"
    dynamodb_table = "Lock-Files"
    encrypt        = true
  }
  required_version = ">=0.13.0"
  required_providers {
    aws = {
      version = ">= 2.7.0"
      source  = "hashicorp/aws"
    }
  }
}
