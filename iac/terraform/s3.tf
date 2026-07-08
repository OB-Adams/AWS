resource "aws_s3_bucket" "ob-bucket-001" {
  tags = {
    Name        = "bucket 001"
    Environment = "Dev"
  }
} 
