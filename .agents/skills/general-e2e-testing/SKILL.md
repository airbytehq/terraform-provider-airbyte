# Full E2E Test — Terraform Provider for Airbyte

Related skill: [`e2e-phantom-diff-testing`](../e2e-phantom-diff-testing/SKILL.md)
covers the null-vs-empty-list phantom diff on connection stream sets
([PR #423](https://github.com/airbytehq/terraform-provider-airbyte/pull/423)).
Use that one when regression-testing changes under
`internal/planmodifiers/setplanmodifier/`; use this one for generic
provider lifecycle coverage.

Run the CI-built (or locally built) provider binary against a real Airbyte Cloud
workspace to verify the full Terraform lifecycle: plan, apply, drift-check,
and destroy all succeed.

This is distinct from `.github/workflows/e2e-smoke-test.yml`, which is a
plan-only CI smoke test.

## Prerequisites

- **Secrets required** (available as Devin org secrets):
  - `AIRBYTE_CLOUD_CLIENT_ID` — OAuth client ID for Airbyte Cloud
  - `AIRBYTE_CLOUD_CLIENT_SECRET` — OAuth client secret for Airbyte Cloud
  - `AIRBYTE_CLOUD_DEVIN_SANDBOX_WORKSPACE_ID` — Devin Sandbox workspace ID
- **Terraform** must be installed (`brew install hashicorp/tap/terraform`).
- The test project is at `test-projects/v1-tf-generic-test/`.

## Steps

### 1. Build the provider binary (if not already available)

```bash
cd /home/ubuntu/repos/terraform-provider-airbyte
go build -o dist/terraform-provider-airbyte .
```

If testing a PR, you can also download the CI-built binary from the
`provider_binaries` artifact of the PR's "Test (Full)" workflow run.

### 2. Set up the provider dev override

```bash
cd /home/ubuntu/repos/terraform-provider-airbyte/test-projects/v1-tf-generic-test
mkdir -p provider-override
cp ../../dist/terraform-provider-airbyte provider-override/terraform-provider-airbyte
chmod +x provider-override/terraform-provider-airbyte

OVERRIDE_DIR="$(pwd)/provider-override"
cat > .terraformrc <<EOF
provider_installation {
  dev_overrides {
    "airbytehq/airbyte" = "${OVERRIDE_DIR}"
  }
  direct {}
}
EOF
export TF_CLI_CONFIG_FILE="$(pwd)/.terraformrc"
```

### 3. Export credentials

```bash
export TF_VAR_airbyte_client_id="$AIRBYTE_CLOUD_CLIENT_ID"
export TF_VAR_airbyte_client_secret="$AIRBYTE_CLOUD_CLIENT_SECRET"
export TF_VAR_workspace_id="$AIRBYTE_CLOUD_DEVIN_SANDBOX_WORKSPACE_ID"
```

### 4. Terraform Init

```bash
terraform init
```

Expected: succeeds with a "Provider development overrides are in effect" warning.

### 5. Terraform Plan

```bash
terraform plan -out=tfplan
```

Expected: shows resources to add (2 sources, 1 destination, 2 connections).
Verify no errors — this confirms the binary loads and data sources resolve.

### 6. Terraform Apply

```bash
terraform apply -auto-approve tfplan
```

Expected: all 5 resources created successfully.

### 7. Terraform Plan — Drift Check (KEY ASSERTION)

```bash
terraform plan -detailed-exitcode 2>&1 | tee drift_output.txt
```

- **Exit code 0** = no drift. This is the expected result.
- **Exit code 2** = drift detected. This is a **failure** — report to the user
  with the contents of `drift_output.txt`.
- **Any other exit code** = error. Report to the user.

### 8. Terraform Destroy (cleanup)

**Always run this step**, even if earlier steps failed:

```bash
terraform destroy -auto-approve
```

### 9. Clean up local files

```bash
rm -f tfplan .terraformrc drift_output.txt
rm -rf provider-override .terraform .terraform.lock.hcl terraform.tfstate terraform.tfstate.backup
```

## What This Tests

| Resource Type | Count | Approach |
|---|---|---|
| `airbyte_source` | 2 | One via `airbyte_connector_configuration` data source, one with inline JSON |
| `airbyte_destination` | 1 | Via `airbyte_connector_configuration` data source (`destination-dev-null`, SILENT mode) |
| `airbyte_connection` | 2 | One per source, both to the dev-null destination |

The test project exercises:
- OAuth authentication against Airbyte Cloud
- The `airbyte_connector_configuration` data source (connector registry resolution)
- Generic resource CRUD (`airbyte_source`, `airbyte_destination`, `airbyte_connection`)
- Inline JSON configuration (hardcoded `definition_id`)
- Idempotency (zero drift after apply)

## Workspace

All resources are created in the **Devin Sandbox** workspace
(`266ebdfe-0d7b-4540-9817-de7e4505ba61`). This workspace is dedicated to
automated testing and can be freely used without risk.

## Troubleshooting

- **401 Unauthorized during apply**: Check that `TF_VAR_airbyte_client_id` and
  `TF_VAR_airbyte_client_secret` are set and valid.
- **"Failed to resolve connector"**: The connector name may have changed in the
  registry. Check `https://connectors.airbyte.com/files/metadata/airbyte/<connector-name>/latest/cloud.json`.
- **Drift detected**: This is a real bug in the provider. Report the full plan
  output to the user.
