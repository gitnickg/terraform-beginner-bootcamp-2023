#terraform {
# cloud {
#     organization = "icns"

#     workspaces {
#       name = "terra-house"
#     }
#   }

#   required_providers {
#     aws = {
#       source = "hashicorp/aws"
#       version = "5.17"
#     }
#  }
# }
# provider "aws" {
#   # Configuration options
#   region = "us-east-1"
# }

# module "terrahouse_aws" {
#   source = "./modules/terrahouse_aws"
#   user_uuid = var.user_uuid
#   bucket_name = var.bucket_name
#   index_html_filepath = "${path.root}${var.index_html_filepath}"
#   error_html_filepath = "${path.root}${var.error_html_filepath}"
#   content_version = var.content_version
#   assets_path = var.assets_path
# }

terraform {
  required_providers {
    terratowns = {
      source = "local.providers/local/terratowns"
      version = "1.0.0"
    }
  }
}

provider "terratowns" {
  endpoint = "http://localhost:4567/api"
  user_uuid="e328f4ab-b99f-421c-84c9-4ccea042c7d1" 
  token="9b49b3fb-b8e9-483c-b703-97ba88eef8e0"
}

resource "terratowns_home" "home" {
  name = "AI Generated Graffiti"
  description = <<DESCRIPTION
Using various AI image generators, these were my favorite AI generated graffiti pictures!
DESCRIPTION
  #domain_name = module.terrahouse_aws.cloudfront_url
  domain_name = "3fdq3gz.cloudfront.net"
  town = "missingo"
  content_version = 1
}
