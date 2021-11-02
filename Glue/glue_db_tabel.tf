resource "aws_glue_catalog_table" "aws_glue_catalog_table" {
  name          = var.aws_glue_catalog_table
  database_name = aws_glue_catalog_database.aws_glue_catalog_database.name

  table_type = var.table_type

  parameters = {
    EXTERNAL              = "TRUE"
    "parquet.compression" = "SNAPPY"
  }

  storage_descriptor {
    location      = var.s3_location   #input location
    input_format  = var.input_format
    output_format = var.output_format

    ser_de_info {
      name                  = "my-stream"
      serialization_library = "org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveSerDe"

      parameters = {
        "serialization.format" = 1
      }
    }

    columns {
      name = "my_string"
      type = "string"
    }

    columns {
      name = "my_double"
      type = "double"
    }

    columns {
      name    = "my_date"
      type    = "date"
      comment = ""
    }

    columns {
      name    = "my_bigint"
      type    = "bigint"
      comment = ""
    }

    columns {
      name    = "my_struct"
      type    = "struct<my_nested_string:string>"
      comment = ""
    }
  }
}