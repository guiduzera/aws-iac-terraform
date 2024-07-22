variable "s3_bucket_name" {
  description = "The name of the S3 bucket"
  type        = string
}

variable "s3_tags" {
  description = "The tags of the S3 bucket"
  type        = map(string)
  default = {}
}