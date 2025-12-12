# Terraform/OpenTofu Best Practices

All modules follow these standards:

## Required Variables
- `project_id` - GCP project
- `name` - Resource name (validated)
- `labels` - Standard labels map

## Required Labels
```hcl
labels = merge(var.labels, {
  environment = var.environment
  managed_by  = "terraform"
  cost_center = var.cost_center
})
```

## Security Defaults
- Encryption at rest enabled
- Private endpoints preferred
- Least privilege IAM
- Audit logging enabled

## Version Constraints
```hcl
terraform {
  required_version = ">= 1.0"
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = ">= 5.0, < 6.0"
    }
  }
}
```
