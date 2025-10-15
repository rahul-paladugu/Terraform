variable "env" {
    default = "dev"
}

variable "components" {
  default = [ "mongodb", "redis", "mysql", "rabbitmq", "catalogue" ]
}

variable "domain_name" {
    default = "rscloudservices.icu"
}