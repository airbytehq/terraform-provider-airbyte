#!/usr/bin/env bash
# Shared helpers for the e2e-phantom-diff-testing skill scripts.
#
# Source this file from every step script:
#   SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
#   # shellcheck source=_lib.sh
#   . "$SCRIPT_DIR/_lib.sh"

set -euo pipefail

log()  { printf '[phantom-diff] %s\n' "$*" >&2; }
fail() { printf '[phantom-diff] FAIL: %s\n' "$*" >&2; exit 1; }

require_env() {
  local missing=()
  local var
  for var in "$@"; do
    if [[ -z "${!var:-}" ]]; then
      missing+=("$var")
    fi
  done
  if (( ${#missing[@]} > 0 )); then
    fail "required environment variable(s) not set: ${missing[*]}"
  fi
}

require_bin() {
  local missing=()
  local bin
  for bin in "$@"; do
    if ! command -v "$bin" >/dev/null 2>&1; then
      missing+=("$bin")
    fi
  done
  if (( ${#missing[@]} > 0 )); then
    fail "required binary/binaries not on PATH: ${missing[*]}"
  fi
}
