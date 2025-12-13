# ot-github

![Maintenance](https://img.shields.io/badge/Maintained%3F-yes-green.svg)
![Pre-commit](https://img.shields.io/badge/pre--commit-enabled-brightgreen?logo=pre-commit)
![OpenTofu](https://img.shields.io/badge/OpenTofu-1.6+-orange?logo=opentofu)
![GitHub issues](https://img.shields.io/github/issues/solaegis/ot-github)

This repository contains OpenTofu configuration for managing GitHub resources.

## 🛠️ Development

### Pre-commit Hooks
This repository uses [pre-commit](https://pre-commit.com/) to enforce code quality and consistency.

To set up the hooks locally:
```bash
# 1. Install pre-commit
brew install pre-commit  # macOS

# 2. Install the hooks
pre-commit install
```

This will run checks (OpenTofu formatting, validation, docs generation) automatically before every commit.
