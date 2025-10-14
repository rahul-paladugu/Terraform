resource "aws_route53_record" "roboshop" {
  zone_id = "Z0711084A6IKM873A3LI"
  name    = "mysql.rscloudservices.icu"
  type    = "A"
  ttl     = 1
  records = [aws_instance.mysql.public_ip]
}