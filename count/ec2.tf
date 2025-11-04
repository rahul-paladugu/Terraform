resource "aws_instance" "roboshop-count" {
    count = 4
    ami = var.ami_id
    instance_type = var.environment == "prod" ? "t3.micro" : "t2.micro"
    vpc_security_group_ids = [aws_security_group.allow-all-traffic.id]
    tags = {
        Name = var.microservices[count.index]
        Terraform = true
    }
}

resource "aws_security_group" "allow-all-traffic" {
    name = "all-traffic"
    description = "allowing all traffic from security group"
    egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }
    ingress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }
  tags = {
    Name = "Allow-All-Network-Traffic"
    Terraform = true
  }
}