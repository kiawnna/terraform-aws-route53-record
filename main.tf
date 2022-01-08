resource "aws_route53_record" "record" {
  zone_id = var.hosted_zone_id
  name    = var.subdomain
  type    = var.record_type
  alias {
    name                   = var.lb_dns_name
    zone_id                = var.load_balancer_hosted_zone_id
    evaluate_target_health = false
  }
}

