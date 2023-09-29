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
 }
}
provider "aws" {
  # Configuration options
  region = "us-east-1"
}
