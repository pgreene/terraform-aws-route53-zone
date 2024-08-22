output "arn" {
  value = aws_route53_zone.general.arn
}

output "zone_id" {
  value = aws_route53_zone.general.zone_id
}

output "primary_name_server" {
  value = aws_route53_zone.general.primary_name_server
}

output "name_servers" {
  value = aws_route53_zone.general.name_servers
}

output "tags_all" {
  value = aws_route53_zone.general.tags_all
}
