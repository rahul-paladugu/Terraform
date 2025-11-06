variable "environment" {
    type = string
    default = "prod"
}

variable "project" {
    type = string
    default = "roboshop"
}


variable "ami_id" {
    type = string
    default = "ami-09c813fb71547fc4f"
}

variable "instance_type" {
    type = string
    default = "t3.micro"
}

variable "egress_ports" {
    type = list(string)
    default = [22, 36, 54, 66]
}

variable "ingress_ports" {
    type = list(string)
    default = [22, 36, 54, 66]
}

variable "cidr" {
    type = list(string)
    default = ["0.0.0.0/0"]
}
