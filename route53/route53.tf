resource "aws_route53_record" "www" {
  zone_id = "Z0357744NT0HQR6KQC8F"
  name    = "www.blog.melissayavuz.com"
  type    = "A"
   ttl     = "300"
  records = ["127.0.0.1"]
}