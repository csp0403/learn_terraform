variable "sg_id" {}
variable "a_zone" {
  default = "us-east-1a"
}

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