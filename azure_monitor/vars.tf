
variable "query_alert_name" {
  type = string
  description = "The name of the query alert"
}

variable "location" {
  type = string
  description = "The location the resource will be deployed to"
}

variable "resource_group_name" {
  type = string
  description = "The resource group Name"
}

variable "data_source_id" {
  type = string
  description = "The resource URI over which log search query is to be run"
}

variable "query_alert_description" {
  type = string
  description = "The description of the query log"
  default = "A custom query log that tracks policies that are non compliant"
}

variable "enabled" {
  type = string
  description = "hether this scheduled query rule is enabled"
  default = true
}

######################
# ACTION GROUP
#######################

variable "action_group_name" {
  type = string
  description = "Name of the action group"
}

variable "action_group_short_name" {
  type = string
  description = "The short name for the action group"
}

variable "action_group_email_name" {
  type = string
  description = ""
}

variable "action_group_email_address" {
  type  = string
  description = ""
}

variable "common_alert_schema" {
  type  = string
  description = "Enables or disables the common alert schema"
  default = true
}

variable "email_subject" {
  type = string
  description = "The email subject"
  default = "Non compliant policy/s"
}

variable "severity" {
  type = number
  description = ""
  default = 3
}

variable "frequency" {
  type = number
  description = ""
  default = 5
}

variable "time_window" {
  type = number
  description = ""
  default = 5
}

variable "threshold" {
  type = number
  description = ""
  default = 0
}

variable "operator" {
  type = string
  description = ""
  default = "GreaterThan"
}

variable "tags" {
  type = map(string)
  description = ""
}