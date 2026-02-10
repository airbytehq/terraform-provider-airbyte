# Contributing to This Repository

## Important: This is a Generated Codebase

> [!Important]
> This repository contains predominantly generated code. We do not accept direct changes to generated files. Report issues on GitHub or submit fixes to the upstream OpenAPI spec in [airbyte-platform](https://github.com/airbytehq/airbyte-platform).

## For Maintainers

### Regenerating the Provider

Use the GitHub Actions workflow: [Actions > Generate](https://github.com/airbytehq/terraform-provider-airbyte/actions/workflows/generate-command.yml) > Run workflow

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

| File | Purpose |
|------|---------|
| `scripts/generate_terraform_spec.py` | Generates the Terraform-specific OpenAPI spec from upstream sources |
| `overlays/terraform_speakeasy.yaml` | Speakeasy overlay for Terraform-specific customizations |
| `.github/workflows/release-drafter.yml` | Creates draft releases with pre-built assets |
| `.github/workflows/generate-command.yml` | Triggers provider regeneration via Speakeasy |

### End-to-End Testing with CI Artifacts

The **"Test (Full)"** workflow ([`test-full.yml`](.github/workflows/test-full.yml)) runs on every PR and produces downloadable provider binaries as CI artifacts. These binaries can be used to test unreleased provider changes with real Airbyte Cloud resources before merging.

**CI artifacts produced on every PR:**

| Artifact | Contents | Retention |
|----------|----------|-----------|
| `provider_binaries` | Compiled provider binaries (`linux/amd64`, `darwin/arm64`) | 7 days |
| `generated_provider_code` | Generated provider source code | 7 days |
| `api_terraform_spec` | Generated OpenAPI spec | 30 days |

**To download binaries from a PR's CI run:**

```bash
# List recent "Test (Full)" runs
gh run list --workflow="test-full.yml" --limit 5

# Download binaries (replace <RUN_ID> with the run ID)
gh run download <RUN_ID> --name provider_binaries --dir ./provider-bin
```

For the full testing guide (configuring dev overrides, authentication, running Terraform with CI-built binaries), see [`test-projects/README.md`](test-projects/README.md).

## Releasing

After each merge to main, a draft release is created/updated automatically. You can click "Edit" and the "Publish release" button to finalize it. Once published, the release is synced to the Terraform Registry within minutes.

Terraform receives webhook notifications from GitHub, see below.

### Giving Terraform Registry Access to Webhook Notifications

In order for Terraform Registry to receive webhook notifications, an admin user on GitHub must install the "Terraform Registry" GitHub App on behalf of the Airbyte organization. This app is associated with that admin user, specifically, and allows Terraform to receive webhook notifications when new releases are published.

Note that the "Terraform Registry" GitHub App is not to be confused with "Terraform Cloud" which is their customer-targeted app, not for publishing.

### Logging into the Terraform Registry

You will log in to the Terraform Registry is performed with your GitHub account here: [Terraform Registry Login](https://registry.terraform.io/sign-in). When you sign in, you must select "legacy" login and then "GitHub" for login provider, since we do not have a registered (newer) Hashicorp login account.

## Important Note on Pre-releases

You may publish a prerelease by following the steps below:

1. Modify an existing release draft, setting its `Title` and `Tag` _both_ to the desired prerelease version (e.g., `v1.0.0-rc1`). This version will persist across future draft updates until you change it again or delete the draft.
2. Click "Save draft". At this point, your version number will be correct but the attached build artifacts will still correspond to the previous version number.
3. Manually rerun the "Release Drafter" workflow from the Actions tab to update the release draft assets with build artifacts matching the new version.
4. Verify that the correctly-named assets are attached to the draft release.
5. Publish as usual by clicking "Edit" -> "Publish release". You can uncheck the "Set as latest" checkbox but _do not_ check the "Set as a pre-release" checkbox.

> [!Warning]
> Do not check the box to "Set as a pre-release" even if you are publishing a prerelease. Doing so will prevent the Terraform Registry from syncing the release, which in turn prevents users from installing the new version of the provider.
>
> Terraform will still recognize the version as a prerelease based on the version string itself (e.g., `1.0.0-rc1`).

## Updating Upstream Dependencies

### Updating the OpenAPI Spec

In general, no upstream action should be needed to capture updates to upstream OpenAPI spec changes. A legacy `api_terraform.yaml` file is no longer used, and instead this provider performs its own spec transformations (as needed) directly from the upstream OpenAPI spec document.

The OpenAPI spec is maintained in the [airbyte-platform-internal](https://github.com/airbytehq/airbyte-platform-internal) repository at [`oss/airbyte-api/server-api/src/main/openapi/api.yaml`](https://github.com/airbytehq/airbyte-platform-internal/blob/master/oss/airbyte-api/server-api/src/main/openapi/api.yaml).

### Updating the Connector Models

In general, no upstream action should be needed to capture updates to upstream connector models.

Connector models are dynamically generated based on the connector definitions in the Airbyte connector registry. You can regenerate this provider at any time to pick up new or updated connector models.
