variable "ami_id" {
    type = string
    default = "ami-09c813fb71547fc4f"
}

variable "instance_type" {
    type = string
    default = "t3.micro"
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
    type = list(number)
    default = ["0.0.0.0/0"]
}