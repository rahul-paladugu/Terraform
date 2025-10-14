resource "aws_instance" "terraform" {
  ami           = "ami-09c813fb71547fc4f"
  vpc_security_group_ids = [aws_security_group.all_traffic.id]

  tags = {
    Name = "mysql"
  }
}

    resource "aws_security_group" "all_traffic" {
      name        = "allow all traffic"
      description = "Allow all traffic"

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