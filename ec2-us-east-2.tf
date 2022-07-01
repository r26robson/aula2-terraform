# Exemplo de criação de instancia EC2 região de Ohio(us-east-2)
resource "aws_instance" "terraform" {
  count = "3"
  ami = var.amis["ubuntu-20.04-us-east-2"]
  instance_type = "t2.micro"
  key_name = "aws-terraform"
  tags = {
    Name = "terraform${count.index}"
  }
  vpc_security_group_ids = ["${aws_security_group.acesso-ssh.id}"]
  # Exemplo de referencia ao ID do security group refenciando por .id 
}

resource "aws_instance" "terraform3" {
  ami = var.amis["ubuntu-20.04-us-east-2"]
  instance_type = "t2.micro"
  key_name = "aws-terraform"
  tags = {
    Name = "terraform3"
  }
  vpc_security_group_ids = ["${aws_security_group.acesso-ssh.id}"]
  depends_on = [aws_s3_bucket.terraform3]
}
