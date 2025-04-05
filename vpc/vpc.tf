# vpc.tf

resource "aws_vpc" "main" {
  cidr_block = "192.168.1.0/26"
  enable_dns_support = true
  enable_dns_hostnames = true
  tags = {
    Name = "MyVPC"
  }
}