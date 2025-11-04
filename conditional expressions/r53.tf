resource "aws_route53_record" "roboshop-r53-records" {
    zone_id = var.zone_id
    name = roboshop.rscloudservices.icu
    type = "A"
    ttl = 1
    records = [aws_instance.roboshop.private_ip]
    allow_overwrite = true
}