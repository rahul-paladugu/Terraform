resource "aws_route53_record" "roboshob_r53" {
  zone_id = var.roboshop_r53_hosted_zone
  name    = "roboshop".var.domain_id
  type    = "A"
  ttl     = 1
  records = [aws_instance.roboshop_var.private_ip]
}