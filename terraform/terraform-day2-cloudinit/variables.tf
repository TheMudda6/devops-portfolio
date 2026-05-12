variable "aws_region" {
  default = "us-east-1"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "my_ip" {
  description = "Your public IP for SSH"
}
