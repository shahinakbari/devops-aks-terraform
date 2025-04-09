variable "resource_group_name" {
  type        = string
  description = "The name of the resource group"
}

variable "location" {
  type        = string
  default     = "East US"
  description = "The Azure region to deploy resources"
}

variable "aks_name" {
  type        = string
  description = "The name of the AKS cluster"
}

variable "node_count" {
  type    = number
  default = 1
}

variable "vm_size" {
  type    = string
  default = "Standard_B2s"
}
