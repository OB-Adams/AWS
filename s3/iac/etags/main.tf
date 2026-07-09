terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = ">= 6.42"
    }
  }
}

provider "aws" {
  # Configuration options
}

resource "aws_s3_bucket" "default" {
}

resource "aws_s3_object" "object" {
  bucket = aws_s3_bucket.default.id
  key    = "ob001.txt"
  source = "ob001.txt"

  etag = filemd5("ob001.txt")
}
