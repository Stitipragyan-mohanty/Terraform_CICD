

resource "aws_instance" "dev" {
    ami = "ami-0c614dee691cbbf37"
    instance_type = "t2.micro"
    tags = {
      Name = "dev1234"
    }
}
