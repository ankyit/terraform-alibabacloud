terraform {
  backend "oss" {
    bucket = "alicloud-terraform-backend-store"
    prefix = "web/state"
    key    = "terraform.tfstate"
    region = "ap-southeast-1"
  }
}