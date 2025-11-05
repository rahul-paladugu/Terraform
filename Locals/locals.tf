locals {
    instance_type = "t3.micro"
    ami_id = data.aws_ami.rahul-practice.id
    common_name = "${var.project}-${var.environment}"
    ec2_tags = merge(var.common_tags, {Name = "${local.common_name}-demo"})
}