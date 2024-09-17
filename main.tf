provider "aws" {
  region = us-east-1
}

resource "aws_s3_bucket" "example" {
  bucket = "my-github-test-bucket"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
