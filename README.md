# terraform-aws-route53-record
An opinionated module that creates a Route53 record for a hosted zone that already exists.

## Instantiation
The simplest instantiation requires `hosted_zone_id`, `alias_name`, `alias_zone_id` and `domain`.

```
module "route53_record" {
  source = "git@github.com:kiawnna/terraform-aws-route53-record.git"
  hosted_zone_id = "HOSTEDZONEID"
  alias_name = "load-balancer-dns-name"
  alias_zone_id = "load-balancer-hosted-zone-id"
  domain = "my.domain.com"
}
```
> This example will create an alias Route53 record set of type A. For a record that points to a load balancer, `alias_zone_id` refers to the `load balancer zone id`
> and `alias_name` refers to the load balancer dns name.

## Resources Created
* An alias Route53 record.

## Outputs
The fully qualified domain name (fqdn) is an output.

Reference it as:

> module.record_module_name.fully_qualified_domain_name

## Variables / Customization
The variable below can be customized to fit your needs. The current defaults are:
>  * `record_type` &rarr; A

See the `variables.tf` file for further information.

## Tags
There are no tags for this resource.

