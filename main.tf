provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "spaces_jenkins_prod_backup" {
    bucket = var.bucket_name
    
}
resource "aws_s3_bucket_versioning" "spaces_jenkins_prod_backup" {
    bucket = aws_s3_bucket.spaces_jenkins_prod_backup.bucket
    versioning_configuration {
      status = enabled
    }  
}
resource "server_side_encryption_configuration" "spaces_jenkins_prod_backup" {
    bucket = aws_s3_bucket.spaces_jenkins_prod_backup.bucket
    rule {
  apply_server_side_encryption_by_default {
            sse_algorithm = "aws:kms"
            //kms_master_key_id = var.kms_key_id
        }
    }
    
  
}