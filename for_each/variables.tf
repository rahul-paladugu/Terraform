variable "instances" {
    default = {
        mongodb = "t3.micro"
        redis = "t2.micro"
        mysql = "t3.micro"
        rabbitmq = "t2.micro"
    }
}