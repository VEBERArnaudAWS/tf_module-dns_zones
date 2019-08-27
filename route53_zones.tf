resource "aws_route53_zone" "prd" {
  count = var.bypass == "true" ? 0 : 1

  name = "${var.env_dns_zones_prefix[prd]}${var.domain}"

  tags = {
    Workspace   = "prd"
    Environment = var.env_names[prd]
    terraformed = true
  }
}

resource "aws_route53_zone" "stg" {
  count = var.bypass == "true" ? 0 : 1

  name = "${var.env_dns_zones_prefix[stg]}${var.domain}"

  tags = {
    Workspace   = "stg"
    Environment = var.env_names[stg]
    terraformed = true
  }
}
