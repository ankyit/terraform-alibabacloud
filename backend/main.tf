resource "alicloud_oss_bucket" "oss_backend" {
  bucket = "alicloud-terraform-backend-store"
  acl    = "private"
}