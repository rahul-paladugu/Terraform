resource "aws_route53_record" "roboshop-dns"{
    for_each = aws_instance.roboshop-for-each
    zone_id = "Z0711084A6IKM873A3LI"
    name = "${each.key}.rscloudservices.icu"
    type = "A"
    ttl = 1
    records = [each.value.private_ip]
    allow_overwrite = true
}