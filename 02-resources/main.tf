provider "aws" {
  region = "us-east-1"
  version = ""
}

resource "aws_instance" "first_ec2" {
  ami = data.aws_ami.example.id
  instance_type = "t3.micro"
  security_groups = [aws_security_group.allow_tls.id]

  tags = {
  Name="Automation_ec2"
  }

}

data "aws_ami" "example" {
  most_recent      = true
  name_regex       = "Centos-8-DevOps-Practice"
  owners           = ["973714476881"]

}

resource "aws_security_group" "allow_tls" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic"


  ingress {
    description      = "TLS from VPC"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]

  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "created_from_tf"
  }
}

output "sg_out_id" {
  value = aws_security_group.allow_tls.id
}