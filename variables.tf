variable "key_name" {
  description = "The SSH key name (NOTE: key should pre-exist)"
}

variable "teamid" {
  description = "(Required) Name of the team/group e.g. devops, dataengineering. Should not be changed after running 'tf apply'"
}

variable "prjid" {
  description = "(Required) Name of the project/stack e.g: mystack, nifieks, demoaci. Should not be changed after running 'tf apply'"
}

variable "rg_name" {
}

variable "rg_location" {
}

variable "source_address" {
}

variable "dest_port"{
}