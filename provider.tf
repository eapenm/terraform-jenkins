terraform {
  backend "s3" {
    bucket         = "terraform-eapen-1234"
    key            = "terraform-jenkins.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "devops-tf-state-lock"
  }
}

provider "aws" {
  region = var.region
}
