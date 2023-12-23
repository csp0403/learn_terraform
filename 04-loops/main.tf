module "sg" {
  source = "./sg"

}

module "ec2" {
  source = "./ec2"
  for_each = var.component
  instance_type = each.value.instance_type
  Name = each.value.Name
  sg_id = module.sg.security_group_id
}

output "public_ip" {
  value = module.ec2
}