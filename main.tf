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

# terraform show (mostra como ta sua estrutura/ambiente na AWS)

#testecommit2
#testecommit3

