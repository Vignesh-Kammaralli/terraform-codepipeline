resource "aws_security_group" "instance_public" {
  vpc_id      = var.vpc_id
  name        = "app-instance-allow-ssh-http"
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = var.instance_allow_ssh_cidr
  }

  dynamic "ingress" {
    for_each = var.sg_web_ports
    content {
      from_port   = ingress.value
      to_port     = ingress.value
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }

  tags = {
    Name = "app-instance-allow-ssh-http"
  }
}

output "app-instance-sg-id" {
  value = aws_security_group.instance_public.id
}