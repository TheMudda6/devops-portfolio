resource "aws_security_group" "web_sg" {
  name        = "${var.instance_name}-sg"
  description = "Security group for Terraform module EC2"

  ingress {
    description = "SSH Access"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [var.allowed_ssh_ip]
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
  ami           = "ami-0c101f26f147fa7fd"
  instance_type = var.instance_type

  vpc_security_group_ids = [aws_security_group.web_sg.id]

  user_data = <<-EOF
              #!/bin/bash
              yum update -y
              yum install nginx -y
              systemctl enable nginx
              systemctl start nginx
              echo "<h1>Terraform Modules Success</h1>" > /usr/share/nginx/html/index.html
              EOF

  tags = {
    Name = var.instance_name
  }
}



