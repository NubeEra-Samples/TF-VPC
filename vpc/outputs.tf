output "vpc_id" {
  value = aws_vpc.main.id
}


### Display Subnets Details when it created... 
output "subnet_az1_id" {
  value = aws_subnet.subnet_az1.id
}

output "subnet_az2_id" {
  value = aws_subnet.subnet_az2.id
}

output "subnet_az3_id" {
  value = aws_subnet.subnet_az3.id
}

output "subnet_az4_id" {
  value = aws_subnet.subnet_az4.id
}
