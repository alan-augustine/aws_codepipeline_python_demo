terraform {
  required_version = "~> 1.2.8"
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 4.28.0"
     }
  }

  # backend configs defined in dev.conf
  backend "s3" {}
}

provider "aws" {
    region = var.aws_region
    profile = "default"
}