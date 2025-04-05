provider "aws" {
  region = "us-east-1" 
}

##### Call VPC Module
module "vpc" {
  source = "./vpc"
}