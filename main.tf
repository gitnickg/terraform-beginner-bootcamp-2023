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
      version = "5.17"
    }
 }
}
provider "aws" {
  # Configuration options
  region = "us-east-1"
}

module "terrahouse_aws" {
  source = "./modules/terrahouse_aws"
  user_uuid = var.user_uuid
  bucket_name = var.bucket_name
}
