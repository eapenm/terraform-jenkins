provider "aws" {
  region = var.region
}
terraform {
  backend "s3" {
    bucket = "terraform-eapenmani-kottayam"
    key    = "terraform-jenkins.tfstate"
    region = "ap-southeast-2"
  }
}


