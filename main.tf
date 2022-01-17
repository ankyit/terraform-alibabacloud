module "vpc" {
  source            = "./modules/vpc"
  alicloud_vpc_cidr = "10.0.0.0/16"
  additional_tags = {
    "namespace" = "dev"
  }
}