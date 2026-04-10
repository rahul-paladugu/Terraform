resource "aws_instance" "jump-host" {
    ami = "ami-0220d79f3f480ecf5"
    instance_type = "t3.micro"
    tags = {
        Name = "debian-server"
        Terraform = true
    }
  
}

resource "aws_security_group" "allow-all-traffic" {

  egress {
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }
  egress {
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }
tags = {
    Name = "Allow all traffic"
    Terraform = true
  }
}
