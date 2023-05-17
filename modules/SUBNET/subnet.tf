resource "aws_subnet" "public" {
  vpc_id     = var.vpc_id
  cidr_block = var.public_cidr
  map_public_ip_on_launch = "true"
  tags = {
    Name = "pub-sub-1"
  }
}

output "pub-sub-id" {
  value = aws_subnet.public.id
}