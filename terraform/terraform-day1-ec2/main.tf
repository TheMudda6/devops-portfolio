provider "aws" {
  region = var.aws_region
}

resource "aws_security_group" "web_sg" {
  name = "terraform-web-sg"

  ingress {
    description = "SSH Access"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [var.my_ip]
  }

  ingress {
    description = "HTTP Access"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "web_server" {
  ami                    = "ami-0c101f26f147fa7fd"
  instance_type          = "t2.micro"
  vpc_security_group_ids = [aws_security_group.web_sg.id]

  user_data = <<-EOF
              #!/bin/bash
              yum update -y
              yum install nginx -y
              systemctl start nginx
              systemctl enable nginx
              echo "<h1>Terraform Day 1 Success</h1>" > /usr/share/nginx/html/index.html
              EOF

  tags = {
    Name = "terraform-nginx-server"
  }
}
