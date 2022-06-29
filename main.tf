provider "aws" {
  version = "~> 2.0"
  region = "us-east-2"
}

resource "aws_instance" "terraform" {
  count = "3"
  ami = "ami-081c75eaeac28ac34"
  instance_type = "t2.micro"
  key_name = "aws-terraform"
  tags = {
    Name = "terraform${count.index}"
  }
  vpc_security_group_ids = ["${aws_security_group.acesso-ssh.id}"]
  # Exemplo de referencia ao ID do security group refenciando por .id 
}

resource "aws_instance" "terraform3" {
  ami = "ami-081c75eaeac28ac34"
  instance_type = "t2.micro"
  key_name = "aws-terraform"
  tags = {
    Name = "terraform3"
  }
  vpc_security_group_ids = ["${aws_security_group.acesso-ssh.id}"]
  depends_on = [aws_s3_bucket.terraform3]
}

resource "aws_instance" "terraform4" {
  ami = "ami-081c75eaeac28ac34"
  instance_type = "t2.micro"
  key_name = "aws-terraform"
  tags = {
    Name = "terraform4"
  }
  vpc_security_group_ids = ["${aws_security_group.acesso-ssh.id}"]
}

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

# Exemplo criação bucket S3
resource "aws_s3_bucket" "terraform3" {
  bucket = "curso-terraform-robson2"
  acl = "private"

  tags = {
    Name = "curso-terraform-robson2"
  }
}

# terraform show (mostra como ta sua estrutura/ambiente na AWS)

#testecommit2

