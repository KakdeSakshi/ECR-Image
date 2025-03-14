provider "aws" {
  region = "us-east-1" # Change as needed
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.0"
    }
  }
}
