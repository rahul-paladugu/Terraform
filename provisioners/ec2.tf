resource "aws_instance" "roboshop" {
    ami                    = data.aws_ami.rahul-practice.id
    instance_type          = local.instance_type
    vpc_security_group_ids = [aws_security_group.all-traffic.id]
    tags                   = local.ec2_tags
    provisioner "local-exec" {
      command = "echo ec2 is created and the ip is ${self.public_ip} > inventory"
      on_failure = continue #Optional - terraform continues to execution even if this is failed.
    }
    provisioner "local-exec" {
      command = "echo the server ${self.private_ip} is destroyed"
      on_failure = continue
      when = destroy # terraform runs this provisioner during destroy
    }
    connection {
      type = "ssh"
      user = "ec2-user"
      password = "DevOps321"
      host = self.public_ip
    }
    provisioner "remote-exec" {
      inline = ["sudo dnf install nginx -y", "sudo systemctl start nginx", 
                  "echo nginx is installed and running in the server"]
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
    tags = merge(local.common_tags, {Name = "${local.common_name}-sg"} )
}