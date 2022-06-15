provider "aws" {
  version = "~> 2.0"
  region = "us-east-2"
}

resource "aws_instance" "terraform" {
  count = "3"
  ami = "ami-081c75eaeac28ac34"
  instance_type = "t2.micro"
  key_name = "aws-terraform2"
  tags = {
    Name = "terraform${count.index}"
  }
  vpc_security_group_ids = ["${aws_security_group.acesso-ssh.id}"]
}

resource "aws_instance" "terraform3" {
  ami = "ami-081c75eaeac28ac34"
  instance_type = "t2.micro"
  key_name = "aws-terraform2"
  tags = {
    Name = "terraform3"
  }
  vpc_security_group_ids = ["${aws_security_group.acesso-ssh.id}"]
  depends_on = [aws_s3_bucket.terraform3]
}

resource "aws_instance" "terraform4" {
  ami = "ami-081c75eaeac28ac34"
  instance_type = "t2.micro"
  key_name = "aws-terraform2"
  tags = {
    Name = "terraform4"
  }
  vpc_security_group_ids = ["${aws_security_group.acesso-ssh.id}"]
}

resource "aws_security_group" "acesso-ssh" {
  name        = "acesso-ssh"
  description = "acesso-ssh"

  ingress {
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["177.67.157.188/32"]
  }

  tags = {
    Name = "ssh"
  }
}

resource "aws_s3_bucket" "terraform3" {
  bucket = "curso-terraform-robson2"

  tags = {
    Name = "curso-terraform-robson2"
  }
}

#testecommit2
