#!/usr/bin/env bash
set -euo pipefail

# Release-version and Speakeasy checksum churn alone should not trigger regeneration PRs or drift.
# Usage: is_version_only_change.sh <repo-path> <old-file> <new-file>
[[ $# -eq 3 ]] || exit 1
VERSION_FILES='^(gen\.yaml|\.speakeasy/gen\.lock|internal/sdk/sdk\.go|docs/index\.md|examples/provider/provider\.tf|README\.md)$'
CHECKSUM_LINES='^ *(configChecksum|generation_id|pristine_commit_hash|pristine_tree_hash|last_write_checksum|pristine_git_object):'

normalize() {
    sed -E \
        -e 's/[0-9]+\.[0-9]+\.[0-9]+/X.Y.Z/g' \
        -e "\#${CHECKSUM_LINES}#d"
}

[[ $1 =~ $VERSION_FILES && -r $2 && -r $3 ]] || exit 1
cmp -s <(normalize < "$2") <(normalize < "$3")
