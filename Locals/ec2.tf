resource "aws_instance" "roboshop_var" {
    ami                     = local.ami_id
    instance_type           = local.instance_type
    vpc_security_group_ids  = [aws_security_group.allow_all_traffic.id]
    tags = local.ec2_tags
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
    Name = "${local.common_name}-Allow-All-Traffic"
    Terraform = true
   }
}