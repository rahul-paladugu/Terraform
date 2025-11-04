variable "instances" {
    default = {
        mongodb = "t3.micro"
        redis = "t3.micro"
        mysql = "t3.micro"
        rabbitmq = "t3.micro"
    }
}