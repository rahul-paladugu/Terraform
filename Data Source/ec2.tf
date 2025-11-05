resource "aws_instance" "roboshop" {
    count = length(var.microservices)
    ami = data.aws_ami.rahul-practice.id
    instance_type = var.environment == "prod" ? "t3.micro" : "t2.micro"
    vpc_security_group_ids = [aws_security_group.all-traffic.id]
    tags = {
        Name = var.microservices[count.index]
        Terraform = true
    }
}

resource "aws_security_group" "all-traffic"{
    name = "all-traffic"
    egress {
      from_port       = 0
      to_port         = 0
      protocol        = "-1"
      cidr_blocks      = ["0.0.0.0/0"]
    }
    ingress {
      from_port       = 0
      to_port         = 0
      protocol        = "-1"
      cidr_blocks      = ["0.0.0.0/0"]
    }
    tags = {
        Name = "Allow-all-traffic"
        Terraform = true
    }
}