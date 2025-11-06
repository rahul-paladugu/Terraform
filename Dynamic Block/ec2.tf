resource "aws_instance" "roboshop_var" {
    ami                     = var.ami_id
    instance_type           = var.instance_type
    vpc_security_group_ids  = [aws_security_group.allow_all_traffic.id]
    tags = local.ec2_tags
}

resource "aws_security_group" "allow_all_traffic" {
    name = "allow_all_traffic"
    description = "allow-all-traffic"
    dynamic "egress" {
        for_each = var.egress_ports
        content {
            from_port = [egress.value]
            to_port = [egress.value]
            protocol = "-1"
            cidr_blocks = "[0.0.0.0/0]"
            
        }
    }

    dynamic "ingress" {
        for_each = var.egress_ports
        content {
            from_port = [ingress.value]
            to_port = [ingress.value]
            protocol = "-1"
            cidr_blocks = "[0.0.0.0/0]" 
        }
    }
   tags = {
    Name = "Allow-All-Traffic"
    Terraform = true
   }
}