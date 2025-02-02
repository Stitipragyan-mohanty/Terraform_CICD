resource "aws_subnet" "pubsub" {
  vpc_id                  = "vpc-0e5f5e7edfff2c818"
  cidr_block              = "10.0.168.0/21"
  map_public_ip_on_launch = true
  availability_zone       = "us-west-1b"

  tags = {
    Name = "Public-Subnet"
  }
}

resource "aws_instance" "dev" {
    ami = "ami-0c614dee691cbbf37"
    instance_type = "t2.micro"
    subnet_id = aws_subnet.pubsub.id
    tags = {
      Name = "dev1234"
    }
}
