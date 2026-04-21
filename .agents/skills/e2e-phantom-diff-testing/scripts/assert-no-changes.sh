#!/usr/bin/env bash
# Run `terraform plan` in $TF_DIR with the provided TF_CLI_CONFIG_FILE and
# assert the output contains "No changes." Writes the plan output to a file
# named by the caller so multiple invocations don't stomp each other.
#
# Pass `-refresh=false` (the default) when asserting against patched state,
# since a normal plan would refresh and undo the jq patch.
#
# Required environment variables:
#   TF_DIR                Terraform workspace dir
#   TF_CLI_CONFIG_FILE    Path to the rc file (post-fix dev_overrides or v1.1.2)
#
# Usage:
#   assert-no-changes.sh <plan-output-file> [extra terraform plan args...]
#
# Exit status:
#   0  plan contained "No changes"
#   1  plan showed a diff (last 50 lines of output are printed)

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
# shellcheck source=_lib.sh
. "$SCRIPT_DIR/_lib.sh"

require_bin terraform
require_env TF_DIR TF_CLI_CONFIG_FILE

PLAN_OUT="${1:?missing plan-output-file arg}"
shift || true

EXTRA_ARGS=("$@")
if (( ${#EXTRA_ARGS[@]} == 0 )); then
  EXTRA_ARGS=(-refresh=false)
fi

log "running terraform plan -> $PLAN_OUT (args: ${EXTRA_ARGS[*]})"
terraform -chdir="$TF_DIR" plan -no-color "${EXTRA_ARGS[@]}" \
  >"$PLAN_OUT" 2>&1 || true

if ! grep -q "No changes" "$PLAN_OUT"; then
  log "plan showed a diff (tail below):"
  tail -50 "$PLAN_OUT" >&2
  fail "expected \"No changes\" but saw a diff in $PLAN_OUT"
fi

log "PASS: No changes"
