#!/usr/bin/env python3
"""Patch source_resource.go and destination_resource.go to preserve user
configuration across API calls, preventing phantom diffs caused by the Airbyte
API returning redacted secrets.

After Speakeasy regenerates these files, this script inserts save/restore logic
for ``data.Configuration`` in the Create, Read, and Update methods of both
resources.

**Why this is needed:**

The Airbyte API returns ``**********`` (or secret coordinates) instead of
plaintext secret values.  When Terraform's Read/refresh stores those redacted
values in state, the next ``terraform plan`` sees a diff between the user's
real config and the masked one — even though nothing changed.

The fix captures ``data.Configuration`` before any API call and restores it
before the state is saved.  In the Read method the restore is unconditional
(covers the ``terraform import`` case where config may be null).  In Create
and Update the restore is guarded so that null/unknown values are not written.

Resolves: https://github.com/airbytehq/terraform-provider-airbyte/issues/389
Prior fix: https://github.com/airbytehq/terraform-provider-airbyte/pull/362

Usage:
    python3 scripts/patch_config_preservation.py [directory]

If *directory* is omitted it defaults to ``internal/provider``.
"""

from __future__ import annotations

import re
import sys
from pathlib import Path

SENTINEL = "preservedConfig"

# ---------------------------------------------------------------------------
# Patch definitions
# ---------------------------------------------------------------------------
# Each tuple is (anchor_text, replacement_text).
# anchor_text must appear *exactly* in the generated file.  The replacement
# text includes the anchor so the patch is a simple ``str.replace``.

# ── Source ─────────────────────────────────────────────────────────────────

SOURCE_CREATE_ANCHOR = """\
\trequest, requestDiags := data.ToSharedSourceCreateRequest(ctx)"""

SOURCE_CREATE_REPLACEMENT = """\
\t// PATCHED: Preserve the user's plaintext configuration from the plan
\t// before API calls overwrite it with redacted secrets.
\tpreservedConfig := data.Configuration

\trequest, requestDiags := data.ToSharedSourceCreateRequest(ctx)"""

SOURCE_READ_ANCHOR = """\
\trequest, requestDiags := data.ToOperationsGetSourceRequest(ctx)
\tresp.Diagnostics.Append(requestDiags...)

\tif resp.Diagnostics.HasError() {
\t\treturn
\t}
\tres, err := r.client.Sources.GetSource(ctx, *request)"""

SOURCE_READ_REPLACEMENT = """\
\t// PATCHED: Preserve the user's configuration from state before the API
\t// overwrites it with redacted secrets ("**********") or secret coordinates.
\tpreservedConfig := data.Configuration

\trequest, requestDiags := data.ToOperationsGetSourceRequest(ctx)
\tresp.Diagnostics.Append(requestDiags...)

\tif resp.Diagnostics.HasError() {
\t\treturn
\t}
\tres, err := r.client.Sources.GetSource(ctx, *request)"""

SOURCE_UPDATE_ANCHOR = """\
\trequest, requestDiags := data.ToOperationsPutSourceRequest(ctx)"""

SOURCE_UPDATE_REPLACEMENT = """\
\t// PATCHED: Preserve the user's plaintext configuration from the plan
\t// before API calls overwrite it with redacted secrets.
\tpreservedConfig := data.Configuration

\trequest, requestDiags := data.ToOperationsPutSourceRequest(ctx)"""

# ── Destination ────────────────────────────────────────────────────────────

DEST_CREATE_ANCHOR = """\
\trequest, requestDiags := data.ToSharedDestinationCreateRequest(ctx)"""

DEST_CREATE_REPLACEMENT = """\
\t// PATCHED: Preserve the user's plaintext configuration from the plan
\t// before API calls overwrite it with redacted secrets.
\tpreservedConfig := data.Configuration

\trequest, requestDiags := data.ToSharedDestinationCreateRequest(ctx)"""

DEST_READ_ANCHOR = """\
\trequest, requestDiags := data.ToOperationsGetDestinationRequest(ctx)
\tresp.Diagnostics.Append(requestDiags...)

\tif resp.Diagnostics.HasError() {
\t\treturn
\t}
\tres, err := r.client.Destinations.GetDestination(ctx, *request)"""

DEST_READ_REPLACEMENT = """\
\t// PATCHED: Preserve the user's configuration from state before the API
\t// overwrites it with redacted secrets ("**********") or secret coordinates.
\tpreservedConfig := data.Configuration

\trequest, requestDiags := data.ToOperationsGetDestinationRequest(ctx)
\tresp.Diagnostics.Append(requestDiags...)

\tif resp.Diagnostics.HasError() {
\t\treturn
\t}
\tres, err := r.client.Destinations.GetDestination(ctx, *request)"""

DEST_UPDATE_ANCHOR = """\
\trequest, requestDiags := data.ToOperationsPutDestinationRequest(ctx)"""

DEST_UPDATE_REPLACEMENT = """\
\t// PATCHED: Preserve the user's plaintext configuration from the plan
\t// before API calls overwrite it with redacted secrets.
\tpreservedConfig := data.Configuration

\trequest, requestDiags := data.ToOperationsPutDestinationRequest(ctx)"""

# ── Restore blocks (shared pattern) ───────────────────────────────────────
# In Create and Update the restore is conditional; in Read it is unconditional.

SAVE_STATE_LINE = "\t// Save updated data into Terraform state\n"


def _restore_block_conditional() -> str:
    return (
        "\t// PATCHED: Restore the user's original configuration instead of the\n"
        "\t// API's redacted values to prevent phantom diffs.\n"
        "\tif !preservedConfig.IsNull() && !preservedConfig.IsUnknown() {\n"
        "\t\tdata.Configuration = preservedConfig\n"
        "\t}\n\n"
    )


def _restore_block_unconditional() -> str:
    return (
        "\t// PATCHED: Always restore the user's configuration from state — even\n"
        "\t// when null (e.g. after terraform import) — so that API redactions are\n"
        "\t// never persisted into state.\n"
        "\tdata.Configuration = preservedConfig\n\n"
    )


# ---------------------------------------------------------------------------
# Helpers
# ---------------------------------------------------------------------------

def _already_patched(content: str) -> bool:
    return SENTINEL in content


def _apply_anchor_patch(
    content: str,
    anchor: str,
    replacement: str,
    label: str,
) -> str:
    if anchor not in content:
        print(f"  WARNING: anchor not found for {label} — skipping", file=sys.stderr)
        return content
    if content.count(anchor) > 1:
        print(
            f"  WARNING: anchor appears {content.count(anchor)} times for "
            f"{label} — skipping to avoid ambiguous patch",
            file=sys.stderr,
        )
        return content
    content = content.replace(anchor, replacement, 1)
    print(f"  Injected preserve for {label}")
    return content


def _inject_restore_before_save_state(
    content: str,
    method_signature: str,
    restore_block: str,
    label: str,
) -> str:
    """Insert *restore_block* immediately before the ``// Save updated data``
    comment that lives inside the method identified by *method_signature*.

    We locate the method first, then find the *last* ``// Save updated data``
    line inside that method body to handle generated code that may contain
    multiple such comments (e.g. Create calls Get after the initial create).
    """
    method_start = content.find(method_signature)
    if method_start == -1:
        print(f"  WARNING: method not found for {label} restore — skipping", file=sys.stderr)
        return content

    # Find the method's closing brace by counting braces.
    brace_depth = 0
    method_end = method_start
    found_open = False
    for i in range(method_start, len(content)):
        if content[i] == "{":
            brace_depth += 1
            found_open = True
        elif content[i] == "}":
            brace_depth -= 1
            if found_open and brace_depth == 0:
                method_end = i
                break

    method_body = content[method_start:method_end]
    # Find the *last* occurrence of the save-state line in the method.
    last_save_idx = method_body.rfind(SAVE_STATE_LINE)
    if last_save_idx == -1:
        print(f"  WARNING: save-state line not found for {label} restore — skipping", file=sys.stderr)
        return content

    abs_idx = method_start + last_save_idx
    content = content[:abs_idx] + restore_block + content[abs_idx:]
    print(f"  Injected restore for {label}")
    return content


# ---------------------------------------------------------------------------
# File-level patching
# ---------------------------------------------------------------------------

def patch_source(content: str) -> str:
    if _already_patched(content):
        print("  source_resource.go: already patched — skipping")
        return content

    content = _apply_anchor_patch(content, SOURCE_CREATE_ANCHOR, SOURCE_CREATE_REPLACEMENT, "Source.Create")
    content = _apply_anchor_patch(content, SOURCE_READ_ANCHOR, SOURCE_READ_REPLACEMENT, "Source.Read")
    content = _apply_anchor_patch(content, SOURCE_UPDATE_ANCHOR, SOURCE_UPDATE_REPLACEMENT, "Source.Update")

    # Restore blocks (must be done after preserve injection).
    content = _inject_restore_before_save_state(
        content,
        "func (r *SourceResource) Create(",
        _restore_block_conditional(),
        "Source.Create",
    )
    content = _inject_restore_before_save_state(
        content,
        "func (r *SourceResource) Read(",
        _restore_block_unconditional(),
        "Source.Read",
    )
    content = _inject_restore_before_save_state(
        content,
        "func (r *SourceResource) Update(",
        _restore_block_conditional(),
        "Source.Update",
    )
    return content


def patch_destination(content: str) -> str:
    if _already_patched(content):
        print("  destination_resource.go: already patched — skipping")
        return content

    content = _apply_anchor_patch(content, DEST_CREATE_ANCHOR, DEST_CREATE_REPLACEMENT, "Destination.Create")
    content = _apply_anchor_patch(content, DEST_READ_ANCHOR, DEST_READ_REPLACEMENT, "Destination.Read")
    content = _apply_anchor_patch(content, DEST_UPDATE_ANCHOR, DEST_UPDATE_REPLACEMENT, "Destination.Update")

    content = _inject_restore_before_save_state(
        content,
        "func (r *DestinationResource) Create(",
        _restore_block_conditional(),
        "Destination.Create",
    )
    content = _inject_restore_before_save_state(
        content,
        "func (r *DestinationResource) Read(",
        _restore_block_unconditional(),
        "Destination.Read",
    )
    content = _inject_restore_before_save_state(
        content,
        "func (r *DestinationResource) Update(",
        _restore_block_conditional(),
        "Destination.Update",
    )
    return content


def main() -> None:
    provider_dir = Path(sys.argv[1]) if len(sys.argv) > 1 else Path("internal/provider")

    if not provider_dir.is_dir():
        print(f"ERROR: {provider_dir} is not a directory", file=sys.stderr)
        sys.exit(1)

    changed = False

    for filename, patcher in [
        ("source_resource.go", patch_source),
        ("destination_resource.go", patch_destination),
    ]:
        filepath = provider_dir / filename
        if not filepath.exists():
            print(f"WARNING: {filepath} not found — skipping", file=sys.stderr)
            continue

        print(f"Patching {filepath} ...")
        original = filepath.read_text()
        patched = patcher(original)
        if patched != original:
            filepath.write_text(patched)
            changed = True
            print(f"  ✓ {filepath} patched")
        else:
            print(f"  (no changes needed)")

    if not changed:
        print("No files were modified.")


if __name__ == "__main__":
    main()
