variable "env" {
    default = "dev"
}

variable "ec2_tags" {
  default = {
    Name = ["mongodb", "redis", "mysql", "rabbitmq", "catalogue"]
    Terraform = "True"
  }
}