resource "aws_instance" "DevSeCops" {

  for_each = var.component
  ami = data.aws_ami.example.id
  vpc_security_group_ids = [var.sg_id]
  availability_zone = var.a_zone
  instance_type = each.value.instance_type


  tags = {
    Name= each.value.Name
  }

}