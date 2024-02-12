resource "aws_instance" "web" {
 ami          = "ami-01bc990364452ab3e"
count = 1
 instance_type = "t2.micro"
 tags = {
   Name = "HelloWorld01"
 }
}
