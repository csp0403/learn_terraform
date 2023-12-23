provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "first" {
  ami = data.aws_ami.example.id
  instance_type = "t3.micro"
  vpc_security_group_ids = [var.sg_id]
  availability_zone = "us-east-1a"

  tags = {
    Name ="Automation_ec2"
  }

}