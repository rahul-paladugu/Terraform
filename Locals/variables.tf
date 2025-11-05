variable "ami_id" {
    type = string
    default = "ami-09c813fb71547fc4f"
}

variable "project" {
    type = string
    default = "roboshop"
}

variable "environment" {
    type = string
    default = "dev"
}

variable "common_tags" {
    type = map
    default = {
        Terraform = true
        Project = "roboshop"
        Environment = "dev"
    }
}

variable "egress_from_port" {
    type = number
    default = "0"
}

variable "egress_to_port" {
    type = number
    default = "0"
}


variable "ingress_from_port" {
    type = number
    default = "0"
}

variable "ingress_to_port" {
    type = number
    default = "0"
}

variable "cidr" {
    type = list(string)
    default = ["0.0.0.0/0"]
}

variable "roboshop_r53_hosted_zone" {
    type = string
    default = "Z0711084A6IKM873A3LI"
}

variable "domain_id" {
    type = string
    default = "rscloudservices.icu"
}