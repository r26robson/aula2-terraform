# Exemplo de criação de instancia EC2 em outra região
resource "aws_instance" "terraform5" {
  provider = aws.us-east-1
  ami = "ami-0cff7528ff583bf9a"
  instance_type = "t2.micro"
  key_name = "aws-terraform-nv"
  tags = {
    Name = "terraform5"
  }
  vpc_security_group_ids = ["${aws_security_group.acesso-ssh-us-east-1.id}"]
  depends_on = [
    aws_dynamodb_table.dynamodb-qas-nv
  ]
}