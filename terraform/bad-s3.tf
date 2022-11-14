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
    }, {
    yor_trace = "28cabed6-3d82-40c6-b2be-7323c0a7c8d5"
  })
}


resource "aws_s3_bucket" "data_log_bucket" {
  bucket = "data-log-bucket"
}

resource "aws_s3_bucket_logging" "data" {
  bucket = aws_s3_bucket.data.id

  target_bucket = aws_s3_bucket.data_log_bucket.id
  target_prefix = "log/"
}
