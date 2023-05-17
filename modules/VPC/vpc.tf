
resource "aws_vpc" "main" {
    cidr_block = var.cidr
    instance_tenancy = "default"
    enable_dns_support = "true"
    enable_dns_hostnames = "true"
    tags = {
        Name = "app-vpc"
    }
}

# resource "aws_internet_gateway" "main-gw" {
#     vpc_id = aws_vpc.main.id
#     tags = {
#         Name = "${aws_vpc.main.id}-internet-gw"
#     }
# }

output "vpc-id" {
  value = aws_vpc.main.id
}
# output "igw-id" {
#   value = aws_internet_gateway.main-gw.id
# }