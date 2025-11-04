variable "microservices" {
    default = ["rabbitmq","redis","mysql","mongodb"]
}

variable "environment" {
    default = "prod"
}