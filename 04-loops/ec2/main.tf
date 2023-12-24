resource "aws_instance" "DevSeCops" {

  ami = data.aws_ami.example.id
  vpc_security_group_ids = [var.sg_id]
  availability_zone = var.a_zone
  instance_type = var.instance_type


  tags = {
    Name= var.Name
  }

}
resource "null_resource" "provisioner" {

  provisioner "remote_exec" {
    connection {
      host = aws_instance.DevSeCops.public_ip
      user = root
      password = DevOps321
    }

    inline = [
      "yum update"
    ]

  }
}