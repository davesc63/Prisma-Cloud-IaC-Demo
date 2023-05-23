terraform {
  backend "s3" {
    bucket = "gov-terraform"
    key    = "tfstate-prisma-iac-demo"
    region = "ap-southeast-2"
  }
}



terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.67.0"
    }
  }
}

provider "aws" {
  # Configuration options
  region = "ap-southeast-2"
}

