terraform {
  backend "s3" {
    bucket = "gov-terraform"
    key    = "tfstate"
    region = "ap-southeast-2"
  }
}
