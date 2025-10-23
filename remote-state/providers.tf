terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

terraform {
  backend "s3" {
    bucket = "82s-terra-remote-state"
    key    = "expanse-backend-infra" # have to maintain unique keys with in the bucket, same key should not use in other repos
    region = "us-east-1"
    dynamodb_table = "82s-state-locking"
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}
