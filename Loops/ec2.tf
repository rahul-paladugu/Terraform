resource "aws_instance" "mysql" {
  count = "5"
  ami           = "ami-09c813fb71547fc4f"
  vpc_security_group_ids = [aws_security_group.all_traffic.id]
  instance_type = var.env == "dev" ? "t2.micro" : "t3.micro" # conditions are declared here
  tags = var.ec2_tags[count.index]
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