output "zone_id" {
  value = aws_route53_zone.general.zone_id
}

output "name_servers" {
  value = aws_route53_zone.general.name_servers
}
