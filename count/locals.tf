variable "components" {
    type = list(string)
    default = var.micro-services[count.index]
}