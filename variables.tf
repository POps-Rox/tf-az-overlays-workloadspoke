# Copyright (c) Microsoft Corporation.
# Licensed under the MIT License.


###########################
# Global Configuration   ##
###########################

variable "location" {
  description = "Azure region in which instance will be hosted"
  type        = string
}

variable "environment" {
  description = "The Terraform backend environment e.g. public or usgovernment"
  type        = string
}

variable "deploy_environment" {
  description = "Name of the workload's environnement"
  type        = string
}

variable "workload_name" {
  description = "Name of the workload_name"
  type        = string
}

variable "org_name" {
  description = "Name of the organization"
  type        = string
}

variable "disable_telemetry" {
  description = "If set to true, will disable the telemetry sent as part of the module."
  type        = string
  default     = false
}

#######################
# RG Configuration   ##
#######################

variable "create_spoke_resource_group" {
  description = "Controls if the resource group should be created. If set to false, the resource group name must be provided. Default is false."
  type        = bool
  default     = false
}

variable "use_location_short_name" {
  description = "Use short location name for resources naming (ie eastus -> eus). Default is true. If set to false, the full cli location name will be used. if custom naming is set, this variable will be ignored."
  type        = bool
  default     = true
}

variable "existing_resource_group_name" {
  description = "The name of the existing resource group to use. If not set, the name will be generated using the `org_name`, `workload_name`, `deploy_environment` and `environment` variables."
  type        = string
  default     = null
}

#####################################
# Private Endpoint Configuration   ##
#####################################

# tflint-ignore: terraform_unused_declarations
variable "enable_private_endpoint" {
  type        = bool
  description = "Manages a Private Endpoint to Azure Container Registry. Default is false."
  default     = false
}

# tflint-ignore: terraform_unused_declarations
variable "existing_private_dns_zone" {
  type        = any
  description = "Name of the existing private DNS zone"
  default     = null
}

# tflint-ignore: terraform_unused_declarations
variable "private_subnet_address_prefix" {
  type        = any
  description = "The name of the subnet for private endpoints"
  default     = null
}

# tflint-ignore: terraform_unused_declarations
variable "create_private_endpoint_subnet" {
  description = "Controls if the subnet should be created. If set to false, the subnet name must be provided. Default is false."
  type        = bool
  default     = false
}

# tflint-ignore: terraform_unused_declarations
variable "existing_private_subnet_name" {
  type        = any
  description = "Name of the existing subnet for the private endpoint"
  default     = null
}

# tflint-ignore: terraform_unused_declarations
variable "virtual_network_name" {
  type        = any
  description = "Name of the virtual network for the private endpoint"
  default     = null
}

#####################################
# Hub Configuration   ##
#####################################

variable "hub_virtual_network_name" {
  type        = any
  description = "The name of hub virtual network"
  default     = null
}

variable "hub_firewall_private_ip_address" {
  type        = any
  description = "The private IP of the hub virtual network firewall"
  default     = null
}

variable "hub_resource_group_name" {
  type        = any
  description = "The name of hub resource group"
  default     = null
}

variable "log_analytics_workspace_id" {
  type        = string
  description = "Specifies the id of the Log Analytics Workspace"
  default     = ""
}

variable "log_analytics_customer_id" {
  type        = string
  description = "The Workspace (or Customer) ID for the Log Analytics Workspace."
  default     = ""
}

# tflint-ignore: terraform_unused_declarations
variable "log_analytics_logs_retention_in_days" {
  type        = string
  description = "The log analytics workspace data retention in days. Possible values range between 30 and 730."
  default     = ""
}
