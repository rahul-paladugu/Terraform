resource "aws_route53_record" "roboshop" {
  count = 5
  zone_id = "Z0711084A6IKM873A3LI"
  name    = "${var.components[count.index]}.${var.domain_name}"
  type = "A"
  ttl     = 1
  records = [aws_instance.roboshop[count.index].public_ip]
}