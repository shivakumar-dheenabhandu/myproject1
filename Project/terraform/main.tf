provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "devops_demo" {
  ami           = var.ami
  instance_type = var.instance_type

  tags = {
    Name = "DevOps-Demo"
  }
}