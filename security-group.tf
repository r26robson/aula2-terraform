# Exemplo criação security group
resource "aws_security_group" "acesso-ssh" {
  name        = "acesso-ssh-ohio"
  description = "acesso-ssh-ohio"
  
# Exemplo usando variaveis
  ingress {
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = var.cdris_acesso_remoto
  }

  tags = {
    Name = "acesso-ssh"
  }
}

# Exemplo criação security group para região da us-east-1
resource "aws_security_group" "acesso-ssh-us-east-1" {
  provider = aws.us-east-1
  name        = "acesso-ssh-nv"
  description = "acesso-ssh-nv"

# Exemplo com dois ingres diferentes especificando a origim do IP
  ingress {
    description = "Robson_Infra"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["177.67.159.140/32"]
  }

  ingress {
    description = "Fulano_Dev"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["177.68.159.140/32"]
  }

  tags = {
    Name = "acesso-ssh"
  }
}