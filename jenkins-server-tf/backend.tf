terraform {
  backend "s3" {
    bucket         = "simple-fullstack-app-tf-backend"
    region         = "ap-southeast-1"
    key            = "terraform.tfstate"
    dynamodb_table = "simple-app-terraform-state-lock"
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

