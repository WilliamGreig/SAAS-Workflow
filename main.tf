 terraform {
  
  backend "s3" {
    bucket = "saas-workflow-backend"
    key    = "terraform-backend"
    region = "us-east-1"
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

provider "aws" {
  region  = var.aws-region
}