resource "aws_vpc" "main" {
  cidr_block       = var.vpc_cidr
  instance_tenancy = var.tenancy
  tags = {
    "Name" = "${terraform.workspace}-main-vpc"
  }

}