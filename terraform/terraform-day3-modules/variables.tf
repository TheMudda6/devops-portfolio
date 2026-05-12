variable "aws_region" {
  default = "us-east-1"
}

variable "instance_name" {
  default = "terraform-module-server"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "allowed_ssh_ip" {
  description = "Your public IP for SSH access"
}
