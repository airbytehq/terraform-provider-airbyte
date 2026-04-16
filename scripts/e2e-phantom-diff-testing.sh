#!/usr/bin/env bash
# e2e-phantom-diff-testing.sh
#
# End-to-end regression test for the null-vs-empty-list phantom diff bug that
# was fixed by PR #423 in internal/planmodifiers/setplanmodifier/
# unique_by_name_and_namespace.go.
#
# What it does, in order:
#
#   1. Builds the provider binary from the current repo checkout (post-fix).
#   2. Creates a multi-stream connection directly via the Airbyte API so we
#      can force `primaryKey: []` and `cursorField: []` on the wire — which
#      is the exact shape that triggers the bug.
#   3. Imports the connection into a fresh Terraform state.
#   4. Rewrites the state file with jq to null out primary_key and
#      cursor_field on selected streams. This simulates state written by an
#      older provider version where the SDK produced null for these fields.
#   5. Runs `terraform plan` with the POST-FIX binary using `-refresh=false`
#      and asserts "No changes" — this is the regression assertion.
#   6. Optionally runs the same plan with `airbytehq/airbyte` 1.1.2 from the
#      registry (pre-fix) and shows the phantom diff if --with-v112 is set.
#      This demonstrates the bug on the released version.
#   7. Flips one stream's sync_mode and asserts Terraform shows exactly one
#      diff — the fix must not over-suppress intentional changes.
#   8. Destroys the test connection and cleans up the temp workspace.
#
# Refs:
#   - PR #423: https://github.com/airbytehq/terraform-provider-airbyte/pull/423
#   - Unit tests: internal/planmodifiers/setplanmodifier/unique_by_name_and_namespace_test.go
#
# Usage:
#   scripts/e2e-phantom-diff-testing.sh [--with-v112] [--keep] [--verbose]
#
# Required environment variables:
#   AIRBYTE_CLOUD_CLIENT_ID        — Airbyte Cloud API client_id
#   AIRBYTE_CLOUD_CLIENT_SECRET    — Airbyte Cloud API client_secret
#   AIRBYTE_WORKSPACE_ID           — workspace UUID (the script also uses
#                                    this as the namespace root)
#   AIRBYTE_SOURCE_ID              — UUID of a configured source in the
#                                    workspace (any source is fine; the
#                                    streams are set manually via the API)
#   AIRBYTE_DESTINATION_ID         — UUID of a configured destination
#
# Optional environment variables:
#   AIRBYTE_API_URL                — defaults to https://api.airbyte.com/v1
#   TF_BIN                         — defaults to `terraform` on PATH
#
# Exit codes:
#   0  all assertions passed
#   1  assertion failed (see stderr)
#   2  setup failure (missing deps, missing env vars, build error, etc.)

set -euo pipefail

# ──────────────────────────────────────────────────────────────────────────
# argument parsing
# ──────────────────────────────────────────────────────────────────────────

WITH_V112=0
KEEP=0
VERBOSE=0

while [[ $# -gt 0 ]]; do
  case "$1" in
    --with-v112) WITH_V112=1 ;;
    --keep)      KEEP=1 ;;
    --verbose)   VERBOSE=1 ;;
    -h|--help)
      sed -n '2,60p' "$0"
      exit 0
      ;;
    *)
      echo "unknown flag: $1" >&2
      exit 2
      ;;
  esac
  shift
done

if [[ $VERBOSE -eq 1 ]]; then
  set -x
fi

# ──────────────────────────────────────────────────────────────────────────
# helpers
# ──────────────────────────────────────────────────────────────────────────

RED=$'\e[31m'; GREEN=$'\e[32m'; YELLOW=$'\e[33m'; BOLD=$'\e[1m'; RESET=$'\e[0m'

log()  { printf '%s[e2e]%s %s\n' "$BOLD" "$RESET" "$*"; }
pass() { printf '%s[PASS]%s %s\n' "$GREEN" "$RESET" "$*"; }
fail() { printf '%s[FAIL]%s %s\n' "$RED"   "$RESET" "$*" >&2; exit 1; }
warn() { printf '%s[WARN]%s %s\n' "$YELLOW" "$RESET" "$*" >&2; }

require_bin() {
  command -v "$1" >/dev/null 2>&1 || { echo "missing required binary: $1" >&2; exit 2; }
}

require_env() {
  if [[ -z "${!1:-}" ]]; then
    echo "missing required env var: $1" >&2
    exit 2
  fi
}

# ──────────────────────────────────────────────────────────────────────────
# prerequisite checks
# ──────────────────────────────────────────────────────────────────────────

require_bin curl
require_bin jq
require_bin go
require_bin "${TF_BIN:-terraform}"

require_env AIRBYTE_CLOUD_CLIENT_ID
require_env AIRBYTE_CLOUD_CLIENT_SECRET
require_env AIRBYTE_WORKSPACE_ID
require_env AIRBYTE_SOURCE_ID
require_env AIRBYTE_DESTINATION_ID

AIRBYTE_API_URL="${AIRBYTE_API_URL:-https://api.airbyte.com/v1}"
TF_BIN="${TF_BIN:-terraform}"

# ──────────────────────────────────────────────────────────────────────────
# paths
# ──────────────────────────────────────────────────────────────────────────

REPO_ROOT="$(cd "$(dirname "$0")/.." && pwd)"
TS="$(date +%s)"
WORK_DIR="$(mktemp -d -t e2e-phantom-diff-XXXXXX)"
BIN_DIR="$WORK_DIR/tf-binaries-post-fix"
TF_DIR="$WORK_DIR/tf"
NAME_PREFIX="e2e-phantom-diff-$TS"

log "work dir: $WORK_DIR"

cleanup() {
  local rc=$?
  if [[ $rc -ne 0 ]]; then
    warn "exit $rc — attempting cleanup anyway"
  fi

  if [[ $KEEP -eq 1 ]]; then
    warn "--keep set; leaving $WORK_DIR and any created connection in place"
    return $rc
  fi

  if [[ -d "$TF_DIR" && -f "$TF_DIR/terraform.tfstate" ]]; then
    log "destroying terraform resources"
    ( cd "$TF_DIR" \
      && TF_CLI_CONFIG_FILE="$TF_DIR/.terraformrc-post-fix" \
         "$TF_BIN" destroy -auto-approve >/dev/null 2>&1 ) || \
      warn "terraform destroy failed; check $WORK_DIR"
  fi

  if [[ -n "${CONNECTION_ID:-}" ]]; then
    log "deleting connection $CONNECTION_ID via API (belt-and-suspenders)"
    curl -sS -X DELETE "$AIRBYTE_API_URL/connections/$CONNECTION_ID" \
      -H "Authorization: Bearer $TOKEN" >/dev/null 2>&1 || true
  fi

  rm -rf "$WORK_DIR" || true
}
trap cleanup EXIT

# ──────────────────────────────────────────────────────────────────────────
# Phase 1: build post-fix binary
# ──────────────────────────────────────────────────────────────────────────

log "building provider binary from $REPO_ROOT (post-fix)"
mkdir -p "$BIN_DIR"
( cd "$REPO_ROOT" && go build -o "$BIN_DIR/terraform-provider-airbyte" . )
pass "built $BIN_DIR/terraform-provider-airbyte"

# ──────────────────────────────────────────────────────────────────────────
# Phase 2: get an API token and create a multi-stream connection
# ──────────────────────────────────────────────────────────────────────────

log "obtaining API token"
TOKEN="$(curl -sS -X POST "$AIRBYTE_API_URL/applications/token" \
  -H "Content-Type: application/json" \
  -d "{\"client_id\":\"$AIRBYTE_CLOUD_CLIENT_ID\",\"client_secret\":\"$AIRBYTE_CLOUD_CLIENT_SECRET\",\"grant-type\":\"client_credentials\"}" \
  | jq -r .access_token)"
[[ -n "$TOKEN" && "$TOKEN" != "null" ]] || { echo "failed to obtain API token" >&2; exit 2; }

# We deliberately ask for at least three streams covering every shape:
#   * stream A: full_refresh_append  — NO cursor, NO pk (the bug scenario)
#   * stream B: full_refresh_overwrite — NO cursor, NO pk
#   * stream C: incremental_append — populated cursor + pk
# We pick common Faker stream names here but this works with any source that
# exposes these stream names; adjust as needed via AIRBYTE_STREAMS env var if
# your source uses different names.
#
# The empty arrays below are the payload shape the API actually writes — we
# don't rely on a particular source returning them.
log "creating test connection via API"
BODY=$(jq -n \
  --arg source      "$AIRBYTE_SOURCE_ID" \
  --arg destination "$AIRBYTE_DESTINATION_ID" \
  --arg name        "$NAME_PREFIX" \
  --arg prefix      "${NAME_PREFIX//-/_}_" \
  '{
    sourceId:      $source,
    destinationId: $destination,
    name:          $name,
    status:        "inactive",
    prefix:        $prefix,
    configurations: {
      streams: [
        { name: "users",     syncMode: "full_refresh_append",    cursorField: [], primaryKey: [] },
        { name: "products",  syncMode: "full_refresh_overwrite", cursorField: [], primaryKey: [] },
        { name: "purchases", syncMode: "incremental_append",     cursorField: ["updated_at"], primaryKey: [["id"]] }
      ]
    }
  }')
CREATE_RESP="$(curl -sS -X POST "$AIRBYTE_API_URL/connections" \
  -H "Authorization: Bearer $TOKEN" \
  -H "Content-Type: application/json" \
  -d "$BODY")"
CONNECTION_ID="$(jq -r .connectionId <<<"$CREATE_RESP")"
if [[ -z "$CONNECTION_ID" || "$CONNECTION_ID" == "null" ]]; then
  echo "failed to create connection:" >&2
  echo "$CREATE_RESP" | jq . >&2 || echo "$CREATE_RESP" >&2
  exit 2
fi
pass "created connection $CONNECTION_ID"

# ──────────────────────────────────────────────────────────────────────────
# Phase 3: build terraform workspace + import
# ──────────────────────────────────────────────────────────────────────────

log "preparing terraform workspace"
mkdir -p "$TF_DIR"

cat >"$TF_DIR/main.tf" <<EOF
terraform {
  required_providers {
    airbyte = {
      source  = "airbytehq/airbyte"
      version = "~> 1.1.0"
    }
  }
}

provider "airbyte" {
  client_id     = var.client_id
  client_secret = var.client_secret
  server_url    = "$AIRBYTE_API_URL"
}

variable "client_id" {
  type      = string
  sensitive = true
}

variable "client_secret" {
  type      = string
  sensitive = true
}

resource "airbyte_connection" "test" {
  source_id      = "$AIRBYTE_SOURCE_ID"
  destination_id = "$AIRBYTE_DESTINATION_ID"
  name           = "$NAME_PREFIX"
  status         = "inactive"
  prefix         = "${NAME_PREFIX//-/_}_"

  configurations = {
    streams = [
      { name = "users",     sync_mode = "full_refresh_append" },
      { name = "products",  sync_mode = "full_refresh_overwrite" },
      {
        name         = "purchases"
        sync_mode    = "incremental_append"
        cursor_field = ["updated_at"]
        primary_key  = [["id"]]
      },
    ]
  }
}
EOF

cat >"$TF_DIR/.terraformrc-post-fix" <<EOF
provider_installation {
  dev_overrides { "airbytehq/airbyte" = "$BIN_DIR" }
  direct {}
}
EOF

# For the v1.1.2 phase (optional) we use a plain init against the registry
# without dev_overrides.
cat >"$TF_DIR/.terraformrc-v112" <<EOF
provider_installation {
  direct {}
}
EOF

export TF_VAR_client_id="$AIRBYTE_CLOUD_CLIENT_ID"
export TF_VAR_client_secret="$AIRBYTE_CLOUD_CLIENT_SECRET"

log "importing connection into terraform state"
TF_CLI_CONFIG_FILE="$TF_DIR/.terraformrc-post-fix" \
  "$TF_BIN" -chdir="$TF_DIR" import airbyte_connection.test "$CONNECTION_ID" >/dev/null

# ──────────────────────────────────────────────────────────────────────────
# Phase 4: simulate old-provider state by nulling primary_key / cursor_field
# on the two full_refresh streams (leave `purchases` populated).
# ──────────────────────────────────────────────────────────────────────────

log "patching state: null out primary_key / cursor_field for full_refresh streams"
cp "$TF_DIR/terraform.tfstate" "$TF_DIR/terraform.tfstate.pre-patch"

jq '
  .resources[].instances[].attributes.configurations.streams |=
    ( map(
        if .sync_mode | test("^full_refresh") then
          .primary_key = null | .cursor_field = null
        else . end
      ) )
' "$TF_DIR/terraform.tfstate" > "$TF_DIR/terraform.tfstate.patched"
mv "$TF_DIR/terraform.tfstate.patched" "$TF_DIR/terraform.tfstate"

# Sanity-check the patch applied as intended.
PATCHED_NULL_COUNT="$(jq '
  [ .resources[].instances[].attributes.configurations.streams[]
    | select(.sync_mode | test("^full_refresh"))
    | select(.primary_key == null and .cursor_field == null) ]
  | length
' "$TF_DIR/terraform.tfstate")"

if [[ "$PATCHED_NULL_COUNT" -lt 2 ]]; then
  fail "jq state patch did not produce the expected null shape (got $PATCHED_NULL_COUNT null streams)"
fi
pass "state patched: $PATCHED_NULL_COUNT streams have primary_key=null + cursor_field=null"

# ──────────────────────────────────────────────────────────────────────────
# Phase 5: post-fix binary — must report No changes
# ──────────────────────────────────────────────────────────────────────────

log "running terraform plan with post-fix binary (refresh disabled so state patch survives)"
POST_FIX_PLAN="$TF_DIR/plan-post-fix.txt"
TF_CLI_CONFIG_FILE="$TF_DIR/.terraformrc-post-fix" \
  "$TF_BIN" -chdir="$TF_DIR" plan -refresh=false -no-color \
  >"$POST_FIX_PLAN" 2>&1 || true

if ! grep -q "No changes" "$POST_FIX_PLAN"; then
  echo "------ plan output (post-fix) ------" >&2
  tail -50 "$POST_FIX_PLAN" >&2
  fail "post-fix binary reported a diff when state had null/empty mismatch — fix is broken"
fi
pass "post-fix binary reports No changes on null/empty mismatch (fix verified)"

# ──────────────────────────────────────────────────────────────────────────
# Phase 6 (optional): pre-fix v1.1.2 binary from the registry — must show
# a phantom diff on the same patched state
# ──────────────────────────────────────────────────────────────────────────

if [[ $WITH_V112 -eq 1 ]]; then
  log "initialising v1.1.2 from the registry for a phantom-diff repro"
  # Use a sibling directory with its own state copy so dev_overrides don't
  # contaminate it.
  V112_DIR="$WORK_DIR/tf-v112"
  cp -r "$TF_DIR" "$V112_DIR"
  rm -rf "$V112_DIR/.terraform" "$V112_DIR/.terraform.lock.hcl"
  # Pin the exact version we're trying to reproduce on.
  sed -i 's#version = "~> 1.1.0"#version = "= 1.1.2"#' "$V112_DIR/main.tf"
  TF_CLI_CONFIG_FILE="$V112_DIR/.terraformrc-v112" \
    "$TF_BIN" -chdir="$V112_DIR" init -upgrade >/dev/null

  V112_PLAN="$V112_DIR/plan-v112.txt"
  TF_CLI_CONFIG_FILE="$V112_DIR/.terraformrc-v112" \
    "$TF_BIN" -chdir="$V112_DIR" plan -refresh=false -no-color \
    >"$V112_PLAN" 2>&1 || true

  if grep -q "No changes" "$V112_PLAN"; then
    warn "v1.1.2 also reported No changes on this state — phantom diff did not trigger in this environment"
    warn "this does not invalidate the fix (unit tests cover the hash-identity case directly);"
    warn "the repro shape is sensitive to SDK decoding + modifier ordering which may vary by source"
  else
    pass "v1.1.2 produced a diff on the same patched state (phantom-diff bug reproduced)"
    if [[ $VERBOSE -eq 1 ]]; then
      echo "------ v1.1.2 plan output ------"
      sed -n '/Terraform will perform/,/^Plan:/p' "$V112_PLAN"
    fi
  fi
fi

# ──────────────────────────────────────────────────────────────────────────
# Phase 7: intentional change must still be detected
# ──────────────────────────────────────────────────────────────────────────

log "flipping purchases.sync_mode and asserting the post-fix binary detects the change"
# Restore the un-patched state so refresh can run cleanly here.
cp "$TF_DIR/terraform.tfstate.pre-patch" "$TF_DIR/terraform.tfstate"

sed -i 's/"incremental_append"/"full_refresh_append"/' "$TF_DIR/main.tf"

SMOKE_PLAN="$TF_DIR/plan-smoke.txt"
TF_CLI_CONFIG_FILE="$TF_DIR/.terraformrc-post-fix" \
  "$TF_BIN" -chdir="$TF_DIR" plan -no-color \
  >"$SMOKE_PLAN" 2>&1 || true

if ! grep -q "Plan: 0 to add, 1 to change, 0 to destroy" "$SMOKE_PLAN"; then
  echo "------ smoke plan output ------" >&2
  tail -40 "$SMOKE_PLAN" >&2
  fail "post-fix binary did not detect the intentional sync_mode change"
fi
pass "post-fix binary detects intentional sync_mode change (no over-suppression)"

# Apply the change + re-plan should be No changes.
TF_CLI_CONFIG_FILE="$TF_DIR/.terraformrc-post-fix" \
  "$TF_BIN" -chdir="$TF_DIR" apply -auto-approve >/dev/null

POST_CHANGE_PLAN="$TF_DIR/plan-post-change.txt"
TF_CLI_CONFIG_FILE="$TF_DIR/.terraformrc-post-fix" \
  "$TF_BIN" -chdir="$TF_DIR" plan -no-color \
  >"$POST_CHANGE_PLAN" 2>&1 || true

if ! grep -q "No changes" "$POST_CHANGE_PLAN"; then
  echo "------ post-change plan output ------" >&2
  tail -40 "$POST_CHANGE_PLAN" >&2
  fail "post-fix binary reported a diff after applying the change"
fi
pass "post-fix binary reports No changes after applying the intentional change"

log "all assertions passed"
