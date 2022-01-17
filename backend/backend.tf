terraform {
  backend "oss" {
    bucket = "alicloud-terraform-backend-store"
    prefix = "backend/state"
    key    = "terraform.tfstate"
    region = "ap-southeast-1"
  }
}