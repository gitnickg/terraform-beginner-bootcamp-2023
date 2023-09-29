# comment
terraform {
  cloud {
    organization = "icns"

    workspaces {
      name = "terra-house"
    }
  }
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

tags = {
  UserUuid = "var.user_uuid"
}
