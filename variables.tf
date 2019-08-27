variable "bypass" {
  type = bool
}

variable "domain" {
  type = string
}

variable "env_dns_zones_prefix" {
  type = object({ stg = string, prd = string })
}

variable "env_names" {
  type = object({ stg = string, prd = string })
}
