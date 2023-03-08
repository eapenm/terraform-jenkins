provider "aws" {
  region = "${var.region}"
}

terraform {
  backend "s3" {
    bucket = "terraform-eapenmani-kottayam-s3"
    key    = "terraform-jenkins.tfstate"
    region = "us-east-1"
  }
}


