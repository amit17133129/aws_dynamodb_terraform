provider "aws" {
   region = "ap-south-1"
}


resource "aws_glue_catalog_database" "aws_glue_catalog_database" {
  name = "amit-db-11"
}
