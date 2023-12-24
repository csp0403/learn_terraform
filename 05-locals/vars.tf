variable "component" {
  default = {
    cart = {
      Name= "mysql"
      instance_type= "t2.micro"
    }

    catalogue = {
      Name= "shipping"
      instance_type= "t3.micro"
    }
  }
}

output "components" {
  value = local.instance_type
}
output "component" {
  value = local.Name
}
locals {
  instance_type= {for k,v in var.component: k=> v.instance_type}
  Name         = {for k,v in var.component: k=> v.Name}
}

resource "null_resource" "provisoner" {

  provisioner "remote_exec" {
    connection {
      host = aws_instance.web.public_ip
      user = root
      password = DevOps321
    }

    inline = [
      "yum update"
    ]

  }
}
