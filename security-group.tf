# Exemplo criação security group
resource "aws_security_group" "acesso-ssh" {
  name        = "acesso-ssh-ohio"
  description = "acesso-ssh-ohio"

  ingress {
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["177.67.159.140/32"]
  }

  tags = {
    Name = "acesso-ssh"
  }
}

# Exemplo criação security group
resource "aws_security_group" "acesso-ssh-us-east-1" {
  provider = aws.us-east-1
  name        = "acesso-ssh-nv"
  description = "acesso-ssh-nv"

  ingress {
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["177.67.159.140/32"]
  }

  tags = {
    Name = "acesso-ssh"
  }
}