resource "aws_instance" "roboshop-count" {
    count = length[var.micro-services]
    ami = var.ami_id
    instance_type = var.environment == "prod" ? "t3.micro" : "t2.micro"
    vpc_security_group_ids = [  ]
    tags = {
        Name = [var.components]
    }
}