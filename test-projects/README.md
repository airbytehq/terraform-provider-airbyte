# Terraform Provider Testing Projects

This directory contains test projects for validating the Airbyte Terraform provider with different configurations and provider versions.

## Testing with CI-Built Provider Binaries

This process allows you to test provider builds from GitHub Actions CI workflows before they are released.

### Prerequisites

1. Airbyte Cloud account with OAuth credentials.
2. Terraform >= 1.0.
3. GitHub CLI (`gh`) installed and authenticated.
4. Access to the repository's CI workflow runs.

### Step 1: Download Provider Binary from CI

1. **Find the CI run** you want to test:

   ```bash
   gh run list --workflow="test-full.yml" --limit 5
   ```

2. **Download the provider binaries** (replace `<RUN_ID>` with actual run ID; e.g., PR #283 used `21724498442`):

   ```bash
   cd test-projects/v1-tf-latest-test
   gh run download <RUN_ID> --name provider_binaries --dir ./provider-bin
   ```

   Example:

   ```bash
   gh run download 21702397923 --name provider_binaries --dir ./provider-bin
   ```

3. **Set up the provider override**:

   ```bash
   mkdir -p provider-override
   cp provider-bin/terraform-provider-airbyte_darwin_arm64 provider-override/terraform-provider-airbyte
   chmod +x provider-override/terraform-provider-airbyte
   ```

   Note: Use `terraform-provider-airbyte_linux_amd64` for Linux systems.

### Step 1.5: Create .terraformrc (provider override)

```bash
cat > .terraformrc <<'EOF'
provider_installation {
  dev_overrides {
    "airbytehq/airbyte" = "./provider-override"
  }
  direct {}
}
EOF
```

### Step 2: Configure Authentication

1. **Copy the environment template**:

   ```bash
   cp .env.example .env
   ```

2. **Edit `.env`** with your Airbyte OAuth credentials:

   ```bash
   TF_VAR_airbyte_client_id=your-client-id
   TF_VAR_airbyte_client_secret=your-client-secret
   TF_VAR_motherduck_api_key=your-motherduck-key  # Optional
   ```

   Get OAuth credentials from: `https://cloud.airbyte.com/workspaces/<WORKSPACE_ID>/user/applications`

### Step 3: Run Terraform

1. **Load environment variables and run plan**:

   ```bash
   set -a; source .env; set +a
   TF_CLI_CONFIG_FILE=./.terraformrc terraform plan
   ```

2. **Apply changes** (if plan looks good):

   ```bash
   set -a; source .env; set +a
   TF_CLI_CONFIG_FILE=./.terraformrc terraform apply
   ```

3. **Clean up** when done:

   ```bash
   set -a; source .env; set +a
   TF_CLI_CONFIG_FILE=./.terraformrc terraform destroy
   ```

### How It Works

The test setup uses Terraform's [development overrides](https://developer.hashicorp.com/terraform/cli/config/config-file#development-overrides-for-provider-developers) to use a local provider binary instead of downloading from the registry:

1. **`.terraformrc`** - Points Terraform to use the local binary in `./provider-override/` (uses relative path; create this file locally as shown above)
2. **`provider-override/`** - Contains the provider binary from CI (gitignored)
3. **`.env`** - Contains authentication credentials as environment variables (gitignored)
4. **`main.tf`** - Includes the `token_url` workaround for [#280](https://github.com/airbytehq/terraform-provider-airbyte/issues/280)

### Known Issues

- **[#280](https://github.com/airbytehq/terraform-provider-airbyte/issues/280)**: OAuth token endpoint missing `/v1` prefix
  - **Workaround**: Set `token_url = "https://api.airbyte.com/v1/applications/token"` in provider config

- **[#281](https://github.com/airbytehq/terraform-provider-airbyte/issues/281)**: MotherDuck destination returns `value-not-found` error in Airbyte Cloud
  - **Workaround**: Remove destination and connection resources from `main.tf` for testing

### CI Workflow Artifacts

The "Test (Full)" workflow (`test-full.yml`) produces these artifacts:

| Artifact Name             | Contents                                                   | Retention |
| ------------------------- | ---------------------------------------------------------- | --------- |
| `api_terraform_spec`      | Generated OpenAPI spec                                     | 30 days   |
| `generated_provider_code` | Generated provider source code                             | 7 days    |
| `provider_binaries`       | Compiled provider binaries (darwin_arm64, linux_amd64)     | 7 days    |

### Troubleshooting

**Provider binary not executable:**

```bash
chmod +x provider-override/terraform-provider-airbyte
```

**Authentication errors:**

- Verify credentials are correct and not expired
- Ensure `token_url` is set in provider config ([#280](https://github.com/airbytehq/terraform-provider-airbyte/issues/280))
- Check that environment variables are loaded: `env | grep TF_VAR`

**"value-not-found" errors:**

- Check that the connector is available in your Airbyte Cloud workspace
- Try using `airbyte_source_faker` which is universally available

### File Structure

```text
test-projects/v1-tf-latest-test/
├── .env                    # Your credentials (gitignored)
├── .env.example            # Template for credentials
├── .terraformrc            # Dev override config (created locally)
├── main.tf                 # Terraform configuration
├── provider-bin/           # Downloaded CI binaries (gitignored)
└── provider-override/      # Active provider binary (gitignored)
```

## Tips

- **Always test with the workaround in `main.tf`** until [#280](https://github.com/airbytehq/terraform-provider-airbyte/issues/280) is fixed
- **Use `terraform plan` first** to verify configuration before applying
- **Keep credentials secure** - never commit `.env` to git
- **Run terraform destroy** after testing to clean up resources
