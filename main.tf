provider "aws" {
   region = "ap-south-1"
}


resource "aws_glue_catalog_database" "aws_glue_catalog_database" {
  name = var.aws_glue_catalog_database
}
