resource "aws_s3_bucket" "name" {
  bucket = "sree2024s3bucket"

  tags = {
    Name = "sree2024s3bucket"
  }
}
