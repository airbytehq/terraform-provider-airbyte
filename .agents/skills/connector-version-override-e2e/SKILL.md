---
name: connector-version-override-e2e
description: End-to-end test for the airbyte_connector_version_override resource. Mints a bearer token from OAuth client credentials, points the resource at the internal config API, and runs a Terraform apply/drift-check/destroy against the Devin Sandbox. Use only when validating changes to internal/provider/connector_version_override_resource.go.
---

# E2E Test — `airbyte_connector_version_override`

This skill exercises the hand-coded `airbyte_connector_version_override` resource
against the **Airbyte internal config API** (`/v1/scoped_configuration/*`).
It is separate from `e2e-testing/SKILL.md`, which targets the public API only.

## When to use

- After modifying `internal/provider/connector_version_override_resource.go`.
- After any Speakeasy regen that may have affected hand-coded resource registration.
- Before marking a PR involving this resource ready for review.

Skip this skill for unrelated provider changes — the regular `e2e-testing` skill
already covers the public-API surface.

## Why this is its own skill

The resource talks to the internal config API (`https://cloud.airbyte.com/api/v1`),
not the public API (`https://api.airbyte.com/v1`). Auth is the same Bearer token,
but the endpoints require **instance-admin** permissions, which the existing
e2e skill's workspace-scoped OAuth client may not have.

## Prerequisites

- **Secrets** (org-level):
  - `AIRBYTE_CLOUD_DEVIN_SANDBOX_CLIENT_ID`
  - `AIRBYTE_CLOUD_DEVIN_SANDBOX_CLIENT_SECRET`
  - `AIRBYTE_CLOUD_DEVIN_SANDBOX_WORKSPACE_ID` (= `266ebdfe-0d7b-4540-9817-de7e4505ba61`)
- **Tools**: Go 1.24+, Terraform.
- **Open question on first run**: whether the sandbox OAuth client has
  instance-admin permissions on `/v1/scoped_configuration/*`. Step 5 below
  surfaces this — if it returns 401/403, full E2E is not possible from the
  sandbox account and you should fall back to the smoke-test path (Step 9).

## Steps

### 1. Build the provider binary

```bash
cd /home/ubuntu/repos/terraform-provider-airbyte
go build -o dist/terraform-provider-airbyte .
```

### 2. Mint a bearer token from the sandbox OAuth credentials

```bash
export AIRBYTE_BEARER_AUTH=$(curl -fsS \
  -X POST https://api.airbyte.com/v1/applications/token \
  -H 'Content-Type: application/json' \
  -d "{
    \"client_id\": \"$AIRBYTE_CLOUD_DEVIN_SANDBOX_CLIENT_ID\",
    \"client_secret\": \"$AIRBYTE_CLOUD_DEVIN_SANDBOX_CLIENT_SECRET\",
    \"grant-type\": \"client_credentials\"
  }" | jq -r '.access_token')

[ -n "$AIRBYTE_BEARER_AUTH" ] && echo "Bearer minted ($(echo "$AIRBYTE_BEARER_AUTH" | wc -c) chars)"
```

### 3. Point the resource at the config API

```bash
export AIRBYTE_CONFIG_API_URL="https://cloud.airbyte.com/api/v1"
```

The resource also accepts `config_server_url` as a per-instance attribute; the
env var is the fallback used by the skill.

### 4. Identify a connector to pin

Resolve a definition ID from the Devin Sandbox. For example, get the
`postgres` source definition ID via the public API:

```bash
SOURCE_DEFINITION_ID=$(curl -fsS \
  "https://api.airbyte.com/v1/sources?workspaceIds=$AIRBYTE_CLOUD_DEVIN_SANDBOX_WORKSPACE_ID" \
  -H "Authorization: Bearer $AIRBYTE_BEARER_AUTH" \
  | jq -r '.data[] | select(.sourceType=="postgres") | .definitionId' | head -1)

echo "Pinning definition: $SOURCE_DEFINITION_ID"
```

(If no Postgres source exists in the sandbox, create one via the existing
`e2e-testing` skill first, or pick another connector type.)

### 5. Probe the config API for instance-admin access

Before running Terraform, confirm the bearer can hit the config API at all:

```bash
curl -fsS -X POST "$AIRBYTE_CONFIG_API_URL/scoped_configuration/list" \
  -H "Authorization: Bearer $AIRBYTE_BEARER_AUTH" \
  -H 'Content-Type: application/json' \
  -d '{"configKey":"connector_version"}' | jq -r '.data | length'
```

- **HTTP 200**: instance-admin access confirmed → continue.
- **HTTP 401/403**: sandbox creds lack instance-admin permissions →
  full E2E is not possible from this account. Skip to **Step 9 (smoke test
  only)** and report the result back to the user; do not attempt apply.

### 6. Set up the dev override

Create a one-resource project that exercises CRUD against the workspace scope:

```bash
mkdir -p /tmp/cvo-e2e && cd /tmp/cvo-e2e

OVERRIDE_DIR="$(pwd)/provider-override"
mkdir -p "$OVERRIDE_DIR"
cp /home/ubuntu/repos/terraform-provider-airbyte/dist/terraform-provider-airbyte "$OVERRIDE_DIR/"
chmod +x "$OVERRIDE_DIR/terraform-provider-airbyte"

cat > .terraformrc <<EOF
provider_installation {
  dev_overrides { "airbytehq/airbyte" = "${OVERRIDE_DIR}" }
  direct {}
}
EOF
export TF_CLI_CONFIG_FILE="$(pwd)/.terraformrc"

cat > main.tf <<EOF
terraform { required_providers { airbyte = { source = "airbytehq/airbyte" } } }
provider "airbyte" {}

resource "airbyte_connector_version_override" "pin" {
  scope_type          = "workspace"
  scope_id            = "$AIRBYTE_CLOUD_DEVIN_SANDBOX_WORKSPACE_ID"
  actor_definition_id = "$SOURCE_DEFINITION_ID"
  version             = "3.6.27"
  origin_email        = "devin-e2e@airbyte.io"
  description         = "Devin E2E test pin (auto-created and destroyed)"
}
EOF

terraform init
```

### 7. Apply, drift-check, destroy

```bash
terraform apply -auto-approve
terraform plan -detailed-exitcode  # exit 0 = clean, exit 2 = drift (FAIL)
terraform destroy -auto-approve
```

Exit 2 from drift-check is a real bug — capture the plan output and report it.
If destroy fails partway, finish cleanup manually via the config API
(`/scoped_configuration/delete` with the resource ID) before re-running.

### 8. Cleanup

```bash
cd /home/ubuntu && rm -rf /tmp/cvo-e2e
unset AIRBYTE_BEARER_AUTH AIRBYTE_CONFIG_API_URL TF_CLI_CONFIG_FILE
```

### 9. Fallback: smoke test only (no admin access)

If Step 5 returned 401/403, instead validate that the binary registers the
resource and is internally consistent:

```bash
cd /home/ubuntu/repos/terraform-provider-airbyte
go build ./...                                         # compiles cleanly
go vet ./...                                           # no vet issues
grep -q NewConnectorVersionOverrideResource internal/provider/provider.go \
  && echo "registered" || echo "NOT registered"        # must say registered
```

Combined with the existing `e2e-testing` skill (public-API surface), this
is sufficient confidence for review when full admin E2E is not possible.

## Troubleshooting

- **`bearer token is unset` from the resource**: `AIRBYTE_BEARER_AUTH` not
  exported in the same shell that runs `terraform`.
- **`config_server_url attribute is unset and AIRBYTE_CONFIG_API_URL ... is empty`**:
  same — export `AIRBYTE_CONFIG_API_URL` or set the resource attribute.
- **HTTP 401/403 during apply**: sandbox creds don't have instance-admin
  permissions on the config API. Use the smoke-test fallback (Step 9).
- **HTTP 409 during apply**: an override already exists for this scope/definition
  (e.g. left over from an earlier run). Find it via
  `POST /scoped_configuration/list` and delete it via
  `POST /scoped_configuration/delete`.
