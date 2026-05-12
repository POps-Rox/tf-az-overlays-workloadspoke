# Copyright (c) Microsoft Corporation.
# Licensed under the MIT License.

#################################
# Global Configuration
#################################
variable "environment" {
  description = "Name of the environment. This will be used to name the private endpoint resources deployed by this module. default is 'public'"
  type        = string
}

variable "deploy_environment" {
  description = "Name of the workload's environnement (dev, test, prod, etc). This will be used to name the resources deployed by this module. default is 'dev'"
  type        = string
}

variable "org_name" {
  description = "Name of the organization. This will be used to name the resources deployed by this module. default is 'anoa'"
  type        = string
  default     = "anoa"
}

variable "default_location" {
  type        = string
  description = "If specified, will set the Azure region in which region bound resources will be deployed. Please see: https://azure.microsoft.com/en-gb/global-infrastructure/geographies/"
  default     = "eastus"
}

#################################
# Resource Lock Configuration
#################################

variable "enable_resource_locks" {
  type        = bool
  description = "If set to true, will enable resource locks for all resources deployed by this module where supported."
  default     = false
}

################################
# Landing Zone Configuration  ##
################################

#################
# Identity    ###
#################

variable "id_name" {
  description = "A name for the id. It defaults to id-core."
  type        = string
  default     = "id-core"
}

variable "id_vnet_address_space" {
  description = "The address space of the operations virtual network."
  type        = list(string)
  default     = ["10.8.9.0/26"]
}

variable "id_subnets" {
  type        = any
  description = "The subnets of the operations virtual network."
  default     = {}
}

variable "enable_forced_tunneling_on_id_route_table" {
  description = "Enables forced tunneling on the operations route table."
  type        = bool
  default     = true
}

variable "id_private_dns_zones" {
  description = "The private DNS zones of the operations virtual network."
  type        = list(string)
  default     = []
}

variable "enable_traffic_analytics" {
  description = "Enable Traffic Analytics for NSG Flow Logs"
  type        = bool
  default     = false
}
