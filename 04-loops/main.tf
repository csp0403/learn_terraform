module "sg" {
  source = "./sg"

}

module "ec2" {
  source = "./ec2"
  sg_id = module.sg.security_group_id

}

output "public_ip" {
  value = module.ec2
}