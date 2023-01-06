variable "application" {
  description = "Name of application, e.g. queue-processor"
  type        = string
}

variable "environment" {
  description = "Name of AWS environment/account, e.g. review"
  type        = string
  validation {
    condition     = contains(["sandbox", "review", "test", "uat", "rc", "prod", "shared-services"], lower(format("%v", var.environment)))
    error_message = "Valid values for environment are sandbox, review, test, uat, rc, prod, shared-services."
  }
}

variable "managing_cost_center" {
  description = "Name of managing cost center, for now the default is always 01"
  type        = number
  default     = 01
}

variable "product" {
  description = "Name"
  type        = string
}

variable "region" {
  description = "Name of AWS region"
  type        = string
  default     = "us-east-1"
}

variable "team" {
  description = "Name of team that owns a tagged resource, e.g. devops"
  type        = string
  default     = null
}

variable "tf_repo" {
  description = "Name of the repo in Github (or otehr vcs) where the code can be found"
  type        = string
  default     = null
}

variable "tf_backend" {
  description = "Full path of where the terraform backend can be found. Only use this if its different from the standard"
  type        = string
  default     = null
}