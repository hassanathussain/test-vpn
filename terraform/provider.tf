terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "s3" {
    bucket = "my-terraform-state-bucket-76474"
    key    = "networking/terraform.tfstate"
    region = "us-east-2"
    encrypt = true
  }
}

provider "aws" {
  region = "us-east-2"

  default_tags {
    tags = {
      Owner       = var.tags["Owner"]
      Group       = var.tags["Group"]
      Environment = var.tags["Environment"]
      Project     = "${var.tags["Owner"]}_${var.tags["Group"]}_${var.tags["Environment"]}"
    }
  }
}