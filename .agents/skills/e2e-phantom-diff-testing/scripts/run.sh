#!/usr/bin/env bash
# Orchestrator for the e2e-phantom-diff-testing skill.
#
# End-to-end flow:
#   1. Build the PR provider binary from $REPO_ROOT.
#   2. Materialize a scratch Terraform workspace from assets/*.tmpl.
#   3. Create a multi-stream connection via the Airbyte public API
#      (bypassing the provider so the API state starts with [] for empty fields).
#   4. `terraform import` the connection so state is populated.
#   5. Patch state with jq to null out primary_key/cursor_field on
#      full_refresh_* streams — simulates an older provider's state shape.
#   6. Plan against patched state with the PR binary and assert "No changes."
#   7. Optional (--with-v112): run the same plan with the registry v1.1.2
#      binary. A reproducing diff is ideal; "No changes" is advisory.
#   8. Restore pre-patch state, flip a sync_mode in HCL, assert plan shows
#      exactly one in-place change.
#   9. Apply and re-plan to assert the follow-up plan is clean.
#
# Flags:
#   --with-v112   Run the advisory v1.1.2 leg (step 7).
#   --keep        Do not destroy the connection or delete WORK_DIR on exit.
#   --verbose     Set -x on this script.
#
# Required environment variables:
#   REPO_ROOT                     Path to terraform-provider-airbyte checkout
#   AIRBYTE_CLOUD_CLIENT_ID       OAuth client id
#   AIRBYTE_CLOUD_CLIENT_SECRET   OAuth client secret
#   AIRBYTE_SOURCE_ID             Source in the sandbox workspace
#   AIRBYTE_DESTINATION_ID        Destination in the sandbox workspace
#
# Optional:
#   AIRBYTE_API_URL               Default https://api.airbyte.com/v1
#   WORK_DIR                      Default $(mktemp -d).

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SKILL_DIR="$(cd "$SCRIPT_DIR/.." && pwd)"
# shellcheck source=_lib.sh
. "$SCRIPT_DIR/_lib.sh"

WITH_V112=0
KEEP=0
for arg in "$@"; do
  case "$arg" in
    --with-v112) WITH_V112=1 ;;
    --keep)      KEEP=1 ;;
    --verbose)   set -x ;;
    *) fail "unknown argument: $arg" ;;
  esac
done

require_bin go terraform curl jq envsubst sed
require_env REPO_ROOT AIRBYTE_CLOUD_CLIENT_ID AIRBYTE_CLOUD_CLIENT_SECRET \
            AIRBYTE_SOURCE_ID AIRBYTE_DESTINATION_ID

export AIRBYTE_API_URL="${AIRBYTE_API_URL:-https://api.airbyte.com/v1}"
export WORK_DIR="${WORK_DIR:-$(mktemp -d -t phantom-diff.XXXXXX)}"
export TF_DIR="$WORK_DIR/tf"
export BIN_DIR="$WORK_DIR/bin"
export NAME_PREFIX="phantom-diff-$(date +%s)"
export NAME_PREFIX_UNDERSCORED="${NAME_PREFIX//-/_}"

mkdir -p "$TF_DIR" "$BIN_DIR"
log "work dir: $WORK_DIR"

cleanup() {
  local rc=$?
  if (( KEEP )); then
    log "--keep set; leaving $WORK_DIR and connection intact"
    return "$rc"
  fi
  if [[ -f "$WORK_DIR/connection.env" ]]; then
    # shellcheck disable=SC1091
    . "$WORK_DIR/connection.env"
    if [[ -n "${CONNECTION_ID:-}" && -n "${TOKEN:-}" ]]; then
      log "deleting connection $CONNECTION_ID"
      curl -sS -X DELETE "$AIRBYTE_API_URL/connections/$CONNECTION_ID" \
        -H "Authorization: Bearer $TOKEN" >/dev/null || true
    fi
  fi
  rm -rf "$WORK_DIR"
  return "$rc"
}
trap cleanup EXIT

log "step 1: building PR provider binary"
( cd "$REPO_ROOT" && go build -o "$BIN_DIR/terraform-provider-airbyte" . )

log "step 2: materializing Terraform workspace from templates"
envsubst <"$SKILL_DIR/assets/main.tf.tmpl"              >"$TF_DIR/main.tf"
envsubst <"$SKILL_DIR/assets/terraformrc-post-fix.tmpl" >"$TF_DIR/.terraformrc-post-fix"
envsubst <"$SKILL_DIR/assets/terraformrc-v112.tmpl"     >"$TF_DIR/.terraformrc-v112"

log "step 3: creating connection via Airbyte API"
"$SCRIPT_DIR/create-connection.sh"
# shellcheck disable=SC1091
. "$WORK_DIR/connection.env"

log "step 4: terraform init + import"
TF_CLI_CONFIG_FILE="$TF_DIR/.terraformrc-post-fix" \
  terraform -chdir="$TF_DIR" init -upgrade >/dev/null
TF_CLI_CONFIG_FILE="$TF_DIR/.terraformrc-post-fix" \
  terraform -chdir="$TF_DIR" import airbyte_connection.test "$CONNECTION_ID" >/dev/null

log "step 5: patching state to force null/empty mismatch"
"$SCRIPT_DIR/patch-state.sh"

log "step 6: post-fix binary asserts No changes on patched state"
TF_CLI_CONFIG_FILE="$TF_DIR/.terraformrc-post-fix" \
  "$SCRIPT_DIR/assert-no-changes.sh" "$TF_DIR/plan-post-fix.txt"

if (( WITH_V112 )); then
  log "step 7: advisory v1.1.2 repro leg"
  "$SCRIPT_DIR/repro-v112.sh"
fi

log "step 8: assert intentional sync_mode change is detected"
TF_CLI_CONFIG_FILE="$TF_DIR/.terraformrc-post-fix" \
  "$SCRIPT_DIR/assert-intentional-change.sh"

log "step 9: apply the intentional change and re-plan for No changes"
TF_CLI_CONFIG_FILE="$TF_DIR/.terraformrc-post-fix" \
  terraform -chdir="$TF_DIR" apply -auto-approve -no-color \
  >"$TF_DIR/apply-post-fix.txt" 2>&1
# Pass -refresh=true explicitly so the post-apply plan hits the live API.
# assert-no-changes.sh defaults to -refresh=false for the patched-state
# assertions; here we want the opposite — catch any server-side drift or
# unexpected provider-side normalization after apply.
TF_CLI_CONFIG_FILE="$TF_DIR/.terraformrc-post-fix" \
  "$SCRIPT_DIR/assert-no-changes.sh" "$TF_DIR/plan-post-apply.txt" -refresh=true

log "ALL ASSERTIONS PASSED"
