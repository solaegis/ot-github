#-------------------------------------------------------------------------------
# variables.tf
#-------------------------------------------------------------------------------

#-------------------------------------------------------------------------------
# Core Variables
#-------------------------------------------------------------------------------

variable "name" {
  description = "The name of the team."
  type        = string
}

variable "description" {
  description = "A description of the team."
  type        = string
  default     = null
}

variable "privacy" {
  description = "The level of privacy for the team. Must be one of secret or closed."
  type        = string
  default     = "closed"

  validation {
    condition     = contains(["secret", "closed"], var.privacy)
    error_message = "Privacy must be one of: secret, closed."
  }
}

#-------------------------------------------------------------------------------
# Optional Variables
#-------------------------------------------------------------------------------

variable "parent_team_id" {
  description = "The ID of the parent team, if this is a nested team."
  type        = string
  default     = null
}
