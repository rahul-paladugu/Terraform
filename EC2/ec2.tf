resource "aws_instance" "roboshop" {
    ami = "ami-09c813fb71547fc4f"
    instance_type = "t3.micro"
    tags = {
        Name = "roboshop"
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
  }
}
