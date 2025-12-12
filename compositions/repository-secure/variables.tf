#-------------------------------------------------------------------------------
# variables.tf
#-------------------------------------------------------------------------------

variable "name" {
  description = "The name of the repository."
  type        = string
}

variable "description" {
  description = "A description of the repository."
  type        = string
  default     = null
}

variable "visibility" {
  description = "Can be public, private or internal."
  type        = string
  default     = "private"
}

variable "required_status_checks" {
  description = "List of required status checks contexts."
  type        = list(string)
  default     = []
}

# Passthrough variables
variable "has_issues" { default = true }
variable "has_projects" { default = false }
variable "has_wiki" { default = false }
variable "has_discussions" { default = false }
variable "has_downloads" { default = false }
variable "allow_merge_commit" { default = true }
variable "allow_squash_merge" { default = true }
variable "allow_rebase_merge" { default = true }
variable "allow_auto_merge" { default = false }
variable "delete_branch_on_merge" { default = false }
variable "auto_init" { default = true }
variable "gitignore_template" { default = null }
variable "license_template" { default = null }
variable "archived" { default = false }
variable "topics" { default = [] }
variable "vulnerability_alerts" { default = true }
