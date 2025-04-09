terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.94.1"
    }
  }

  backend "s3" {
    bucket  = "course-project-terraform-state"
    encrypt = true
    key     = "terraform/microservice-course-project/terraform.tfstate"
    region  = "us-east-2"
  }
}

provider "aws" {
  # Configuration options
  region = var.region
  default_tags {
    tags = {
      owner = "jforce"
    }
  }
}

variable "region" {
  description = "aws region"
  default     = "us-east-2"
}