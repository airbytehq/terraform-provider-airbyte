#!/usr/bin/env python3
"""Patch connection resource to use SetNestedAttribute with UniqueByKey for streams.

After Speakeasy regenerates the connection resource/data source files, the
`streams` attribute is generated as a `SetNestedAttribute` with the default
`SuppressDiff` plan modifier. This script replaces that modifier with
`UniqueByKey("name", "namespace")`, which correlates set elements by their
composite identity key instead of by hash.

This fixes two issues:
- #374: cursor_field/primary_key values swapped between streams (Set hash
  reordering caused positional misalignment of computed values).
- #414: regression from #410 where switching to ListNestedAttribute forced
  users to declare streams in API order.

The UniqueByKey modifier matches plan elements to state elements by (name,
namespace), then carries over computed attributes (cursor_field, primary_key)
from state. This preserves source-defined values without requiring positional
matching or hash stability.

Usage:
    python3 scripts/patch_connection_streams.py [directory]

If *directory* is omitted it defaults to `internal/provider`.
"""

from __future__ import annotations

import sys
from pathlib import Path

SENTINEL = "// PATCHED: UniqueByKey"

PROVIDER_DIR = Path("internal/provider")

# The file that needs patching (resource only; data sources are read-only
# and don't need plan modifiers for streams).
TARGET_FILE = "connection_resource.go"


# ---------------------------------------------------------------------------
# Patch: Replace SuppressDiff with UniqueByKey on streams SetNestedAttribute
# ---------------------------------------------------------------------------

# What Speakeasy generates for the streams attribute:
STREAMS_ANCHOR = """\t\t\t\t\t"streams": schema.SetNestedAttribute{
\t\t\t\t\t\tComputed: true,
\t\t\t\t\t\tOptional: true,
\t\t\t\t\t\tPlanModifiers: []planmodifier.Set{
\t\t\t\t\t\t\tspeakeasy_setplanmodifier.SuppressDiff(speakeasy_setplanmodifier.ExplicitSuppress),
\t\t\t\t\t\t},"""

# What we replace it with:
STREAMS_REPLACEMENT = """\t\t\t\t\t"streams": schema.SetNestedAttribute{
\t\t\t\t\t\tComputed: true,
\t\t\t\t\t\tOptional: true,
\t\t\t\t\t\t// PATCHED: UniqueByKey correlates set elements by (name, namespace)
\t\t\t\t\t\t// instead of by hash, fixing #374 (value swapping) and #414
\t\t\t\t\t\t// (positional matching regression from Set->List change).
\t\t\t\t\t\tPlanModifiers: []planmodifier.Set{
\t\t\t\t\t\t\tspeakeasy_setplanmodifier.UniqueByKey("name", "namespace"),
\t\t\t\t\t\t},"""


def patch_file(filepath: Path) -> bool:
    """Patch the connection resource file. Returns True if changes were made."""
    if not filepath.exists():
        print(f"ERROR: {filepath} does not exist", file=sys.stderr)
        sys.exit(1)

    content = filepath.read_text()

    # Check if already patched
    if SENTINEL in content:
        print(f"  Skipping {filepath.name} (already patched)")
        return False

    # Validate anchor exists
    if STREAMS_ANCHOR not in content:
        print(
            f"ERROR: Expected streams SetNestedAttribute anchor not found in {filepath.name}. "
            f"Speakeasy output may have changed format, or the overlay may not be producing "
            f"SetNestedAttribute. Check that the format:set overlay action was NOT removed.",
            file=sys.stderr,
        )
        sys.exit(1)

    # Count occurrences to be safe
    count = content.count(STREAMS_ANCHOR)
    if count != 1:
        print(
            f"ERROR: Streams anchor found {count} times in {filepath.name} (expected 1).",
            file=sys.stderr,
        )
        sys.exit(1)

    # Apply the patch
    content = content.replace(STREAMS_ANCHOR, STREAMS_REPLACEMENT)

    filepath.write_text(content)
    print(f"  Patched {filepath.name}: streams SuppressDiff -> UniqueByKey(name, namespace)")
    return True


def main() -> None:
    directory = Path(sys.argv[1]) if len(sys.argv) > 1 else PROVIDER_DIR

    print("Patching connection streams to use UniqueByKey plan modifier...")
    filepath = directory / TARGET_FILE
    if patch_file(filepath):
        print("Done - UniqueByKey plan modifier applied to streams.")
    else:
        print("Done - already patched.")


if __name__ == "__main__":
    main()
