resource "aws_s3_bucket" "demobucket" {
  bucket = "terraformdemobucket"
  acl = "private"
}

resource "aws_s3_bucket_public_access_block" "publicaccess" {
  bucket = aws_s3_bucket.demobucket.id
  block_public_acls = false
  block_public_policy = false
}
