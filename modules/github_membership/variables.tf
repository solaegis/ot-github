#-------------------------------------------------------------------------------
# variables.tf
#-------------------------------------------------------------------------------

#-------------------------------------------------------------------------------
# Core Variables
#-------------------------------------------------------------------------------

variable "username" {
  description = "The user name to add to the organization."
  type        = string
}

variable "role" {
  description = "The role of the user within the organization. Must be one of member or admin."
  type        = string
  default     = "member"

  validation {
    condition     = contains(["member", "admin"], var.role)
    error_message = "Role must be one of: member, admin."
  }
}
