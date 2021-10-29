variable "region" {
  type        = string
  default     = ""
  description = "enter region name"
}



variable "dynamo_name" {
  type        = string
  default     = ""
  description = "enter dynamo db tabel name"
}

variable "billing_mode" {
  type        = string
  default     = ""
  description = "enter billing_mode"
}
variable "dynamodb_table_tag" {
  type        = string
  default     = ""
  description = "enter dynamodb_table_tag"
}


variable "projection_type" {
  type        = string
  default     = ""
  description = "enter projection_type"
}

variable "environment_tag" {
  type        = string
  default     = ""
  description = "enter projection_type"
}

variable "hash_key" {
  type        = string
  default     = ""
  description = "enter hash_key"
}

variable "index_name_secondary_index" {
  type        = string
  default     = ""
  description = "enter hash_key"
}

