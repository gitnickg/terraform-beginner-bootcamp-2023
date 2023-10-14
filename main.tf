terraform {
 required_providers {
    terratowns = {
      source = "local.providers/local/terratowns"
      version = "1.0.0"
    }
  }

cloud {
    organization = "icns"

    workspaces {
      name = "terra-house"
    }
  }

#   required_providers {
#     aws = {
#       source = "hashicorp/aws"
#       version = "5.17"
#     }
#  }

}

provider "terratowns" {
  endpoint = "https://terratowns.cloud/api"
  user_uuid = var.user_uuid 
  token = var.terratowns_access_token
}

# provider "aws" {
#   # Configuration options
#   region = "us-east-1"
# }

module "terrahouse_aws" {
  source = "./modules/terrahouse_aws"
  user_uuid = var.user_uuid
  bucket_name = var.bucket_name
  index_html_filepath = "${path.root}${var.index_html_filepath}"
  error_html_filepath = "${path.root}${var.error_html_filepath}"
  content_version = var.content_version
  assets_path = var.assets_path
}



resource "terratowns_home" "home" {
  name = "Favorite Songs of 2023"
  description = <<DESCRIPTION
These are my favorite songs of 2023!
DESCRIPTION
  domain_name = module.terrahouse_aws.cloudfront_url
  #domain_name = "3fdq3gz566.cloudfront.net"
  town = "melomaniac-mansion"
  content_version = 1
}
