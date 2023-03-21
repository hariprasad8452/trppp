provider "aws" {
region = "ap-south-1"
access_key = "AKIA2KQG3KB2OAUOKGUT"
secret_key = "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"
}
resource "aws_instance" "mine" {
ami = "ami-0d81306eddc614a45"
instance_type = "t2.micro"
vpc_security_group_ids = [aws_security_group.mine2.id]
availability_zone = "ap-south-1a"
user_data       = <<EOF
#!/bin/bash
sudo -i
yum install httpd -y
systemctl start httpd
chkconfig httpd on
echo "🙋‍♂️🙋‍♂️🙋‍♂️Hello...! Connections💁‍♂️ this is Terraform infrastructure🏦🏨 developed👨‍💻👨‍ by HARRY😗🙃 using Jenkins Pipeline🔗😍😍" > /var/www/html/index.html
EOF
tags = {
Name = "harry"
}
}
resource "aws_instance" "mine1" {
ami = "ami-05afd67c4a44cc983"
instance_type = "t2.micro"
vpc_security_group_ids = [aws_security_group.mine2.id]
availability_zone = "ap-south-1b"
user_data       = <<EOF
#!/bin/bash
sudo -i
yum install httpd -y
systemctl start httpd
chkconfig httpd on
echo "Hai Connectionss this is terraform infrastructure developed by HARRY😍😍" > /var/www/html/index.html
EOF
tags = {
Name = "harry"
}
}
resource "aws_security_group" "mine2" {
  name = "some"
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
resource "aws_s3_bucket" "mine3" {
  bucket = "harry8452"
}

resource "aws_iam_user" "mine4" {
name = "putta" 
}

resource "aws_ebs_volume" "mine5" {
 availability_zone = "ap-south-1b"
  size = 30
  tags = {
    Name = "ebs-001"
  }
}
