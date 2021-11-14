terraform {
  backend "s3" {
    bucket = "terraformbackend1"
    key    = "dynamodb/"
    region = "ap-south-1"
  }
}
