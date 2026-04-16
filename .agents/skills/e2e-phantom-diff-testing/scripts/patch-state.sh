#!/usr/bin/env bash
# Patch $TF_DIR/terraform.tfstate so that every full_refresh_* stream has
# primary_key = null and cursor_field = null. This simulates state that was
# written by an older/different provider and is the core mechanism that makes
# the phantom-diff repro deterministic: a fresh apply would store the API
# response symmetrically and hide the bug.
#
# A copy of the pre-patch state is preserved at
#   $TF_DIR/terraform.tfstate.pre-patch
# so later steps can restore it when testing intentional changes.
#
# Required environment variables:
#   TF_DIR   Terraform workspace dir containing terraform.tfstate

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
# shellcheck source=_lib.sh
. "$SCRIPT_DIR/_lib.sh"

require_bin jq
require_env TF_DIR
[[ -f "$TF_DIR/terraform.tfstate" ]] || fail "no terraform.tfstate at $TF_DIR"

cp "$TF_DIR/terraform.tfstate" "$TF_DIR/terraform.tfstate.pre-patch"

log "patching state: nulling primary_key/cursor_field on full_refresh_* streams"
jq '
  .resources[].instances[].attributes.configurations.streams |=
    ( map(
        if .sync_mode | test("^full_refresh") then
          .primary_key = null | .cursor_field = null
        else . end
      ) )
' "$TF_DIR/terraform.tfstate" > "$TF_DIR/terraform.tfstate.patched"
mv "$TF_DIR/terraform.tfstate.patched" "$TF_DIR/terraform.tfstate"

PATCHED_NULL_COUNT="$(jq '
  [ .resources[].instances[].attributes.configurations.streams[]
    | select(.sync_mode | test("^full_refresh"))
    | select(.primary_key == null and .cursor_field == null) ]
  | length
' "$TF_DIR/terraform.tfstate")"

if [[ "$PATCHED_NULL_COUNT" -lt 2 ]]; then
  fail "jq patch produced $PATCHED_NULL_COUNT null full_refresh streams (expected >= 2); schema shape may have changed"
fi

log "state patched: $PATCHED_NULL_COUNT full_refresh streams with null pk/cursor"
