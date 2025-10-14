resource "aws_instance" "mysql" {
  ami           = "ami-09c813fb71547fc4f"
  vpc_security_group_ids = [aws_security_group.all_traffic.id]
  instance_type = "t3.micro"

  tags = {
    Name = "mysql"
    Terraform = "true"
  }
}

resource "aws_security_group" "all_traffic" {
  name        = "allow all traffic"
  description = "Allow all traffic"
  tags = {
    Name = "allow_all_traffic"
    }
  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
    }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1" # Allow all outbound traffic
    cidr_blocks = ["0.0.0.0/0"]
      }
    }