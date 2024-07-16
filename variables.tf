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
}

variable "az_subscription_id" {
  type        = string
  description = "azure subscription id"
}

variable "az_tenant_id" {
  type        = string
  description = "azure tenant id"
}

variable "az_client_id" {
  type        = string
  description = "azure client id"
}

variable "az_client_secret" {
  type        = string
  description = "azure clinet secret"
}
