variable "alicloud_vpc_cidr" {
  type        = string
  description = "Provide CIDR Range for the VPC"
  default     = "192.168.0.0/16"
}
variable "alicloud_vpc_name" {
  type        = string
  description = "Alibaba Cloud Custom VPC Name"
  default     = "alicloud-custom-vpc"
}
variable "additional_tags" {
  type        = map(string)
  description = "Provide additional tags for the deployment"
  default     = {}
}
variable "web_vswitch_cidr" {
  type        = string
  description = "Provide vSwitch CIDR for the Web Zone"
  default     = "192.168.1.0/24"
}
variable "db_vswitch_cidr" {
  type        = string
  description = "Provide vSwitch CIDR for the DB Zone"
  default     = "192.168.11.0/24"
}