# comment
terraform {
  cloud {
    organization = "icns"

    workspaces {
      name = "terra-house"
    }
  }
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.17.0"
    }
    random = {
      source = "hashicorp/random"
      version = "3.5.1"
    }
  }
}

provider "random" {
  # Configuration options
}

provider "aws" {
  # Configuration options
  region = "ca-central-1"
}

resource "random_string" "bucket_name_id" {
  length           = 24
  special          = false
  lower            = true
  upper            = false
}

resource "aws_s3_bucket" "example" {
  bucket = random_string.bucket_name_id.id
}

output "random_bucket_name_id"{
    value = random_string.bucket_name_id.id
}