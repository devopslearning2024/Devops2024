resource "aws_instance" "Webserver2024" {
  ami           = var.ami
  instance_type = var.instance_type
  tags = {
    Name = var.tags
  }

}


