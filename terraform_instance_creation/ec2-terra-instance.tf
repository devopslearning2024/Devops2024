resource "aws_instance" "Terraform" {
  ami           = var.ami
  instance_type = var.type
  tags = {
    Name = var.tags
  }

}