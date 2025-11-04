data "aws_ami" "ami" {
  most_recent      = true
  owners           = ["973714476881"]

  filter {
    name   = "name"
    values = ["RHEL-9-DevOps-Practice"]
  }

  filter {
    name   = "Source-AMI-ID"
    values = ["ami-008e7b65af911ed5c"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}