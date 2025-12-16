# Terraform Provider v1.0 Release Plan

This document outlines the plan for releasing the next major version of the Airbyte Terraform Provider, addressing the breaking changes and migration requirements identified in [airbytehq/airbyte-internal-issues#15064](https://github.com/airbytehq/airbyte-internal-issues/issues/15064).

**Owners**: @aaronsteers, @clnoll

## Executive Summary

The next release of the Terraform provider will be a **major version bump (v1.0.0)** due to breaking changes that remove all individual source and destination connector resources. Users must migrate to using the new [Airbyte Terraform Modules](https://airbytehq.github.io/airbyte-terraform-modules/) for connector-specific configurations.

## Background

The original Terraform provider required users to use only the version of connectors present when the provider was created. This was problematic because connector versions update frequently, and users were locked to outdated versions.

In June 2025, this was fixed by:
1. Removing all sources and destinations from the base terraform module
2. Creating separate, versioned modules for each connector at [airbytehq.github.io/airbyte-terraform-modules/](https://airbytehq.github.io/airbyte-terraform-modules/)

The v0.13.0 release (September 2024) prepared for this change but did not delete the connector modules. The next regeneration will complete this transition.

## Breaking Changes

### Resources Being Removed

All `airbyte_source_*` and `airbyte_destination_*` resources will be removed from the provider. This includes:
- 584 source connector resources (e.g., `airbyte_source_postgres`, `airbyte_source_salesforce`)
- 85 destination connector resources (e.g., `airbyte_destination_bigquery`, `airbyte_destination_snowflake`)

### Resources Remaining

The following core resources will remain in the provider:
- `airbyte_connection` - Data pipeline configurations
- `airbyte_workspace` - Workspace management
- `airbyte_permission` - Access control
- `airbyte_source_definition` / `airbyte_destination_definition` - Connector type definitions
- `airbyte_declarative_source_definition` - Custom Low Code CDK sources
- `airbyte_source_custom` / `airbyte_destination_custom` - Custom connector instances

## Bug Fixes Included

### Phantom Diffs in airbyte_connection (oncall#9727)

**Status**: Fixed (issue closed)

The provider was generating phantom configuration diffs for `airbyte_connection` resources when `selected_fields` were specified. This was caused by inconsistent semantic equality logic between `ReadResource` and `PlanResourceChange` phases.

**Customer Impact**: Miro was blocked on this issue.

### Speakeasy Compatibility (airbyte-platform-internal#18232)

Changes to the OpenAPI spec for compatibility with newer Speakeasy versions.

## Pre-Release Checklist

### 1. Fix Regeneration GitHub Action

**Issue**: The `speakeasy_sdk_generation.yml` workflow is failing and creates PRs instead of pushing directly to main.

**Current Configuration**:
```yaml
mode: pr  # Creates PRs for review
```

**Action Items**:
- [ ] Investigate why the workflow is failing
- [ ] Decide if `mode: pr` is the desired behavior (recommended for review)
- [ ] Ensure the workflow can successfully regenerate the provider

### 2. Documentation Updates

**Action Items**:
- [ ] Update README.md to reflect the new architecture
- [ ] Add migration guide section to documentation
- [ ] Update examples to use the new module-based approach
- [ ] Ensure CONTRIBUTING.md has accurate build/test/publish instructions

### 3. Migration Documentation

Create documentation showing:

#### Where Modules Live
- **Documentation Site**: https://airbytehq.github.io/airbyte-terraform-modules/
- **Module Downloads**: Available via GCS bucket links on the documentation site

#### How to Use Modules

**Option A: Remote Module Reference**
```hcl
module "source_postgres" {
  source  = "https://storage.googleapis.com/airbyte-terraform-modules/source-postgres/0.X.Y/source-postgres.zip"
  
  # Configuration
  host     = "localhost"
  port     = 5432
  database = "mydb"
  # ... other config
}
```

**Option B: Local Module (download and store in repo)**
```hcl
module "source_postgres" {
  source = "./modules/source-postgres"
  
  # Configuration
  host     = "localhost"
  port     = 5432
  database = "mydb"
}
```

#### Migration Example: Old Style to New Style

**Before (v0.13.x)**:
```hcl
resource "airbyte_source_postgres" "my_source" {
  name         = "My Postgres Source"
  workspace_id = airbyte_workspace.my_workspace.id
  
  configuration = {
    host     = "localhost"
    port     = 5432
    database = "mydb"
    username = "user"
    password = "pass"
  }
}
```

**After (v1.0.0)**:
```hcl
# Use the separate module for connector configuration
module "source_postgres_config" {
  source = "https://storage.googleapis.com/airbyte-terraform-modules/source-postgres/4.3.0/source-postgres.zip"
  
  host     = "localhost"
  port     = 5432
  database = "mydb"
  username = "user"
  password = "pass"
}

# Use airbyte_source_custom for the source instance
resource "airbyte_source_custom" "my_source" {
  name                   = "My Postgres Source"
  workspace_id           = airbyte_workspace.my_workspace.id
  source_definition_id   = "decd338e-5647-4c0b-adf4-da0e75f5a750"  # Postgres source definition ID
  configuration          = module.source_postgres_config.configuration
}
```

### 4. User Notification

**Channels**:
- [ ] Terraform Registry release notes
- [ ] GitHub release notes with migration guide
- [ ] Airbyte documentation site
- [ ] Slack announcement (if applicable)
- [ ] Email to known Terraform users (e.g., Miro)

**Key Messages**:
1. This is a major version bump with breaking changes
2. All `airbyte_source_*` and `airbyte_destination_*` resources are removed
3. Users must migrate to the new module-based approach
4. Link to migration documentation
5. Link to new modules site

## Release Process

### Step 1: Regenerate Provider

1. Trigger the `speakeasy_sdk_generation.yml` workflow
2. Review the generated PR
3. Verify all connector resources are removed
4. Verify bug fixes are included
5. Merge the PR

### Step 2: Update Version

1. Update `terraform.version` in `gen.yaml` to `1.0.0`
2. Update version references in README.md
3. Commit and push to main

### Step 3: Create Release

```bash
git checkout main
git pull origin main
git tag v1.0.0
git push origin v1.0.0
```

### Step 4: Verify Release

1. Monitor the `release.yml` workflow
2. Verify binaries are built for all platforms
3. Check the [Terraform Registry](https://registry.terraform.io/providers/airbytehq/airbyte) for the new version
4. Test installation with a fresh Terraform configuration

### Step 5: Post-Release

1. Publish release notes on GitHub
2. Send user notifications
3. Monitor for issues and feedback

## Timeline

| Task | Owner | Target Date | Status |
|------|-------|-------------|--------|
| Fix regeneration GHA | TBD | TBD | Not Started |
| Update CONTRIBUTING.md | Devin | Done | Complete |
| Create migration documentation | TBD | TBD | Not Started |
| Regenerate provider | TBD | TBD | Not Started |
| User notification draft | TBD | TBD | Not Started |
| Release v1.0.0 | TBD | TBD | Not Started |

## Risks and Mitigations

| Risk | Impact | Mitigation |
|------|--------|------------|
| Users don't see migration guide | High - broken deployments | Multiple notification channels, prominent release notes |
| Module download URLs change | Medium - broken configs | Use stable GCS bucket URLs, document versioning |
| Regeneration workflow fails | Medium - delays release | Debug workflow before release, have manual fallback |
| Missing connector modules | High - users can't migrate | Verify all connectors have corresponding modules |

## Open Questions

1. Should we provide a migration script to help users convert their configurations?
2. What is the deprecation timeline for users still on v0.x?
3. Should we maintain a v0.x branch for critical security fixes?

## References

- [GitHub Issue #15064](https://github.com/airbytehq/airbyte-internal-issues/issues/15064)
- [Oncall Issue #9727](https://github.com/airbytehq/oncall/issues/9727) - Phantom diffs bug
- [Terraform Modules Site](https://airbytehq.github.io/airbyte-terraform-modules/)
- [Speakeasy Documentation](https://www.speakeasy.com/docs/terraform)
- [Terraform Registry](https://registry.terraform.io/providers/airbytehq/airbyte)
