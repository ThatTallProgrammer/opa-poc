terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
  backend "s3" {
    bucket       = "opa-gatekeeper-poc"
    key          = "terraform.tfstate" # Path inside the bucket
    region       = "us-east-1"
    encrypt      = true
    use_lockfile = true # Enables native S3 locking (.tflock)
  }
}

provider "aws" {
  region = "us-east-1"
}