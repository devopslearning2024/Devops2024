resource "aws_subnet" "subnet1" {
  vpc_id     = aws_vpc.Myvpc.id
  cidr_block = "10.0.3.0/24"
  tags = {
    Name = "Subnet 1"
  }
}
