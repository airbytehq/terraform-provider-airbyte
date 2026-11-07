#!/usr/bin/env python3
"""Remove per-attribute SuppressDiff from connection stream elements.

Speakeasy adds a SuppressDiff plan modifier to every computed attribute. For
attributes of `configurations.streams` elements this is wrong: streams is a
SetNestedAttribute, and terraform-plugin-framework pairs each planned set
element with the prior-state element at the *same index*. When a stream is
added to an existing connection, SuppressDiff copies the neighbouring stream's
values (primary_key, cursor_field, sync_mode, ...) into the new stream instead
of leaving them unknown, and the API rejects the apply with a 400.

The set-level UniqueByNameAndNamespace modifier already carries computed
values over from prior state, matching streams by (name, namespace), and it
runs before the per-element modifiers. So the per-attribute SuppressDiff on
direct stream attributes is redundant for existing streams and harmful for new
ones; this script removes it. Deeper nested SuppressDiff modifiers (inside
mappers, selected_fields) are left alone: they only act when the enclosing
stream attribute is unknown, which no longer happens for matched streams.

Fixes: https://github.com/airbytehq/terraform-provider-airbyte/issues/476
Related: https://github.com/airbytehq/terraform-provider-airbyte/issues/91

Usage:
    python3 scripts/patch_stream_suppress_diff.py
"""

from __future__ import annotations

import re
import subprocess
import sys
from pathlib import Path

TARGET_FILE = Path("internal/provider/connection_resource.go")

# The streams attribute block inside the resource schema.
STREAMS_CONTEXT = '"streams": schema.SetNestedAttribute{'

# A PlanModifiers slice holding only SuppressDiff, at the indentation of a
# direct stream attribute's fields (nine tabs). Deeper nested attributes are
# indented further and do not match.
SUPPRESS_BLOCK = re.compile(
    r"\n\t{9}PlanModifiers: \[\]planmodifier\.\w+\{\n"
    r"\t{10}speakeasy_\w+planmodifier\.SuppressDiff\(speakeasy_\w+planmodifier\.ExplicitSuppress\),\n"
    r"\t{9}\},"
)


# A plan modifier package import, e.g.
#   speakeasy_boolplanmodifier "github.com/.../internal/planmodifiers/boolplanmodifier"
IMPORT_LINE = re.compile(r'^\t(speakeasy_\w+planmodifier) "[^"]+"\n', re.MULTILINE)


def drop_unused_imports(content: str) -> str:
    """Remove speakeasy plan modifier imports left unused by the patch."""
    for match in IMPORT_LINE.finditer(content):
        alias = match.group(1)
        if content.count(alias + ".") == 0:
            content = content.replace(match.group(0), "", 1)
    return content


def find_block_end(content: str, start: int) -> int:
    """Return the index just past the closing brace of the block opened at start."""
    depth = 0
    for i in range(content.index("{", start), len(content)):
        if content[i] == "{":
            depth += 1
        elif content[i] == "}":
            depth -= 1
            if depth == 0:
                return i + 1
    print(f"ERROR: unbalanced braces in {TARGET_FILE}", file=sys.stderr)
    sys.exit(1)


def main() -> None:
    if not TARGET_FILE.exists():
        print(f"ERROR: {TARGET_FILE} does not exist", file=sys.stderr)
        sys.exit(1)

    content = TARGET_FILE.read_text()

    count = content.count(STREAMS_CONTEXT)
    if count != 1:
        print(
            f"ERROR: Expected exactly 1 streams attribute block in {TARGET_FILE.name}, "
            f"found {count}. Speakeasy output may have changed format.",
            file=sys.stderr,
        )
        sys.exit(1)

    start = content.index(STREAMS_CONTEXT)
    end = find_block_end(content, start)
    block = content[start:end]

    patched, removed = SUPPRESS_BLOCK.subn("", block)
    if removed == 0:
        print(f"{TARGET_FILE.name}: stream attribute SuppressDiff already removed, skipping")
        return

    content = drop_unused_imports(content[:start] + patched + content[end:])
    TARGET_FILE.write_text(content)
    # Removing modifiers shortens the longest key in some struct literals, so
    # realign them the way Speakeasy's own output is formatted.
    subprocess.run(["gofmt", "-w", str(TARGET_FILE)], check=True)
    print(f"{TARGET_FILE.name}: removed SuppressDiff from {removed} stream attributes")


if __name__ == "__main__":
    main()
