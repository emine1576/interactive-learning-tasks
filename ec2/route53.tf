resource "aws_route53_record" "www" {
  zone_id = "Z0357744NT0HQR6KQC8F"
  name    = "wordpress.melissayavuz.com"
  type    = "A"
  ttl     = "300"
  records = [aws_instance.web.public_ip]



}
  
  