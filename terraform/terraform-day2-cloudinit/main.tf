provider "aws" {
  region = var.aws_region
}

resource "aws_security_group" "web_sg" {
  name        = "terraform-day2-sg"
  description = "Security group managed by Terraform"

  ingress {
    description = "HTTP"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [var.my_ip]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "cloudinit_server" {
  ami           = "ami-0c101f26f147fa7fd"
  instance_type = var.instance_type

  vpc_security_group_ids = [aws_security_group.web_sg.id]

  user_data = file("cloud-init.yaml")

  tags = {
    Name = "terraform-cloudinit-server"
  }
}
