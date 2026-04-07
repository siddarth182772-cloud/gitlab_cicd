provider "aws" {
  region = "us-west-2"
}

terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = ">4.0" #morthan 4.0 version
    }
  }
}
resource "aws_vpc" "name" {
    cidr_block = "10.0.0.0/16"
    tags = {
      Name = "shubham_vpc"
    }
  
}
resource "aws_subnet" "name2" {
    vpc_id = aws_vpc.name.id
    cidr_block = "10.0.0.0/24"
    tags = {
      Name = "sid-subnet"
    }
  
}
