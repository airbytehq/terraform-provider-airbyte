# Terraform Example Projects

This directory contains example Terraform projects demonstrating the Airbyte provider with GitHub Artifact-based state management.

## Projects

### Pre-1.0 (`pre-1.0/`)

Uses provider version `~> 0.13.0` with connector-specific resources:
- `airbyte_source_faker` - typed configuration blocks
- `airbyte_destination_dev_null` - typed configuration blocks

Creates two faker sources with different seeds and connections to a dev-null destination.

### 1.0 (`1.0/`)

Uses provider version `>= 1.0.0` with generic resources:
- `airbyte_source` with `definition_id` and JSON configuration
- `airbyte_destination` with `definition_id` and JSON configuration

Creates source-faker, source-datagen, and connections to a dev-null destination.

**Note:** The 1.0 example requires provider version 1.0.0 which is not yet released to the Terraform Registry.

## Prerequisites

1. An Airbyte Cloud account or self-hosted Airbyte instance
2. An Airbyte API key
3. Terraform >= 1.0

## Local Usage

1. Set your Airbyte API key:
   ```bash
   export TF_VAR_airbyte_api_key="your-api-key"
   ```

2. Navigate to a project directory and initialize:
   ```bash
   cd pre-1.0  # or 1.0
   terraform init
   terraform plan
   terraform apply
   ```

## CI/CD with GitHub Actions

The `tf-examples-command.yml` workflow manages state using GitHub Artifacts. You can trigger it via the `/tf-examples` slash command on PRs:

1. Downloads previous state from artifacts (if available)
2. Runs `terraform plan`
3. Runs `terraform apply` for apply/destroy actions or push events
4. Uploads updated state as an artifact (based on `state_mode`)

### Workflow Inputs

| Input | Options | Default | Description |
|-------|---------|---------|-------------|
| `project` | `all`, `pre-1.0`, `1.0` | `all` | Which project(s) to run |
| `action` | `plan`, `apply`, `destroy` | `plan` | Terraform action to perform |
| `state_mode` | `auto`, `read-only`, `read-write` | `auto` | State persistence mode |

**State Modes:**
- `auto`: State uploaded only for `apply`/`destroy`, not for `plan`
- `read-only`: State downloaded but never uploaded
- `read-write`: State always uploaded

### Setup

Add `AIRBYTE_API_KEY` to your repository secrets.

## State Management

State is managed using GitHub Artifacts:
- **Retention**: 90 days
- **Isolation**: Each project has its own artifact (`terraform-state-pre-1.0`, `terraform-state-1.0`)

## Connector Definition IDs

| Connector | Definition ID |
|-----------|---------------|
| source-faker | `dfd88b22-b603-4c3d-aad7-3701784586b1` |
| source-datagen | `f14d5125-dc0d-4f6c-abe5-acde821a2203` |
| destination-dev-null | `a7bcc9d8-13b3-4e49-b80d-d020b90045e3` |

## Key Differences Between Versions

| Aspect | Pre-1.0 | 1.0 |
|--------|---------|-----|
| Resources | Connector-specific (`airbyte_source_faker`) | Generic (`airbyte_source`) |
| Configuration | Typed blocks | JSON-encoded strings |
| Connector ID | Implicit | Explicit `definition_id` |
