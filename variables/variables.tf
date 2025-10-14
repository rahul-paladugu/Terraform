variable "roboshop_image" {
    default = "ami-09c813fb71547fc4f"
}

variable "dev" {
    default = "t3.micro"
}

variable "ec2_tags" {
    default = {
        Name = "mysql"
        Terraform = "true"
    }
        
}

variable "sg_tags" {
    default = {
        Name = "allow all traffic"
        Terraform = "true"
    }
        
}

variable "allow_internet" {
    default = ["0.0.0.0/0"]
}

variable "all_traffic_protocol" {
    default = "-1"
}