
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.32.0"
    }
  }
}
provider "aws" {
  region = "us-east-2"
  access_key = "AKIATT7UC4NUWDPSWXVM"
  secret_key = "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"
}
