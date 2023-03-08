provider "aws" {
  region = var.region
}
resource "aws_s3_bucket" "b" {
  bucket = "terraform-eapenmani-kottayam"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "DevJKT"
  }
}

terraform {
  backend "s3" {
    bucket = "terraform-eapenmani-kottayam"
    key    = "terraform-jenkins.tfstate"
    region = "ap-southeast-2"
  }
}


