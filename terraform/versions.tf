terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.46.0"
    }
  }
}

provider "aws" {
  # Configuration options
  region = var.region
  default_tags {
    tags = {
      owner = "sammakaorz"
    }
  }
}

variable "region" {

  description = "aws_region"
  default     = "us-east-1"

}