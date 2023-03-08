variable "azurerm_resource_group_name" {
  type        = string
  default     = "1-b13ea3a5-playground-sandbox"
  description = "Name of the predefined resource group to use."
}
variable "azurerm_location" {
  type        = string
  default     = "eastus"
  description = "Location of the resource group."
}
variable "vm_name" {
  type        = string
  default     = "myVm"
  description = "Name of the virtual machine resource."
}
variable "vm_computer_name" {
  type        = string
  default     = "myvm"
  description = "Hostname of the virtual machine resource."
}
