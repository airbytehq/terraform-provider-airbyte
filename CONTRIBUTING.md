# Contributing to This Repository

This repository contains generated code. We do not accept direct changes to generated files. Report issues on GitHub or submit fixes to the upstream OpenAPI spec in [airbyte-platform](https://github.com/airbytehq/airbyte-platform).

## For Maintainers

### Regenerating the Provider

Use the GitHub Actions workflow: [Actions > Generate](https://github.com/airbytehq/terraform-provider-airbyte/actions/workflows/speakeasy_sdk_generation.yml) > Run workflow

### Release Process

Releases use a draft-based workflow:

1. The `release-drafter.yml` workflow runs on every push to main, creating/updating a draft release with pre-built assets
2. Review the draft at [Releases](https://github.com/airbytehq/terraform-provider-airbyte/releases)
3. Edit the draft version if needed (e.g., `1.0.0-rc1` for release candidates)
4. Click "Publish release" - assets are already attached and signed

**Important**: Do not check "Set as a pre-release" unless you want to delay Terraform Registry sync.

### Local Development

```bash
# Build
go build -o terraform-provider-airbyte

# Debug mode
go run main.go --debug
# Copy TF_REATTACH_PROVIDERS from output, then in another terminal:
cd examples/your-example
export TF_REATTACH_PROVIDERS='...'
terraform plan
```

### Configuration Files

| File | Purpose |
|------|---------|
| `.speakeasy/workflow.yaml` | Speakeasy generation config |
| `gen.yaml` | Provider version and settings |
| `.goreleaser.yml` | Build and release config |
| `overlays/terraform_speakeasy.yaml` | Speakeasy customizations |
