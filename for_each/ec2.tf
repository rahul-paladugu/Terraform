resource "aws_instance" "roboshop-for-each" {
    for_each = var.instances
    ami = "ami-09c813fb71547fc4f"
    instance_type = each.value
    vpc_security_group_ids = []
    tags = {
        Name = each.key
        Terraform = true
    }
}

resource "aws_security_group" "all-traffic" {
    name = "all-traffic"
    description = "allowing all the traffic through security group"
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
        Name = "Allow all network traffic"
        Terraform = true
    }
}