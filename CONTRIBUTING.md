# Contributing to This Repository

## Important: This is a Generated Codebase

> [!Important]
> This repository contains predominantly generated code. We do not accept direct changes to generated files. Report issues on GitHub or submit fixes to the upstream OpenAPI spec in [airbyte-platform](https://github.com/airbytehq/airbyte-platform).

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

### Code Files (Not Generated)

TD-TODO: Devin, please list key code files here for maintainers - e.g. the python generation script.

## Releasing

After each merge to main, a draft release is created/updated automatically. You can click "Edit" and the "Publish release" button to finalize it. Once published, the release is synced to the Terraform Registry within minutes.

Terraform receives webhook notifications from GitHub based on the "Terraform Registry" GitHub App - not to be confused with "Terraform Cloud" which is user user-targeted app, not for publishing.

## Important Note on Pre-releases

You may publish a prerelease by following the steps below:

1. Modify an existing release draft, setting its `Title` and `Tag` _both_ to the desired prerelease version (e.g., `v1.0.0-rc1`). This version will persist across future draft updates until you change it again or delete the draft.
2. Click "Save draft". At this point, your version number will be correct but the attached build artifacts will still correspond to the previous version number.
3. Manually rerun the "Release Drafter" workflow from the Actions tab to update the release draft assets with build artifacts matching the new version.
4. Verify that the correctly-named assets are attached to the draft release.
5. Publish as usual by clicking "Edit" -> "Publish release". You can uncheck the "Set as latest" checkbox but _do not_ check the "Set as a pre-release" checkbox.

> [!Warning]
> Do not check the box to "Set as a pre-release" even if you are publishing a prerelease. Doing so will prevent the Terraform Registry from syncing the release, which in turn prevents users from installing the new version of the provider.

## Updating Upstream Dependencies

### Updating the OpenAPI Spec

In general, no upstream action should be needed to capture updates to upstream OpenAPI spec changes. A legacy `api_terraform.yaml` file is no longer used, and instead this provider performs its own spec transformations (as needed) directly from the upstream OpenAPI spec document.

The OpenAPI spec is maintained in the [airbyte-platform-internal](https://github.com/airbytehq/airbyte-platform-internal) repository. TK-TODO: Devin, please give a deep link here to the `api_spec.yaml` file on that repo's master branch.

### Updating the Connector Models

In general, no upstream action should be needed to capture updates to upstream connector models.

Connector models are dynamically generated based on the connector definitions in the Airbyte connector registry. You can regenerate this provider at any time to pick up new or updated connector models.
