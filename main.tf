// Creates a record for each app.
resource "aws_route53_record" "record" {
  zone_id = var.hosted_zone_id
  name = var.domain
  type = var.record_type

  alias {
    name = var.alias_name
    zone_id = var.alias_zone_id
    evaluate_target_health = false
  }
}
