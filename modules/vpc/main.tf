data "alicloud_zones" "ali_zones" {}
resource "alicloud_vpc" "web_vpc" {
  vpc_name   = var.alicloud_vpc_name
  cidr_block = var.alicloud_vpc_cidr
  tags = merge(var.additional_tags, {
    "created-with" = "Terraform"
    },
  )
}
resource "alicloud_vswitch" "web_vswitch" {
  vswitch_name = "web-vswitch"
  description  = "VSwitch for the WebServer"
  cidr_block   = var.web_vswitch_cidr
  vpc_id       = alicloud_vpc.web_vpc.id
  zone_id      = data.alicloud_zones.ali_zones.zones.0.id
  tags = merge(var.additional_tags, {
    "created-with" = "Terraform"
    },
  )
}
resource "alicloud_vswitch" "db_vswitch" {
  vswitch_name = "db-vswitch"
  description  = "VSwitch for the DB Server"
  cidr_block   = var.db_vswitch_cidr
  vpc_id       = alicloud_vpc.web_vpc.id
  zone_id      = data.alicloud_zones.ali_zones.zones.1.id
  tags = merge(var.additional_tags, {
    "created-with" = "Terraform"
    },
  )
}