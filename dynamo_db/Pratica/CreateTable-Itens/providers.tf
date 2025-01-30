terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.0.1"
    }
  }
  backend "s3" {
    bucket = "terraform-backend-aprendizado"
    key    = "estudos-dynamodb-createtable-itens"
    region = "us-east-1"
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}