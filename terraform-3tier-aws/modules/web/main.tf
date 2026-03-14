 resource "aws_instance" "web" {
  ami           = "ami-0f58b397bc5c1f2e8"
  instance_type = "t2.micro"
  subnet_id     = element(var.public_subnets, 0)

  tags = {
    Name = "web-server"
  }
}
