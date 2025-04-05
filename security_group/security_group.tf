# security_group/security_group.tf

resource "aws_security_group" "this" {
  ################# General 
  name        = var.security_group_name
  description = var.description
  vpc_id      = var.vpc_id
  ###################################
  # Ingress and egress rules
  ingress {
    from_port   = var.ingress_from_port
    to_port     = var.ingress_to_port
    protocol    = var.ingress_protocol
    cidr_blocks = var.ingress_cidr_blocks
  }

  egress {
    from_port   = var.egress_from_port
    to_port     = var.egress_to_port
    protocol    = var.egress_protocol
    cidr_blocks = var.egress_cidr_blocks
  }
  ####################### Rule for All traffic Anywhere
   # Ingress rule: Allow all traffic from anywhere (0.0.0.0/0)
  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"  # -1 means all protocols
    cidr_blocks = ["0.0.0.0/0"]  # All IPv4 addresses
  }
  # Egress rule: Allow all outbound traffic to anywhere (0.0.0.0/0)
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"  # -1 means all protocols
    cidr_blocks = ["0.0.0.0/0"]  # All IPv4 addresses
  }
  ########################
  # depends_on = [ module.vpc ]
  ########################
  tags = {
    Name = var.security_group_name
  }
}