resource "aws_s3_bucket" "data" {
  # bucket is public
  # bucket is not encrypted
  # bucket does not have access logs
  # bucket does not have versioning
  bucket        = "${local.resource_prefix.value}-data"
  acl           = "private"
  force_destroy = true
  tags = merge({
    Name        = "${local.resource_prefix.value}-data"
    Environment = local.resource_prefix.value
    }, {
    git_org  = "davesc63"
    git_repo = "Prisma-Cloud-IaC-Demo-update"
    customer = "Customer-Name-Here"
  })
}

resource "aws_s3_bucket_server_side_encryption_configuration" "data" {
  bucket = aws_s3_bucket.data.bucket

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm     = "AES256"
    }
  }
}
