#!/usr/bin/env python3
"""Patch source/destination resource schemas to mark configuration as Sensitive.

After Speakeasy regenerates source_resource.go and destination_resource.go,
the `configuration` attribute is missing `Sensitive: true`. The Speakeasy overlay
declares `x-speakeasy-param-sensitive: true` on request properties, but Speakeasy
does not propagate this to the generated Terraform resource schema for attributes
using `jsontypes.NormalizedType{}`.

This script injects `Sensitive: true` into the `configuration` schema.StringAttribute
so that Terraform masks the value in plan/apply output and CI/CD logs.

Fixes: https://github.com/airbytehq/terraform-provider-airbyte/issues/408
Related: https://github.com/airbytehq/terraform-provider-airbyte/issues/234

Usage:
    python3 scripts/patch_sensitive_configuration.py
"""

from __future__ import annotations

import sys
from pathlib import Path

PROVIDER_DIR = Path("internal/provider")

TARGET_FILES = [
    "source_resource.go",
    "destination_resource.go",
]

# The anchor: the line declaring Required: true inside the configuration attribute.
# We insert Sensitive: true immediately after this line.
ANCHOR_LINE = "\t\t\t\tRequired:   true,"

# The line to insert after the anchor.
SENSITIVE_LINE = "\t\t\t\tSensitive:  true,"

# Context marker to ensure we only patch inside the configuration attribute block.
CONFIG_CONTEXT = '"configuration": schema.StringAttribute{'


def patch_file(filepath: Path) -> bool:
    """Patch a single resource file. Returns True if changes were made."""
    if not filepath.exists():
        print(f"ERROR: {filepath} does not exist", file=sys.stderr)
        sys.exit(1)

    content = filepath.read_text()

    # --- Find and validate the configuration attribute block ---
    config_count = content.count(CONFIG_CONTEXT)
    if config_count != 1:
        print(
            f"ERROR: Expected exactly 1 configuration attribute block in {filepath.name}, "
            f"found {config_count}. Speakeasy output may have changed format.",
            file=sys.stderr,
        )
        sys.exit(1)

    config_idx = content.find(CONFIG_CONTEXT)

    # Find the closing brace of the configuration attribute block.
    config_end_idx = content.find("\n\t\t\t},", config_idx)
    if config_end_idx == -1:
        print(
            f"ERROR: Could not find the end of the configuration attribute block in "
            f"{filepath.name}. Speakeasy output may have changed format.",
            file=sys.stderr,
        )
        sys.exit(1)

    config_block = content[config_idx:config_end_idx]

    # --- Already patched? (scoped to configuration block) ---
    if SENSITIVE_LINE in config_block:
        print(f"  Skipping {filepath.name} (already patched)")
        return False

    # --- Find and validate the anchor line within the configuration block ---
    anchor_count = config_block.count(ANCHOR_LINE)
    if anchor_count != 1:
        print(
            f"ERROR: Expected exactly 1 anchor line (Required: true) in configuration "
            f"attribute of {filepath.name}, found {anchor_count}.",
            file=sys.stderr,
        )
        sys.exit(1)

    anchor_relative_idx = config_block.find(ANCHOR_LINE)
    anchor_idx = config_idx + anchor_relative_idx

    # Sanity check: the anchor should be close to the config context (within ~200 chars)
    if anchor_relative_idx > 200:
        print(
            f"ERROR: Anchor line is too far from configuration block in {filepath.name} "
            f"(offset {anchor_relative_idx}). Speakeasy output may have changed format.",
            file=sys.stderr,
        )
        sys.exit(1)

    # --- Insert Sensitive: true after the anchor ---
    insert_point = anchor_idx + len(ANCHOR_LINE)
    content = content[:insert_point] + "\n" + SENSITIVE_LINE + content[insert_point:]

    filepath.write_text(content)
    print(f"  Added Sensitive: true to {filepath.name}")
    return True


def main() -> None:
    print("Patching configuration attribute to add Sensitive: true...")
    any_changed = False
    for filename in TARGET_FILES:
        filepath = PROVIDER_DIR / filename
        if patch_file(filepath):
            any_changed = True

    if any_changed:
        print("Done - configuration Sensitive flag applied.")
    else:
        print("Done - all files already patched.")


if __name__ == "__main__":
    main()
