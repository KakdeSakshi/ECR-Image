resource "aws_s3_bucket" "lambda_bucket" {
  bucket = "sakshi-lambda-artifacts-bucket"
  #object_ownership = "BucketOwnerEnforced"
}

resource "aws_s3_bucket_public_access_block" "lambda_bucket_access" {
  bucket                  = aws_s3_bucket.lambda_bucket.id
  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}
