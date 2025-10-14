resource "aws_instance" "mysql" {
  ami           = var.roboshop_image
  vpc_security_group_ids = [aws_security_group.all_traffic.id]
  instance_type = var.dev
  tags = var.ec2_tags
}

resource "aws_security_group" "all_traffic" {
  name        = "allow all traffic"
  description = "Allow all traffic"
  tags = var.sg_tags
  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = var.all_traffic_protocol
    cidr_blocks = var.allow_internet
    }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = var.all_traffic_protocol
    cidr_blocks = var.allow_internet
      }
    }