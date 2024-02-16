# Create a VPC
resource "aws_vpc" "Myvpc" {
 cidr_block = "10.0.0.0/16"
 
 tags = {
   Name = "Project VPC"
 }
}
# Create public subnet
resource "aws_subnet" "Public_Subnet" {
  vpc_id = aws_vpc.Myvpc.id
  cidr_block = "10.0.1.0/24"
tags = {
   Name = "PublicSubnet"
 }
}
# Create Private Subnet
 resource "aws_subnet" "PrivateSubnet" {
    vpc_id = aws_vpc.Myvpc.id
    cidr_block = "10.0.2.0/24"
tags = {
   Name = "PrivateSubnet"
 }
  }

#Create IGW
 resource "aws_internet_gateway" "igw" {
    vpc_id = aws_vpc.Myvpc.id
    tags = {
   Name = "MyIGW"
 }
  }

#Create route tables for Public Subnet
 resource  "aws_route_table" "PublicRT" {
	vpc_id =aws_vpc.Myvpc.id
	route {    
	  cidr_block = "0.0.0.0/0"
   	  gateway_id = aws_internet_gateway.igw.id
	}
tags = {
   Name = "Route Table for Public Subnet"
 }
  }

#Create royte table association for public subnet
  resource "aws_route_table_association" "PublicRT_Association"{
    subnet_id = aws_subnet.Public_Subnet.id
    route_table_id = aws_route_table.PublicRT.id
  }
