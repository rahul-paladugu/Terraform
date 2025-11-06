locals {
    common_name      = "${var.project}-${var.environment}"
    common_tags      = {
        Terraform   = true
        Project     = var.project
        Environment = var.environment
    }
    ec2_tags         = merge(local.common_tags, {Name = "${local.common_name}-jump-server"})
    instance_type    = var.environment == "prod" ? "t3.micro" : "t2.micro"
}