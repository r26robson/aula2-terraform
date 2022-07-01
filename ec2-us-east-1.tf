# Exemplo de criação de instancia EC2 em outra região noth virginia
resource "aws_instance" "terraform5" {
  provider = aws.us-east-1
  ami = var.amis["amazon-linux2-us-east-1"]
  instance_type = "t2.micro"
  key_name = var.key_name["key-us-east-1"]
  tags = {
    Name = "terraform5"
  }
  vpc_security_group_ids = ["${aws_security_group.acesso-ssh-us-east-1.id}"]
  depends_on = [
    aws_dynamodb_table.dynamodb-qas-nv
  ]
}