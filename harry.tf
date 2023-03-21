provider "aws" {
region = "ap-south-1"
access_key = "AKIA2KQG3KB2OAUOKGUT"
secret_key = "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"
}
resource "aws_instance" "mine" {
ami = "ami-0d81306eddc614a45"
instance_type = "t2.micro"
user_data       = <<EOF
#!/bin/bash
sudo -i
yum install httpd -y
systemctl start httpd
chkconfig httpd on
echo "Hai Connections this is terraform infrastructure developed by HARRY😍😍" > /var/www/html/index.html
EOF
tags = {
Name = "harry"
}
}
