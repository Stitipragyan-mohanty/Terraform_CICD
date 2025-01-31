provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "dev" {
    ami = "ami-00db8dadb36c9815e"
    instance_type = "t2.micro"
    tags = {
      Name = "dev123"
    }
}
