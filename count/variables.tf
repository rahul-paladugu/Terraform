variable "ami_id" {
    type = string
    default = "ami-09c813fb71547fc4f"
}

variable "environment" {
    type = string
    default = "prod"
}

variable "microservices" {
    default = ["mongodb", "rabbitmq", "redis", "mysql"]
}