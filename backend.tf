terraform {
  backend "s3" {
    bucket = "terraformbackend1"
#     key    = "path/to/my/key"
    region = "ap-south-1"
  }
}
