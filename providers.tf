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

provider "random" {
  # Configuration options
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}