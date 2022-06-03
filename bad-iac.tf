resource "aws_s3_bucket" "data" {
  # bucket is public
  # bucket is not encrypted
  # bucket does not have access logs
  # bucket does not have versioning
  bucket        = "bad-s3-bucket-data"
  acl           = "public"
  force_destroy = true
}
