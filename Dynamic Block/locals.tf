locals {
 common_name =  "${var.project}-${var.environment}"
 ec2_tags = {
    Name = "${local.common_name}-demo"
    Project = var.project
    Environment = var.environment
    Terraform  = true
 }
}