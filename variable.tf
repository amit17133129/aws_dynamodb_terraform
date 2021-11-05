variable "region" {
  type        = string
  default     = ""
  description = "enter region"
}


variable "aws_glue_catalog_database" {
  type        = string
  default     = ""
  description = "enter aws_glue_catalog_database"
}

variable "aws_glue_catalog_table" {
  type        = string
  default     = ""
  description = "enter aws_glue_catalog_table"
}


variable "table_type" {
  type        = string
  default     = ""
  description = "enter table_type"
}

variable "input_format" {
  type        = string
  default     = ""
  description = "enter input_format"
}

variable "output_format" {
  type        = string
  default     = ""
  description = "enter output_format"
}

variable "s3_location" {
  type        = string
  default     = ""
  description = "enter s3_location"
}
