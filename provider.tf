terraform {
  backend "s3" {
    bucket = "terraform-eapen-1234"
    key    = "terraform-jenkins.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  region = var.region
}
