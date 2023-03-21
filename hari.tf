provider "aws" {
region = "ap-south-1"
}
resource "aws_instance" "one" {
ami="ami-05afd67c4a44cc983"
instance_type="t2.micro"
tags = {
Name = "harry"
}
}
