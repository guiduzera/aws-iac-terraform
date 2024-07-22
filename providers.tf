terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.36.0"
    }
  }

  backend "s3" {
    bucket  = "guiduzera-terraform-state-bucket"
    region  = "us-east-1"
    key     = "terraform.tfstate"
    encrypt = true
  }
}

provider "aws" {
  profile = "guiduzera"
}

resource "aws_s3_bucket" "terraform_state" {
  bucket = var.terraform_state_bucket

  lifecycle {
    prevent_destroy = true
  }
}

resource "aws_s3_bucket_versioning" "terraform_state" {
  bucket = aws_s3_bucket.terraform_state.bucket

  versioning_configuration {
    status = "Enabled"
  }

  depends_on = [aws_s3_bucket.terraform_state]
}