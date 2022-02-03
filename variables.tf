variable "teamid" {
  description = "(Required) Name of the team/group e.g. devops, dataengineering. Should not be changed after running 'tf apply'"
  type        = string
}

variable "prjid" {
  description = "(Required) Name of the project/stack e.g: mystack, nifieks, demoaci. Should not be changed after running 'tf apply'"
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group in which to create the virtual network."
  type        = string
}

variable "location" {
  description = " The location/region where the virtual network is created. Changing this forces a new resource to be created."
  default     = "westus2"
  type        = string
}

variable "dest_port" {
  description = "dest port"
  default     = []
  type        = list(string)
}

variable "source_address" {
  description = "dest port"
  default     = ""
  type        = string
}

variable "deploy_network_security_group" {
  description = "feature flag to deploy this resource or not"
  default     = true
  type        = bool
}

variable "network_security_group_name" {
  description = "The name of the network security group"
  type        = string
  default     = null
}
