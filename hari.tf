provider "aws" {
  region = "ap-south-1"
}
resource "aws_instance" "one" {
  ami           = "ami-0d81306eddc614a45"
  instance_type = "t2.micro"
tags = {
Name = "hari"
}
}
