#-------------------------------------------------------------------------------
# variables.tf
#-------------------------------------------------------------------------------

#-------------------------------------------------------------------------------
# Core Variables
#-------------------------------------------------------------------------------

variable "repository_id" {
  description = "The name or node ID of the repository."
  type        = string
}

variable "pattern" {
  description = "Identifies the protection rule pattern."
  type        = string
  default     = "main"
}

#-------------------------------------------------------------------------------
# Optional Variables
#-------------------------------------------------------------------------------

variable "enforce_admins" {
  description = "Setting this to true enforces status checks for repository administrators."
  type        = bool
  default     = true
}

variable "required_status_checks" {
  description = "Enforce status checks for repository."
  type = object({
    strict   = optional(bool, true)
    contexts = optional(list(string), [])
  })
  default = {}
}

variable "required_pull_request_reviews" {
  description = "Enforce restrictions for pull request reviews."
  type = object({
    dismiss_stale_reviews           = optional(bool, true)
    restrict_dismissals             = optional(bool, false)
    dismissal_restrictions          = optional(list(string), [])
    require_code_owner_reviews      = optional(bool, true)
    required_approving_review_count = optional(number, 1)
  })
  default = {}
}

variable "push_restrictions" {
  description = "The list of actor IDs/teams/users that may push to the branch."
  type        = list(string)
  default     = []
}
