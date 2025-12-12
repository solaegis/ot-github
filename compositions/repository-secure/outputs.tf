#-------------------------------------------------------------------------------
# outputs.tf
#-------------------------------------------------------------------------------

output "id" {
  description = "The repository ID."
  value       = module.repository.id
}

output "name" {
  description = "The repository name."
  value       = module.repository.name
}

output "html_url" {
  description = "The URL to the repository."
  value       = module.repository.html_url
}
