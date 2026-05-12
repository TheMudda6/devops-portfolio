provider "aws" {
  region = var.aws_region
}

module "ec2_server" {
  source = "./modules/ec2"

  instance_name = var.instance_name
  instance_type = var.instance_type
  allowed_ssh_ip = var.allowed_ssh_ip
}
