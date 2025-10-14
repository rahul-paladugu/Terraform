resource "aws_route53_record" "roboshop" {
  zone_id = var.r53_zone
  name    = $"{var.component[count.index]}.{var.r53_record}
  type    = "A"
  ttl     = 301
  records = [aws_instance.terraform[count.index].private_ip]
}