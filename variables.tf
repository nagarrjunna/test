variable "vnet_name" {
  description = "Name of the virtual network"
  type        = string
}

variable "vnet_address_space" {
  description = "Address space for the virtual network"
  type        = string
}

variable "location" {
  description = "Location of the VNet"
  type        = string
  default     = "East US"
}

variable "resource_group_name" {
  description = "Resource group where the VNet will be created"
  type        = string
}

variable "subnet_names" {
  description = "List of subnet names"
  type        = list(string)
}

variable "subnet_address_spaces" {
  description = "List of subnet address spaces"
  type        = list(string)
}

variable "tags" {
  description = "A map of tags to assign to the resource"
  type        = map(string)
  default     = {}
}
