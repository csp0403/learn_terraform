provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "first" {
  for_each = var.component
  ami = data.aws_ami.example.id
  instance_type = each.value.instance_type
  vpc_security_group_ids = [var.sg_id]
  availability_zone = "us-east-1a"

  tags = {
    Name = each.value.Name
  }

}