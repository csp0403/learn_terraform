module "sg" {
  source = "./sg"
}

module "ec2" {
  source = "./ec2"
  sg_id  = module.sg.sg_id
}

output "vpc_id" {
  value = module.sg
}