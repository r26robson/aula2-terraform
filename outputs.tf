output "terraform0" {
      value = aws_instance.terraform[0].public_ip 
}

output "terraform5" {
      value = aws_instance.terraform5.public_ip 
}