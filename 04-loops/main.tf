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
  value = {
    for k, v in module.ec2: k=> v["ec2"].public_ip
  }
}