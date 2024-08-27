output "zone_id" {
  description = "Zone ID of Route53 zone"
  value = { for k, v in aws_route53_zone.general : k => v.zone_id }
}

output "zone_arn" {
  description = "Zone ARN of Route53 zone"
  value = { for k, v in aws_route53_zone.general : k => v.arn }
}

output "name_servers" {
  description = "Name servers of Route53 zone"
  value = { for k, v in aws_route53_zone.general : k => v.name_servers }
}

output "primary_name_server" {
  description = "The Route 53 name server that created the SOA record."
  value = { for k, v in aws_route53_zone.general : k => v.primary_name_server }
}

output "name" {
  description = "Name of Route53 zone"
  value = { for k, v in aws_route53_zone.general : k => v.name }
}

output "route53_static_zone_name" {
  description = "Name of Route53 zone created statically to avoid invalid count argument error when creating records and zones simmultaneously"
  value = { for k, v in var.zones : k => lookup(v, "domain_name", k) if var.create }
}
