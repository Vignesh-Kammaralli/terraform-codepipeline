resource "aws_route_table" "public" {
  vpc_id = var.vpc_id
  route  {
    cidr_block = "0.0.0.0/0"
    gateway_id = var.ig_id
  }

  tags = {
    Name = "app-pub-route"
  }
}

resource "aws_route_table_association" "public_route" {
    
    subnet_id = var.public_subnet_id
    route_table_id = aws_route_table.public.id
}

output "public-route-id" {
  value = aws_route_table.public.id
}