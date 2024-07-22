variable "bucket_domain_name" {
  description = "The domain name of the S3 bucket"
  type        = string
}

variable "origin_id" {
  description = "The id of the S3 bucket"
  type        = string
}

variable "cdn_price_class" {
  description = "The price class of the CloudFront distribution"
  type        = string
  default = "PriceClass_200"
}

variable "cdn_tags" {
  description = "The tags of the CloudFront distribution"
  type        = map(string)
  default = {}
}