

variable "security_group_name" {
  description = "The name of the security group"
  type        = string
}

variable "description" {
  description = "Description for the security group"
  type        = string
  default     = "Security group for my application"
}

variable "vpc_id" {
  description = "VPC ID where the security group will be created"
  type        = string
  default     = "vpc-03b3f9fb03f550a49"
}


variable "ingress_from_port" {
  description = "The start port for inbound traffic"
  type        = number
  default     = 80
}

variable "ingress_to_port" {
  description = "The end port for inbound traffic"
  type        = number
  default     = 80
}

variable "ingress_protocol" {
  description = "The protocol for inbound traffic"
  type        = string
  default     = "tcp"
}

variable "ingress_cidr_blocks" {
  description = "The CIDR block for inbound traffic"
  type        = list(string)
  default     = ["0.0.0.0/0"]
}

variable "egress_from_port" {
  description = "The start port for outbound traffic"
  type        = number
  default     = 0
}

variable "egress_to_port" {
  description = "The end port for outbound traffic"
  type        = number
  default     = 0
}

variable "egress_protocol" {
  description = "The protocol for outbound traffic"
  type        = string
  default     = "-1"
}

variable "egress_cidr_blocks" {
  description = "The CIDR block for outbound traffic"
  type        = list(string)
  default     = ["0.0.0.0/0"]
}
