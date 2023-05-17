variable "AWS_REGION" {
  default = "us-west-1"
}

variable "cidr_vpc" {
  default = "172.29.0.0/16"
  type = string
}

variable "public_subnet_cidr" {
  default = "172.29.34.0/24"
}

variable "AMIS" {
  type = map(string)
  default = {
    us-east-2 = "ami-0a59f0e26c55590e9"
    us-west-2 = "ami-0a7d051a1c4b54f65"
    us-west-1 = "ami-0427c7b524bf024ed"
    eu-west-1 = "ami-04c58523038d79132"
  }
}

variable "key_pair_name" {
  default = "webapp"
}