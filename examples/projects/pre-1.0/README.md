# Pre-1.0 Example Project

This example project demonstrates how to use the Airbyte Terraform Provider (version 0.13.x) with connector-specific resources like `airbyte_source_faker` and `airbyte_destination_dev_null`.

## Resources Created

This project creates the following Airbyte resources:

- **Workspace**: A dedicated workspace for the example
- **Sources**:
  - `source-faker-1`: Generates fake e-commerce data (users, products, purchases) with seed 42
  - `source-faker-2`: Generates fake e-commerce data with seed 123
- **Destination**:
  - `destination-dev-null`: A silent destination for testing (discards all data)
- **Connections**:
  - `faker-1-to-dev-null`: Syncs faker-1 data to dev-null
  - `faker-2-to-dev-null`: Syncs faker-2 data to dev-null

## Prerequisites

1. An Airbyte Cloud account or self-hosted Airbyte instance
2. An Airbyte API key
3. Terraform >= 1.0

## Usage

### Local Development

1. Set your Airbyte API key:
   ```bash
   export TF_VAR_airbyte_api_key="your-api-key"
   ```

2. Initialize Terraform:
   ```bash
   terraform init
   ```

3. Plan the changes:
   ```bash
   terraform plan
   ```

4. Apply the configuration:
   ```bash
   terraform apply
   ```

### CI/CD with GitHub Actions

This project includes a GitHub Actions workflow that manages Terraform state using GitHub Artifacts. The workflow:

1. Downloads the previous state from artifacts (if available)
2. Runs `terraform plan` on every push
3. Runs `terraform apply` when changes are pushed to main
4. Uploads the updated state as an artifact

To use the workflow:

1. Add `AIRBYTE_API_KEY` to your repository secrets
2. The workflow will automatically run on pushes to main that modify files in this directory

## State Management

State is managed using GitHub Artifacts with the following characteristics:

- **Artifact Name**: `terraform-state-pre-1.0`
- **Retention**: 90 days
- **Isolation**: Each example project has its own state artifact

This approach provides:
- No external state backend required
- State persists across workflow runs
- Easy to inspect and debug
- Suitable for example/demo projects

## Key Differences from 1.0

In pre-1.0 versions of the provider, you use connector-specific resources:
- `airbyte_source_faker` instead of generic `airbyte_source`
- `airbyte_destination_dev_null` instead of generic `airbyte_destination`

These connector-specific resources have typed configuration blocks rather than JSON-encoded configuration strings.
