terraform {
  backend "s3" {
    bucket = "october05"
    key    = "new1/terraform.tfstate"
    region = "us-east-1"
  }
}