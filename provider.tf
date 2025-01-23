terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.84.0"
    }
  }
 backend "s3" {
    bucket = "terraform-state-bucket-357225030460"
    key    = "dev/terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "terraform-lock"
  }
}

provider "aws" {
  region = "us-east-1"
  default_tags {
    tags = {
      Name : "navigator-ec2-instance"
      Environment  = "Development"
      CostCenter   = "238482"
      BackupStatus = false
    }
  }
}


