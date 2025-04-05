# subnets.tf

resource "aws_subnet" "subnet_az1" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = "192.168.1.0/28" # 16 IPs
  availability_zone       = "us-east-1a" # Change AZ as per your region
  map_public_ip_on_launch = true
  tags = {
    Name = "Subnet-AZ1"
  }
}

resource "aws_subnet" "subnet_az2" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = "192.168.1.16/28" # 16 IPs
  availability_zone       = "us-east-1b" # Change AZ as per your region
  map_public_ip_on_launch = true
  tags = {
    Name = "Subnet-AZ2"
  }
}

resource "aws_subnet" "subnet_az3" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = "192.168.1.32/28" # 16 IPs
  availability_zone       = "us-east-1c" # Change AZ as per your region
  map_public_ip_on_launch = true
  tags = {
    Name = "Subnet-AZ3"
  }
}

resource "aws_subnet" "subnet_az4" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = "192.168.1.48/28" # 16 IPs
  availability_zone       = "us-east-1d" # Change AZ as per your region
  map_public_ip_on_launch = true
  tags = {
    Name = "Subnet-AZ4"
  }
}