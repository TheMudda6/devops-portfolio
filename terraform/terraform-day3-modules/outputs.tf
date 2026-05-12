output "instance_public_ip" {
  value = module.ec2_server.instance_public_ip
}

output "instance_public_dns" {
  value = module.ec2_server.instance_public_dns
}
