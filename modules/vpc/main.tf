resource "alicloud_vpc" "web_vpc" {
  vpc_name   = var.alicloud_vpc_name
  cidr_block = var.alicloud_vpc_cidr
  tags = merge(var.additional_tags, {
    "created-with" = "Terraform"
    },
  )
}