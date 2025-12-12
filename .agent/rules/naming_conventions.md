# GCP Resource Naming Conventions

## General Rules

- Use kebab-case (lowercase with hyphens)
- Start with letter, end with letter or number
- Length: 3-63 characters (resource-dependent)
- No special characters except hyphens
- Include environment prefix for multi-env resources

## Naming Pattern

```
{environment}-{service}-{resource-type}-{description}
```

Examples:
- `prod-web-vm-app-server-01`
- `dev-data-bucket-logs`
- `staging-network-vpc-main`

## Resource-Specific Rules

### Compute Instances
- Pattern: `{env}-{purpose}-vm-{number}`
- Example: `prod-web-vm-01`

### Storage Buckets
- Pattern: `{org}-{env}-{purpose}-bucket`
- Example: `acme-prod-logs-bucket`
- Must be globally unique

### VPCs
- Pattern: `{env}-{purpose}-vpc`
- Example: `prod-main-vpc`

### Subnets
- Pattern: `{env}-{vpc}-subnet-{region}`
- Example: `prod-main-subnet-us-central1`

### Cloud SQL
- Pattern: `{env}-{app}-db-{type}`
- Example: `prod-app-db-postgresql`

### BigQuery Datasets
- Pattern: `{env}_{department}_{purpose}`
- Example: `prod_analytics_user_events`
- Use underscores (not hyphens)

## Labels

Always include these labels:
```hcl
{
  environment  = "prod"
  managed_by   = "terraform"
  cost_center  = "engineering"
  project      = "acme-web-app"
  owner        = "platform-team"
}
```
