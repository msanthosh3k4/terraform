resource "aws_instance" "this" {
  count = 3
  ami                    = var.ami_id # This is our devops-practice AMI ID
  vpc_security_group_ids = var.security_group
  instance_type          = var.environment == "dev" ? var.instance_type : "t3.small"
  tags = var.ec2_tags
}

resource "aws_security_group" "allow_tls" {
  name        = "allow_tls_1"
  description = "Allow TLS inbound traffic and all outbound traffic"

  ingress {
    from_port   = var.from_port
    to_port     = var.to_port
    protocol    = var.prot_col
    cidr_blocks = var.cidr_blocks
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = var.cidr_blocks
  }

  tags = {
    Name = "allow_tls"
  }
}