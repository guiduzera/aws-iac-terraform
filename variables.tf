variable "terraform_state_bucket" {
  description = "The name of the S3 bucket to store the Terraform state file"
  type        = string
  default     = "guiduzera-terraform-state-bucket"
}