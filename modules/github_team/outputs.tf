#-------------------------------------------------------------------------------
# outputs.tf
#-------------------------------------------------------------------------------

output "id" {
  description = "The team ID."
  value       = github_team.this.id
}

output "node_id" {
  description = "The team node ID."
  value       = github_team.this.node_id
}

output "slug" {
  description = "The slug of the team name."
  value       = github_team.this.slug
}
