
variable "ami_roboshop" {

default = "ami-09c813fb71547fc4f"
}

variable "environment" {

    default = prod
}


variable "component" {
    default = ["mongodb", "redis", "mysql", "rabbitmq"]
}

variable "egres_to_port" {
    default = 0
}

variable "egres_from_port" {
    default = 0
}

variable "ingres_from_port" {
    default = 0
}

variable "ingres_to_port" {
    default = 0
}

variable "cidr" {
    default = [0.0.0.0/0]
}

variable "r53_zone" {

    default = Z0711084A6IKM873A3LI
}

variable "r53_record" {

    default = rscloudservices.icu
}