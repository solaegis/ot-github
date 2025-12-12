# OpenTofu Project Standards

This project strictly adheres to **OpenTofu** standards. While it maintains compatibility with the Terraform ecosystem, all specific tool references and generated metadata must align with OpenTofu.

## 1. Terminology & Branding

*   **OpenTofu**: Use "OpenTofu" when referring to the tool execution, labels, or specific usage (e.g., `managed_by = "opentofu"`).
*   **Terraform**: Use "Terraform" *only* when referring to Generic HCL blocks or strict protocol compatibility (e.g., `terraform { ... }`, `terraform_remote_state`, "Terraform providers").

## 2. Code Generation

Unlike `ot-google`, this repository currently uses **manually maintained** modules. However, we adhere to the same structure so that future automation can be adopted if needed.

## 3. Key Concepts

*   **Resource**: A single provider object (e.g., `github_repository`).
*   **Resource Module**: A collection of connected resources performing a common action.
*   **Infrastructure Module**: A collection of resource modules serving a logical purpose.
*   **Composition**: A collection of infrastructure modules describing a complete environment (e.g., "Standard Repo Setup").

## 4. Code Structure

### Standard Files
Every module must contain the following standard files:
*   `main.tf`: Core logic, resource definitions, and data sources.
*   `variables.tf`: Input variable declarations.
*   `outputs.tf`: Output value definitions.
*   `versions.tf`: Provider and OpenTofu version constraints.

### File Headers
All `.tf` files must begin with a standard 80-character ASCII header:
```hcl
#-------------------------------------------------------------------------------
# filename.tf
#-------------------------------------------------------------------------------
```

### Variable Organization
Variables in `variables.tf` must be grouped into three distinct sections with corresponding 80-character headers:
1.  **Core Variables**: Standard identifiers (name, description, etc.).
2.  **Required Variables**: Functional inputs without defaults.
3.  **Optional Variables**: Inputs with defaults (usually `null`), sorted alphabetically.

## 5. Naming Conventions

### General
*   Use `snake_case` for all names.
*   Use underscores `_`.

### Resources
*   **Do not repeat the resource type in the name**.
    *   Bad: `resource "github_repository" "app_repo" {}`
    *   Good: `resource "github_repository" "app" {}`
*   Use `this` if the module creates a single primary resource of that type.

## 6. Code Styling

### Formatting
*   All code is formatted using `tofu fmt`.

### Comments
*   Use `#` for all comments. Do not use `//`.
