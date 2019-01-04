resource "aws_route53_zone" "prd" {
  name = "${lookup(var.env_dns_zones_prefix, "prd")}${var.domain}"

  tags {
    Workspace   = "prd"
    Environment = "${lookup(var.env_names, "prd")}"
    terraformed = "true"
  }
}

resource "aws_route53_zone" "stg" {
  name = "${lookup(var.env_dns_zones_prefix, "stg")}${var.domain}"

  tags {
    Workspace   = "stg"
    Environment = "${lookup(var.env_names, "stg")}"
    terraformed = "true"
  }
}
