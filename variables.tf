variable "hosted_zone_id" {
  type = string
}
variable "record_type" {
  type = string
  default = "A"
}
variable "alias_name" {
  type = string
}
variable "domain" {
  type = string
}
variable "alias_zone_id" {
  type = string
}