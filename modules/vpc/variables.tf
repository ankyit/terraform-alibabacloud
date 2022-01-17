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