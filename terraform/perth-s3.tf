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
    yor_trace = "522dc9a4-AAAA-BBBB-CCCC-7b94b4c5d3bf"
  })
}

