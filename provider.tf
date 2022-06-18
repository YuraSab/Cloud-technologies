terraform {
  backend "s3" {
    bucket = "845313473493-terraform-tfstate-20"
    key    = "dev/terraform.tfstate"
    region = "eu-central-1"
    dynamodb_table = "terraform-tfstate-lock-20"
  }
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = ">= 4.6.0"
    }
  }
}

provider "aws" {
  region = "eu-central-1"
}