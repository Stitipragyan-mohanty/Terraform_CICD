resource "aws_subnet" "pubsub" {
  vpc_id                  = "vpc-071db49eccb9d4618"
  cidr_block              = "172.31.128.0/17"
  map_public_ip_on_launch = true
  availability_zone       = "us-east-1a"

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
