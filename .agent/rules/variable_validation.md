# Variable Validation Patterns

All variables MUST include validation blocks where appropriate.

## Name Validation

```hcl
variable "name" {
  description = "Resource name (kebab-case, 3-63 chars)"
  type        = string
  
  validation {
    condition     = can(regex("^[a-z]([a-z0-9-]{1,61}[a-z0-9])?$", var.name))
    error_message = "Name must be kebab-case, 3-63 chars, start/end with letter/number."
  }
}
```

## Region/Zone Validation

```hcl
variable "region" {
  description = "GCP region"
  type        = string
  
  validation {
    condition     = can(regex("^[a-z]+-[a-z]+[0-9]$", var.region))
    error_message = "Invalid GCP region format (e.g., us-central1)."
  }
}

variable "zone" {
  description = "GCP zone"
  type        = string
  
  validation {
    condition     = can(regex("^[a-z]+-[a-z]+[0-9]-[a-z]$", var.zone))
    error_message = "Invalid GCP zone format (e.g., us-central1-a)."
  }
}
```

## CIDR Validation

```hcl
variable "ip_cidr_range" {
  description = "IP CIDR range"
  type        = string
  
  validation {
    condition     = can(cidrhost(var.ip_cidr_range, 0))
    error_message = "Must be valid CIDR notation (e.g., 10.0.0.0/24)."
  }
}
```

## Email Validation

```hcl
variable "admin_email" {
  description = "Administrator email"
  type        = string
  
  validation {
    condition     = can(regex("^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,}$", var.admin_email))
    error_message = "Must be valid email address."
  }
}
```

## Enum Validation

```hcl
variable "environment" {
  description = "Environment (dev/staging/prod)"
  type        = string
  
  validation {
    condition     = contains(["dev", "staging", "prod"], var.environment)
    error_message = "Must be one of: dev, staging, prod."
  }
}
```

## List Length Validation

```hcl
variable "allowed_ips" {
  description = "Allowed IP addresses (max 10)"
  type        = list(string)
  
  validation {
    condition     = length(var.allowed_ips) <= 10
    error_message = "Maximum 10 IP addresses allowed."
  }
}
```
