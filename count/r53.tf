resource "aws_route53_record" "roboshop-dns" {
    count = length(var.microservices)
    zone_id = "Z0711084A6IKM873A3LI"
    name = "${var.microservices[count.index]}.rscloudservices.icu"
    type = "A"
    ttl = 1
    records = [aws_instance.roboshop[count.index].private_ip]
    allow_overwrite = true
}