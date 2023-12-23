variable "sg_id" {}
variable "component" {
  default = {
    cart= {
      instance_type="t2.micro"
      Name="cart"
    }
    catalogue= {
      instance_type="t3.micro"
      Name="catalogue"
    }
  }


}