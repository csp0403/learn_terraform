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