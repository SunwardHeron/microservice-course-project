terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.94.1"
    }
  }
}

provider "aws" {
  # Configuration options
  region = var.region
  default_tags {
    tags = "jforce"
  }
}

variable "region" {
  description = "aws region"
  default     = "us-east-2"
}