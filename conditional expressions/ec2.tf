resource "aws_instance" "roboshop" {
    ami = var.ami_id
    instance_type = var.environment == "prod" ? var.prod_instance : var.aws_instance
    # in above declared conditional expression expression ? true : false
    vpc_security_group_ids = [aws_security_group.allow-all-traffic.id]
    tags = {
        Name = "jump-baston server"
        Terraform = "True"
    }
}

resource "aws_security_group" "allow-all-traffic" {
    name = "Allow-all-traffic"
    egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = var.cidr
    }
    ingress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = var.cidr
    }
    tags = {
        Name = "Allow-All-Network-Traffic"
    }
}
