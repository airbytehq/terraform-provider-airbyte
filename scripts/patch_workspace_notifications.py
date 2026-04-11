#!/usr/bin/env python3
"""Patch workspace SDK files to initialize Notifications pointer before access.

After Speakeasy regenerates workspace_data_source_sdk.go and workspace_resource_sdk.go,
the generated RefreshFromSharedWorkspaceResponse method accesses r.Notifications.ConnectionUpdate
without first initializing r.Notifications (which is a *tfTypes.NotificationsConfig pointer,
nil by default). This causes a SIGSEGV nil pointer dereference.

This script injects:
  1. The missing tfTypes import
  2. An initialization line: r.Notifications = &tfTypes.NotificationsConfig{}

Fixes: https://github.com/airbytehq/terraform-provider-airbyte/issues/398

Usage:
    python3 scripts/patch_workspace_notifications.py
"""

from __future__ import annotations

import sys
from pathlib import Path

PROVIDER_DIR = Path("internal/provider")

TARGET_FILES = [
    "workspace_data_source_sdk.go",
    "workspace_resource_sdk.go",
]

# The import we need to add (tfTypes alias for the types package)
TFTYPES_IMPORT = '\ttfTypes "github.com/airbytehq/terraform-provider-airbyte/internal/provider/types"'

# The anchor line after which we insert the Notifications initialization.
# This is the last assignment before the first r.Notifications access.
ANCHOR_LINE = "\t\tr.Name = types.StringValue(resp.Name)"

# The initialization line to insert after the anchor.
INIT_LINE = "\t\tr.Notifications = &tfTypes.NotificationsConfig{}"


def patch_file(filepath: Path) -> bool:
    """Patch a single workspace SDK file. Returns True if changes were made."""
    if not filepath.exists():
        print(f"ERROR: {filepath} does not exist", file=sys.stderr)
        sys.exit(1)

    content = filepath.read_text()
    original = content
    changed = False

    # --- Step 1: Add tfTypes import if missing ---
    if TFTYPES_IMPORT not in content:
        # Find the import block and insert before the closing paren
        import_close = content.find("\n)\n")
        if import_close == -1:
            print(f"ERROR: Could not find import block closing in {filepath}", file=sys.stderr)
            sys.exit(1)
        content = content[:import_close] + "\n" + TFTYPES_IMPORT + content[import_close:]
        changed = True
        print(f"  Added tfTypes import to {filepath.name}")
    else:
        print(f"  Skipping tfTypes import in {filepath.name} (already present)")

    # --- Step 2: Add Notifications initialization ---
    if INIT_LINE in content:
        print(f"  Skipping Notifications init in {filepath.name} (already patched)")
    else:
        # Validate anchor exists exactly once in RefreshFromSharedWorkspaceResponse
        anchor_count = content.count(ANCHOR_LINE)
        if anchor_count == 0:
            print(
                f"ERROR: Anchor line not found in {filepath.name}. "
                f"Speakeasy output may have changed format.",
                file=sys.stderr,
            )
            sys.exit(1)
        if anchor_count != 1:
            print(
                f"ERROR: Anchor line found {anchor_count} times in {filepath.name} "
                f"(expected 1). Cannot safely patch.",
                file=sys.stderr,
            )
            sys.exit(1)

        # Insert the init line after the anchor
        anchor_idx = content.index(ANCHOR_LINE)
        insert_point = anchor_idx + len(ANCHOR_LINE)
        content = content[:insert_point] + "\n" + INIT_LINE + content[insert_point:]
        changed = True
        print(f"  Added Notifications init to {filepath.name}")

    if changed:
        filepath.write_text(content)
        print(f"  Patched {filepath}")
    else:
        print(f"  No changes needed for {filepath.name}")

    return content != original


def main() -> None:
    print("Patching workspace SDK files to fix Notifications nil pointer...")
    any_changed = False
    for filename in TARGET_FILES:
        filepath = PROVIDER_DIR / filename
        if patch_file(filepath):
            any_changed = True

    if any_changed:
        print("Done — workspace Notifications nil pointer fix applied.")
    else:
        print("Done — all files already patched.")


if __name__ == "__main__":
    main()
