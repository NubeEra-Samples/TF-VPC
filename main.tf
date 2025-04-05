provider "aws" {
  region = "us-east-1" 
}

##### Call VPC Module
# module "vpc" {
#   source = "./vpc"
# }

##### Calling Security Group
module "security_group" {
  source = "./security_group"
  security_group_name = "my-sg112233"
  # vpc_id = module.vpc.vpc_id
  description         = "My custom security group"
  ingress_from_port   = 80
  ingress_to_port     = 80
  ingress_protocol    = "tcp"
  ingress_cidr_blocks = ["0.0.0.0/0"]
  egress_from_port    = 0
  egress_to_port      = 0
  egress_protocol     = "-1"
  egress_cidr_blocks  = ["0.0.0.0/0"]
  # depends_on = [ vpc ]
}