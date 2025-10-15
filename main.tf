provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "name" {
    ami = "ami-fgthjhgfdcvw"
    instance_type = "t2.micro"
    tags = {
      Name = "Test"
    }
  
}