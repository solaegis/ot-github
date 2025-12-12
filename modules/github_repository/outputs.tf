#-------------------------------------------------------------------------------
# outputs.tf
#-------------------------------------------------------------------------------

output "id" {
  description = "The repository ID."
  value       = github_repository.this.repo_id
}

output "name" {
  description = "The repository name."
  value       = github_repository.this.name
}

output "full_name" {
  description = "The full name of the repository (org/name)."
  value       = github_repository.this.full_name
}

output "html_url" {
  description = "The URL to the repository on GitHub."
  value       = github_repository.this.html_url
}

output "ssh_clone_url" {
  description = "The URL to clone the repository via SSH."
  value       = github_repository.this.ssh_clone_url
}

output "http_clone_url" {
  description = "The URL to clone the repository via HTTPS."
  value       = github_repository.this.http_clone_url
}
