/*
# Exemplo criação bucket S3
resource "aws_s3_bucket" "terraform3" {
  bucket = "curso-terraform-robson2"
  acl = "private"

  tags = {
    Name = "curso-terraform-robson2"
  }
}
*/