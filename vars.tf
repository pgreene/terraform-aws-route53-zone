variable "name" {
  description = "(Required) This is the name of the hosted zone."
  default = ""
}

variable "comment" {
  description = "(Optional) A comment for the hosted zone. Defaults to Managed by Terraform."
  default = null
}

variable "delegation_set_id" {
  description = "(Optional) The ID of the reusable delegation set whose NS records you want to assign to the hosted zone. Conflicts with vpc as delegation sets can only be used for public zones."
  default = null
}

variable "force_destroy" {
  description = "(Optional) Whether to destroy all records (possibly managed outside of Terraform) in the zone when destroying the zone."
  default = null
}

variable "tags" {
  description = "(Optional) A map of tags to assign to the zone."
  default = null
}

variable "vpc" {
  description = "VPC Config Block"
  default = null
}

variable "vpc_id" {
  description = "(Required) ID of the VPC to associate.)"
  default = null
}

variable "vpc_region" {
  description = "(Optional) Region of the VPC to associate. Defaults to AWS provider region."
  default = null
}
