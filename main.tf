resource "aws_route53_zone" "general" {
  name = var.name
  comment = var.comment
  delegation_set_id = var.delegation_set_id
  force_destroy = var.force_destroy
  tags = var.tags
  dynamic "vpc" {
    for_each = var.vpc == null ? [] : tolist(var.vpc)
    content {
      vpc_id = var.vpc_id
      vpc_region = var.vpc_region
    }
  }
}