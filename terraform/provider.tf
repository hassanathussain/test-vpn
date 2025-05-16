terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  # Optional backend for remote state (commented out)
  # backend "s3" {
  #   bucket         = "verquin-terraform-states"
  #   key            = "networking/terraform.tfstate"
  #   region         = "us-east-2"
  #   dynamodb_table = "dynamodb-state-locking"
  # }
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