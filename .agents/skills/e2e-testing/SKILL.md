# Full E2E Test — Terraform Provider for Airbyte

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

## Declarative Source ID Regression Scenario

Use `test-projects/v1-tf-declarative-source-id-test/` to reproduce the
declarative source definition ID replacement cascade. The fixture creates:

- an `airbyte_declarative_source_definition` with one JSONPlaceholder stream;
- an `airbyte_source` that references the definition ID;
- a SILENT `destination-dev-null` destination; and
- an `airbyte_connection` for the source.

The connection is enabled by default through `enable_connection = true`.

The bug requires prior state. It appears only when Terraform replans an
already-applied definition after `manifest_description` changes. A plan-only
check cannot detect this state-preservation bug.

### Run the regression

Run each provider binary in a fresh Terraform state. The commands below use
the fixed branch binary first, then a clean `origin/main` binary.

Build both binaries:

```bash
cd /home/ubuntu/repos/terraform-provider-airbyte
go build -o dist/terraform-provider-airbyte .
git worktree add --detach /tmp/terraform-provider-airbyte-main origin/main
(cd /tmp/terraform-provider-airbyte-main && go clean -cache && go build -a -o /tmp/terraform-provider-airbyte-main/terraform-provider-airbyte .)
```

Prepare the fixture and credentials:

```bash
cd /home/ubuntu/repos/terraform-provider-airbyte/test-projects/v1-tf-declarative-source-id-test
export TF_VAR_airbyte_client_id="$AIRBYTE_CLOUD_CLIENT_ID"
export TF_VAR_airbyte_client_secret="$AIRBYTE_CLOUD_CLIENT_SECRET"
export TF_VAR_workspace_id="$AIRBYTE_CLOUD_DEVIN_SANDBOX_WORKSPACE_ID"
mkdir -p provider-override
```

For each binary, set `PROVIDER_BINARY` and run the same lifecycle:

```bash
export PROVIDER_BINARY=/home/ubuntu/repos/terraform-provider-airbyte/dist/terraform-provider-airbyte
cp "$PROVIDER_BINARY" provider-override/terraform-provider-airbyte
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

terraform init
terraform plan -out=initial.tfplan \
  -var='manifest_description=initial declarative source definition'
terraform apply -auto-approve initial.tfplan

initial_source_id="$(terraform output -raw source_id)"
initial_connection_id="$(terraform output -raw connection_id)"

terraform plan -detailed-exitcode \
  -var='manifest_description=initial declarative source definition'
terraform plan -detailed-exitcode -out=changed.tfplan \
  -var='manifest_description=updated declarative source definition' \
  2>&1 | tee changed_plan_output.txt

terraform apply -auto-approve changed.tfplan
test "$(terraform output -raw source_id)" = "$initial_source_id"
test "$(terraform output -raw connection_id)" = "$initial_connection_id"
terraform destroy -auto-approve
```

The changed plan must contain no `must be replaced` or `forces replacement`
markers and must report `0 to destroy`. Capture IDs before the changed apply
and compare both the source ID and connection ID after the apply.

Repeat the same commands with:

```bash
export PROVIDER_BINARY=/tmp/terraform-provider-airbyte-main/terraform-provider-airbyte
```

For `origin/main`, stop after capturing the changed plan. Its expected output
contains replacement markers for both `airbyte_source.repro` and
`airbyte_connection.repro[0]`:

```text
Plan: 2 to add, 1 to change, 2 to destroy
```

The fixed provider must instead report:

```text
Plan: 0 to add, 1 to change, 0 to destroy
```

Always run `terraform destroy -auto-approve`, including after a failed plan.
Then query the Devin Sandbox API. This check must return zero matching
resources:

```bash
token="$(curl -fsS \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  --data-urlencode grant_type=client_credentials \
  --data-urlencode "client_id=$AIRBYTE_CLOUD_CLIENT_ID" \
  --data-urlencode "client_secret=$AIRBYTE_CLOUD_CLIENT_SECRET" \
  https://api.airbyte.com/v1/applications/token | jq -r .access_token)"

for endpoint in \
  "sources?workspaceIds=$TF_VAR_workspace_id" \
  "destinations?workspaceIds=$TF_VAR_workspace_id" \
  "connections?workspaceIds=$TF_VAR_workspace_id" \
  "workspaces/$TF_VAR_workspace_id/definitions/declarative_sources"; do
  curl -fsS -H "Authorization: Bearer $token" \
    "https://api.airbyte.com/v1/$endpoint" |
    jq '[.. | objects | select((.name? // "") | startswith("tf-declarative-source-id-repro"))] | length'
done
```

Each result must be `0` for the Devin Sandbox workspace.

### Gotchas

- `manifest.version` must be a real CDK version. A bogus value can make the
  connector container exit 1 while the job response exposes empty `logLines`.
- The connection specification must allow additional properties. Cloud injects
  `__injected_declarative_manifest` into the source configuration during
  DISCOVER.

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
