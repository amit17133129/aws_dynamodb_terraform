resource "aws_dynamodb_table" "basic-dynamodb-table" {
  name           = var.dynamo_name
  billing_mode   = var.billing_mode
  read_capacity  = 20
  write_capacity = 20
  hash_key       = "UserId"
  range_key      = "GameTitle"

  attribute {
    name = "UserId"
    type = "S"
  }

  attribute {
    name = "GameTitle"
    type = "S"
  }

  attribute {
    name = "TopScore"
    type = "N"
  }

  ttl {
    attribute_name = "TimeToExist"
    enabled        = false
  }

  global_secondary_index {
    name               = var.index_name_secondary_index
    hash_key           = var.hash_key
    range_key          = "TopScore"
    write_capacity     = 10
    read_capacity      = 10
    projection_type    = var.projection_type
    non_key_attributes = ["UserId"]
  }

  tags = {
    Name        = "${var.dynamodb_table_tag}-1"
    Environment = var.environment_tag
  }
}