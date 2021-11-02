region = "ap-south-1"
aws_glue_catalog_database = "go_gidital_database"
aws_glue_catalog_table = "go_digital_db_tabel"
table_type = "EXTERNAL_TABLE"
s3_location= "s3://godigitaldiabetes/glue_output/"
input_format = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetInputFormat"
output_format = "org.apache.hadoop.hive.ql.io.parquet.MapredParquetOutputFormat"