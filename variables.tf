variable "application" {
  description = "Name of the application"
  type        = string
}

variable "environment" {
  description = "Name of the AWS environment or account"
  type        = string
}

variable "managing_cost_center" {
  description = "Name of the managing cost center"
  type        = number
}

variable "product" {
  description = "Name of the product"
  type        = string
}

variable "region" {
  description = "Name of the AWS region"
  type        = string
}

variable "team" {
  description = "Name of the team that owns a tagged resource"
  type        = string
  default     = null
}

variable "tf_repo" {
  description = "Name of the repository in Github where the code can be found"
  type        = string
  default     = null
}

variable "tf_backend" {
  description = "Full path of the Terraform backend"
  type        = string
  default     = null
}