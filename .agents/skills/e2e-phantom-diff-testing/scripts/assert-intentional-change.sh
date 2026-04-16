#!/usr/bin/env bash
# Secondary assertion: confirm the fix does not over-suppress real diffs.
# Restore the un-patched state, flip one stream's sync_mode in the HCL, and
# assert `terraform plan` reports exactly one in-place change.
#
# Required environment variables:
#   TF_DIR                Terraform workspace dir; must contain
#                         terraform.tfstate.pre-patch from patch-state.sh
#   TF_CLI_CONFIG_FILE    Path to the post-fix dev_overrides rc file

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
# shellcheck source=_lib.sh
. "$SCRIPT_DIR/_lib.sh"

require_bin terraform sed
require_env TF_DIR TF_CLI_CONFIG_FILE
[[ -f "$TF_DIR/terraform.tfstate.pre-patch" ]] \
  || fail "no $TF_DIR/terraform.tfstate.pre-patch — run patch-state.sh first"

log "restoring pre-patch state and flipping purchases: incremental_append -> full_refresh_append"
cp "$TF_DIR/terraform.tfstate.pre-patch" "$TF_DIR/terraform.tfstate"
# Match on the bare value, not `sync_mode = "incremental_append"`, because HCL
# formatting pads the `=` with variable whitespace across TF versions.
sed -i 's/"incremental_append"/"full_refresh_append"/' "$TF_DIR/main.tf"

log "running terraform plan (expecting 1 in-place change)"
terraform -chdir="$TF_DIR" plan -no-color \
  >"$TF_DIR/plan-smoke.txt" 2>&1 || true

if ! grep -q "Plan: 0 to add, 1 to change, 0 to destroy" "$TF_DIR/plan-smoke.txt"; then
  log "plan did not match expected single-change shape (tail below):"
  tail -40 "$TF_DIR/plan-smoke.txt" >&2
  fail "expected \"Plan: 0 to add, 1 to change, 0 to destroy\""
fi

log "PASS: intentional sync_mode change detected as a single in-place change"
