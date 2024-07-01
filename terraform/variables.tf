variable "image_registry" {
  type        = string
  description = "The FQDN for the container image registry that should be configured."
  default     = ""
}

variable "image_registry_username" {
  type        = string
  description = "A string representing the username for the container registry to be used. [Examples](https://github.com/docker/login-action)"
}

variable "image_registry_password" {
  type        = string
  description = "A string representing the password for the container registry to be used. [Examples](https://github.com/docker/login-action)"
}

variable "image_repo" {
  type        = string
  description = "A string representing the repository name that should be used in the configured container registry."
  default     = ""
}

variable "image_tag" {
  type        = string
  description = "A string representing the container image tag that should be used for the configured container repository."
  default     = "latest"
}

variable "prefix" {
  type        = string
  description = "A string representing a default prefix for resources created by this module."
  default     = "wiz-code"
}

variable "wiz_cli_client_id" {
  type        = string
  description = "A string representing the Client ID for the Wiz CLI service account."
}

variable "wiz_cli_client_secret" {
  type        = string
  description = "A string representing the Client Secret for the Wiz CLI service account."
}

variable "wiz_cli_environment" {
  type        = string
  description = "A string representing the environment for the Wiz CLI."
  default     = "app"
}

variable "wiz_cli_policy_iac" {
  type        = string
  description = "A string of comma separated Wiz CLI policies to use for evaluation."
  default     = ""
}

variable "wiz_cli_policy_secret" {
  type        = string
  description = "A string of comma separated Wiz CLI policies to use for evaluation."
  default     = ""
}

variable "wiz_cli_policy_vuln" {
  type        = string
  description = "A string of comma separated Wiz CLI policies to use for evaluation."
  default     = ""
}
