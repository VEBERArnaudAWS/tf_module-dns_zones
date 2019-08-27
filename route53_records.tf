resource "aws_route53_record" "stg_ns" {
  count = var.bypass == "true" ? 0 : 1

  zone_id = aws_route53_zone.prd.zone_id

  name = var.env_names[stg]
  type = "NS"
  ttl  = "30"

  records = [aws_route53_zone.stg.name_servers]
}
