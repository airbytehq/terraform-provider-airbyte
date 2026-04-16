#!/usr/bin/env bash
# Optional leg: run the same plan on the same patched state but with the
# v1.1.2 provider from the Terraform registry (no dev_overrides). A reproducing
# diff here proves the harness is sensitive enough to detect the bug. A "No
# changes" result is treated as a WARN, not a FAIL — see references/RATIONALE.md
# under Known Limitations for why this leg is inherently advisory.
#
# Required environment variables:
#   WORK_DIR  Parent workspace dir; script creates $WORK_DIR/tf-v112
#   TF_DIR    Source Terraform dir with patched state + .terraformrc-v112
#
# Exit status: always 0 (advisory).

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
# shellcheck source=_lib.sh
. "$SCRIPT_DIR/_lib.sh"

require_bin terraform sed
require_env WORK_DIR TF_DIR

V112_DIR="$WORK_DIR/tf-v112"
log "setting up v1.1.2 workspace at $V112_DIR"
rm -rf "$V112_DIR"
cp -r "$TF_DIR" "$V112_DIR"
rm -rf "$V112_DIR/.terraform" "$V112_DIR/.terraform.lock.hcl"
sed -i 's#version = "~> 1.1.0"#version = "= 1.1.2"#' "$V112_DIR/main.tf"

log "terraform init against registry (no dev_overrides)"
TF_CLI_CONFIG_FILE="$V112_DIR/.terraformrc-v112" \
  terraform -chdir="$V112_DIR" init -upgrade >/dev/null

log "terraform plan against patched state with v1.1.2"
TF_CLI_CONFIG_FILE="$V112_DIR/.terraformrc-v112" \
  terraform -chdir="$V112_DIR" plan -refresh=false -no-color \
  >"$V112_DIR/plan-v112.txt" 2>&1 || true

if grep -q "No changes" "$V112_DIR/plan-v112.txt"; then
  log "WARN: v1.1.2 leg reported \"No changes\" — phantom-diff repro did not fire in this environment."
  log "WARN: this is advisory only. See references/RATIONALE.md (Known Limitations)."
else
  log "v1.1.2 leg reported a diff as expected (phantom diff reproduced)."
  log "plan output: $V112_DIR/plan-v112.txt"
fi
