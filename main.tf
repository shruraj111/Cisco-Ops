terraform {
 required_providers {
   aws = {
     source  = "hashicorp/aws"     
   }
}
resource "aws_s3_bucket" "example" {
  bucket = "my-github-test-bucket"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
