#-------------------------------------------------------------------------------
# main.tf
#-------------------------------------------------------------------------------

resource "github_branch_protection" "this" {
  repository_id = var.repository_id
  pattern       = var.pattern

  enforce_admins = var.enforce_admins

  required_status_checks {
    strict   = var.required_status_checks.strict
    contexts = var.required_status_checks.contexts
  }

  required_pull_request_reviews {
    dismiss_stale_reviews           = var.required_pull_request_reviews.dismiss_stale_reviews
    restrict_dismissals             = var.required_pull_request_reviews.restrict_dismissals
    dismissal_restrictions          = var.required_pull_request_reviews.dismissal_restrictions
    require_code_owner_reviews      = var.required_pull_request_reviews.require_code_owner_reviews
    required_approving_review_count = var.required_pull_request_reviews.required_approving_review_count
  }

  # Only include restrict_pushes for organization repos when push_restrictions is set
  dynamic "restrict_pushes" {
    for_each = length(var.push_restrictions) > 0 ? [1] : []
    content {
      blocks_creations = false
      push_allowances  = var.push_restrictions
    }
  }
}
