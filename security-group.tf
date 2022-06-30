# Exemplo criação security group
resource "aws_security_group" "acesso-ssh" {
  name        = "acesso-ssh"
  description = "acesso-ssh"

  ingress {
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["177.67.159.155/32"]
  }

  tags = {
    Name = "ssh"
  }
}