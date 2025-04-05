resource "aws_route_table" "main" {
  vpc_id = aws_vpc.main.id
}


resource "aws_route_table_association" "subnet_az1_association" {
  subnet_id      = aws_subnet.subnet_az1.id
  route_table_id = aws_route_table.main.id
}

resource "aws_route_table_association" "subnet_az2_association" {
  subnet_id      = aws_subnet.subnet_az2.id
  route_table_id = aws_route_table.main.id
}

resource "aws_route_table_association" "subnet_az3_association" {
  subnet_id      = aws_subnet.subnet_az3.id
  route_table_id = aws_route_table.main.id
}

resource "aws_route_table_association" "subnet_az4_association" {
  subnet_id      = aws_subnet.subnet_az4.id
  route_table_id = aws_route_table.main.id
}


resource "aws_route" "internet_route" {
  route_table_id         = aws_route_table.main.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.main.id
}