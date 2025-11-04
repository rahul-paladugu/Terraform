resource "aws_instance" "roboshop_var" {
    ami                     = var.ami_id
    instance_type           = var.instance_type
    vpc_security_group_ids  = [aws_security_group.allow_all_traffic.id]
    tags = {
        Name = "application-use1"
        Terraform = true
    }
}

resource "aws_security_group" "allow_all_traffic" {
    name = "allow_all_traffic"
    description = "allow-all-traffic"
    egress {
    from_port        = var.egress_from_port
    to_port          = var.egress_to_port
    protocol         = "-1"
    cidr_blocks      = var.cidr
    }
   ingress {
    from_port        = var.ingress_from_port
    to_port          = var.ingress_to_port
    protocol         = "-1"
    cidr_blocks      = var.cidr
    }
   tags = {
    Name = "Allow-All-Traffic"
    Terraform = true
   }
}