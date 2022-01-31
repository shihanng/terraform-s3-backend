terraform {
  required_version = "~> 1.1.4"
}

provider "aws" {
  region = "ap-northeast-1"
}

resource "aws_s3_bucket" "backend" {
  bucket = "terraform-s3-backend-pmh86b2v"
  acl    = "private"
}

resource "aws_s3_bucket" "main" {
  bucket_prefix = "my-project-"
  acl           = "private"
}
