module "vpc" {
  source = "../modules/VPC"
  cidr = var.cidr_vpc
}
#co
# module "subnet" {
#   source = "../modules/SUBNET"
#   vpc_id = module.vpc.vpc-id
#   public_cidr = var.public_subnet_cidr
# }

# module "routetable" {
#   source = "../modules/ROUTETABLE"

#   vpc_id = module.vpc.vpc-id
#   ig_id = module.vpc.igw-id
#   public_subnet_id = module.subnet.pub-sub-id
# }

# module "sg" {
#   source = "../modules/SG"
#   vpc_id = module.vpc.vpc-id
#   instance_allow_ssh_cidr = ["0.0.0.0/0"]
#   sg_web_ports = [80,443]
# }

# module "ec2" {
#   source = "../modules/INSTANCE"
#   ami_id = var.AMIS[var.AWS_REGION]
#   sg_id = [module.sg.app-instance-sg-id]
#   key_name = var.key_pair_name
#   subnet_id = module.subnet.pub-sub-id
# }

# module "eip" {
#   source = "../modules/EIP"
#   depends_on = [ module.vpc ]
#   instance_id = module.ec2.app_instance_id
# }
