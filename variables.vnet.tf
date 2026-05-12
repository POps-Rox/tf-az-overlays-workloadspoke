
# Copyright (c) Microsoft Corporation.
# Licensed under the MIT License.

##########################
# VNet Configuration    ##
##########################

variable "virtual_network_address_space" {
  type        = any
  description = "The address space to be used for the Azure virtual network."
  default     = []
}

variable "create_ddos_plan" {
  type        = bool
  description = "Create an ddos plan - Default is false"
  default     = false
}

variable "ddos_plan_name" {
  type        = any
  description = "The name of AzureNetwork DDoS Protection Plan"
  default     = null
}

variable "dns_servers" {
  type        = any
  description = "List of dns servers to use for virtual network"
  default     = []
}

# tflint-ignore: terraform_unused_declarations
variable "create_network_watcher" {
  type        = bool
  description = "Controls if Network Watcher resources should be created for the Azure subscription"
  default     = false
}
