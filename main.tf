module "vpc" {
  source            = "./modules/vpc"
  alicloud_vpc_cidr = "192.168.0.0/16"
  web_vswitch_cidr  = "192.168.1.0/24"
  db_vswitch_cidr   = "192.168.2.0/24"
  additional_tags = {
    "namespace" = "dev"
  }
}