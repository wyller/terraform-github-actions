variable "resource_group_name" {
  type        = string
  description = "resource group name"
  default     = "student-rg"
}

variable "resource_group_location" {
  type        = string
  description = "resource group location"
  default     = "eastus"
}

variable "vm_username" {
  type        = string
  description = "vm username"
  default     = "azureuser"
}

variable "vm_password" {
  type        = string
  description = "vm password"
  default     = "admin@123"
}

variable "username" {
  type        = string
  description = "O usuario que vai ser usado pra acessar a VM."
  default     = "admin"
}
