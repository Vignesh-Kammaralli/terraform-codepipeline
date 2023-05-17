resource "aws_instance" "app-instance" {

  ami           = var.ami_id
  instance_type = "t2.micro"
  subnet_id = var.subnet_id
  vpc_security_group_ids = var.sg_id
  key_name = var.key_name
  tags = {
    Name = "app-instance"
  }
}

output "app_instance_id" {
    value = aws_instance.app-instance.id
}