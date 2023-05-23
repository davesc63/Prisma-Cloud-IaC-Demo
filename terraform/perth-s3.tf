resource "aws_s3_bucket" "perthdemo" {
  # backup commit
  bucket = "${local.resource_prefix.value}-perth-demo"
  tags = merge({
    Name        = "${local.resource_prefix.value}-perth-demo"
    Environment = local.resource_prefix.value
    }, {
    git_org  = "davesc63"
    git_repo = "Prisma-Cloud-IaC-Demo"
    customer = "Perth-IaC-Demo"
    }, {
    yor_trace = ""
  })
}

resource "aws_s3_bucket_public_access_block" "perthdemo" {
  bucket = aws_s3_bucket.perthdemo.id

  block_public_acls       = false
  block_public_policy     = false
  ignore_public_acls      = false
  restrict_public_buckets = false
}
