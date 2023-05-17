resource "aws_eip" "lb" {
  instance = var.instance_id
  vpc      = true
}