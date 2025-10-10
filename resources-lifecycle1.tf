provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "Dev" {
    ami = "ami-052064a798f08f0d3"
    instance_type = "t2.micro"
    tags = {
        Name = "Practice"
    }
}

resource "aws_s3_bucket" "Bucket" {
    bucket = "my-first-bucket-resource-terraform"
    acl = "private"
    lifecycle {
    prevent_destroy = true
    }
}
