variable "ami_id" {
    type = string
    default = "ami-09c813fb71547fc4f"
}

variable "environment" {
    type = string
    default = "prod"
}

variable "prod_instance" {
    type = string
    default = "t3.micro"  
}

variable "aws_instance" {
    type = string
    default = "t2.micro"
}

variable "cidr" {
    type = list(string)
    default = ["0.0.0.0/0"]
}
variable "zone_id" {
    type = string
    default = "Z0711084A6IKM873A3LI"
}