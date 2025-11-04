resource "aws_route53_record" "roboshop-dns"{
    for_each = var.instances
    zone_id = "Z0711084A6IKM873A3LI"
    name = "${each.key}.rscloudservices.icu"
    type = "A"
    ttl = 1
    records = [aws_instance.roboshop-for-each.each.value.private_ip]
    allow_overwrite = true
}