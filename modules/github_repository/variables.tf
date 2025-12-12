#-------------------------------------------------------------------------------
# variables.tf
#-------------------------------------------------------------------------------

#-------------------------------------------------------------------------------
# Core Variables
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

  validation {
    condition     = contains(["public", "private", "internal"], var.visibility)
    error_message = "Visibility must be one of: public, private, internal."
  }
}

#-------------------------------------------------------------------------------
# Optional Variables
#-------------------------------------------------------------------------------

variable "allow_auto_merge" {
  description = "Set to true to allow auto-merging pull requests on the repository."
  type        = bool
  default     = false
}

variable "allow_merge_commit" {
  description = "Set to true to enable merge commits on the repository."
  type        = bool
  default     = true
}

variable "allow_rebase_merge" {
  description = "Set to true to enable rebase merges on the repository."
  type        = bool
  default     = true
}

variable "allow_squash_merge" {
  description = "Set to true to enable squash merges on the repository."
  type        = bool
  default     = true
}

variable "archived" {
  description = "Specifies if the repository should be archived."
  type        = bool
  default     = false
}

variable "auto_init" {
  description = "Set to true to produce an initial commit in the repository."
  type        = bool
  default     = true
}

variable "delete_branch_on_merge" {
  description = "Automatically delete head branch after a pull request is merged."
  type        = bool
  default     = false
}

variable "gitignore_template" {
  description = "Use the name of the template without the extension. For example, \"Haskell\"."
  type        = string
  default     = null
}

variable "has_discussions" {
  description = "Set to true to enable the (undocumented) GitHub Discussions features on the repository."
  type        = bool
  default     = false
}

variable "has_downloads" {
  description = "Set to true to enable the (deprecated) downloads features on the repository."
  type        = bool
  default     = false
}

variable "has_issues" {
  description = "Set to true to enable the GitHub Issues features on the repository."
  type        = bool
  default     = true
}

variable "has_projects" {
  description = "Set to true to enable the GitHub Projects features on the repository."
  type        = bool
  default     = false
}

variable "has_wiki" {
  description = "Set to true to enable the GitHub Wiki features on the repository."
  type        = bool
  default     = false
}

variable "license_template" {
  description = "Use the name of the template without the extension. For example, \"mit\" or \"mpl-2.0\"."
  type        = string
  default     = null
}

variable "topics" {
  description = "The list of topics of the repository."
  type        = list(string)
  default     = []
}

variable "vulnerability_alerts" {
  description = "Set to true to enable vulnerability alerts."
  type        = bool
  default     = true
}
