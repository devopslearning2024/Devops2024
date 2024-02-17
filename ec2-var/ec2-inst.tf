resource "aws_instance" "web" {
  ami           = var.ami
  count         = 2
  instance_type = var.instance_type
  tags = {
    Name = var.instance_name
  }
}
