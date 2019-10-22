variable "name" {
  type = "string"
}
variable "location" {
  type = "string"
}

variable "address_prefix" {
  type = "string"
}

variable "service_endpoints" {
  type    = "list"
  default = []
}


variable "virtual_network_name" {
  type = "string"
}

variable "resource_group" {
  type = "string"
}

variable "tags" {
  type = "map"
}
