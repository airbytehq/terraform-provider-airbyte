#!/usr/bin/env python3
"""Patch workspace SDK files to initialize nested Notifications pointers.

After Speakeasy regenerates workspace_data_source_sdk.go and workspace_resource_sdk.go,
the generated RefreshFromSharedWorkspaceResponse method accesses nested pointer fields
(r.Notifications, r.Notifications.<SubType>, r.Notifications.<SubType>.Email, etc.)
without first initializing them. All these are nil by default, causing SIGSEGV panics.

This script injects initialization lines at three levels:
  1. Top-level:   r.Notifications = &tfTypes.NotificationsConfig{}
  2. Sub-type:    r.Notifications.<SubType> = &tfTypes.NotificationConfig{}
  3. Leaf:        r.Notifications.<SubType>.Email = &tfTypes.EmailNotificationConfig{}
                  r.Notifications.<SubType>.Webhook = &tfTypes.WebhookNotificationConfig{}

Fixes: https://github.com/airbytehq/terraform-provider-airbyte/issues/398
       https://github.com/airbytehq/terraform-provider-airbyte/issues/413

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

# The anchor line after which we insert the top-level Notifications initialization.
ANCHOR_LINE = "\t\tr.Name = types.StringValue(resp.Name)"

# The top-level initialization line.
INIT_LINE = "\t\tr.Notifications = &tfTypes.NotificationsConfig{}"

# The 6 notification sub-types whose pointers need initialization.
NOTIFICATION_SUB_TYPES = [
    "ConnectionUpdate",
    "ConnectionUpdateActionRequired",
    "Failure",
    "Success",
    "SyncDisabled",
    "SyncDisabledWarning",
]


def _inject_after_else(content: str, anchor: str, init_line: str) -> str:
    """Find 'anchor ... } else {' and inject init_line after the else brace.

    The anchor is a line like 'if resp.Notifications.Foo == nil {'.
    After the matching '} else {', we inject the init_line on the next line.
    Returns the content unchanged only if already patched; otherwise fails fast
    when the expected generated-code structure is not found.
    """
    idx = content.find(anchor)
    if idx == -1:
        raise ValueError(
            f"Failed to apply notification patch: anchor not found: {anchor!r}"
        )

    # Validate anchor appears exactly once
    anchor_count = content.count(anchor)
    if anchor_count != 1:
        raise ValueError(
            f"Failed to apply notification patch: anchor found {anchor_count} times "
            f"(expected 1): {anchor!r}"
        )

    # Find the '} else {' that follows this anchor
    else_pattern = "} else {"
    search_start = idx + len(anchor)
    else_idx = content.find(else_pattern, search_start)
    if else_idx == -1:
        raise ValueError(
            f"Failed to apply notification patch: "
            f"expected {else_pattern!r} after anchor {anchor!r}"
        )

    insert_point = else_idx + len(else_pattern)

    # Check if init_line is already present right after the else
    after_else = content[insert_point:insert_point + len(init_line) + 10]
    if init_line.strip() in after_else:
        return content

    content = content[:insert_point] + "\n" + init_line + content[insert_point:]
    return content


def patch_file(filepath: Path) -> bool:
    """Patch a single workspace SDK file. Returns True if changes were made."""
    if not filepath.exists():
        print(f"ERROR: {filepath} does not exist", file=sys.stderr)
        sys.exit(1)

    content = filepath.read_text()
    original = content

    # --- Step 1: Add tfTypes import if missing ---
    if TFTYPES_IMPORT not in content:
        import_close = content.find("\n)\n")
        if import_close == -1:
            print(f"ERROR: Could not find import block closing in {filepath}", file=sys.stderr)
            sys.exit(1)
        content = content[:import_close] + "\n" + TFTYPES_IMPORT + content[import_close:]
        print(f"  Added tfTypes import to {filepath.name}")
    else:
        print(f"  Skipping tfTypes import in {filepath.name} (already present)")

    # --- Step 2: Add top-level Notifications initialization ---
    if INIT_LINE not in content:
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

        anchor_idx = content.index(ANCHOR_LINE)
        insert_point = anchor_idx + len(ANCHOR_LINE)
        content = content[:insert_point] + "\n" + INIT_LINE + content[insert_point:]
        print(f"  Added top-level Notifications init to {filepath.name}")
    else:
        print(f"  Skipping top-level Notifications init in {filepath.name} (already patched)")

    # --- Step 3: Add sub-type and leaf pointer initializations ---
    try:
        for sub_type in NOTIFICATION_SUB_TYPES:
            # Sub-type level: after 'if resp.Notifications.<SubType> == nil { ... } else {'
            sub_anchor = f"\t\tif resp.Notifications.{sub_type} == nil {{"
            sub_init = f"\t\t\tr.Notifications.{sub_type} = &tfTypes.NotificationConfig{{}}"
            content = _inject_after_else(content, sub_anchor, sub_init)

            # Email level: after 'if resp.Notifications.<SubType>.Email == nil { ... } else {'
            email_anchor = f"\t\t\tif resp.Notifications.{sub_type}.Email == nil {{"
            email_init = f"\t\t\t\tr.Notifications.{sub_type}.Email = &tfTypes.EmailNotificationConfig{{}}"
            content = _inject_after_else(content, email_anchor, email_init)

            # Webhook level: after 'if resp.Notifications.<SubType>.Webhook == nil { ... } else {'
            webhook_anchor = f"\t\t\tif resp.Notifications.{sub_type}.Webhook == nil {{"
            webhook_init = f"\t\t\t\tr.Notifications.{sub_type}.Webhook = &tfTypes.WebhookNotificationConfig{{}}"
            content = _inject_after_else(content, webhook_anchor, webhook_init)
    except ValueError as exc:
        print(f"ERROR in {filepath.name}: {exc}", file=sys.stderr)
        sys.exit(1)

    changed = content != original
    if changed:
        filepath.write_text(content)
        print(f"  Patched {filepath}")
    else:
        print(f"  No changes needed for {filepath.name}")

    return changed


def main() -> None:
    print("Patching workspace SDK files to fix Notifications nil pointer dereferences...")
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
