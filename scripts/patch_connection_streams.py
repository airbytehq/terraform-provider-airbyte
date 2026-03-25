#!/usr/bin/env python3
"""Patch connection resource to fix stream drift issues.

After Speakeasy regenerates the connection resource files, this script applies
two fixes for perpetual state drift (GitHub issue #374):

1. Changes `streams` from SetNestedAttribute to ListNestedAttribute in the
   schema definition. Sets use hash-based element matching, which fails when
   config elements have Unknown computed fields and state elements have Known
   values — causing positional mis-correlation and value swaps between streams.
   Lists use positional correlation by default, avoiding this problem.

2. Adds nil guards for cursorField/primaryKey serialization in both
   ToSharedConnectionCreateRequest and ToSharedConnectionPatchRequest, matching
   the existing pattern used by namespace/syncMode. Without these guards,
   source-defined computed values leak into PATCH requests.

Usage:
    python3 scripts/patch_connection_streams.py
"""

from __future__ import annotations

import sys
from pathlib import Path

PROVIDER_DIR = Path("internal/provider")
CONNECTION_RESOURCE = PROVIDER_DIR / "connection_resource.go"
CONNECTION_RESOURCE_SDK = PROVIDER_DIR / "connection_resource_sdk.go"


def patch_set_to_list_attribute(content: str) -> str:
    """Change streams from SetNestedAttribute to ListNestedAttribute.

    This fixes the hash-based element matching issue where Terraform can't
    correlate config elements (with Unknown computed fields) to state elements
    (with Known computed fields), causing stream properties to swap.
    """
    old_schema = '"streams": schema.SetNestedAttribute{'
    new_schema = '"streams": schema.ListNestedAttribute{'

    old_plan_modifier = (
        "PlanModifiers: []planmodifier.Set{\n"
        "\t\t\t\t\t\t\tspeakeasy_setplanmodifier.SuppressDiff(speakeasy_setplanmodifier.ExplicitSuppress),\n"
        "\t\t\t\t\t\t},"
    )
    new_plan_modifier = (
        "PlanModifiers: []planmodifier.List{\n"
        "\t\t\t\t\t\t\tspeakeasy_listplanmodifier.SuppressDiff(speakeasy_listplanmodifier.ExplicitSuppress),\n"
        "\t\t\t\t\t\t},"
    )

    schema_count = content.count(old_schema)
    modifier_count = content.count(old_plan_modifier)

    # If neither pattern is present, check if already patched
    if schema_count == 0 and modifier_count == 0:
        if '"streams": schema.ListNestedAttribute{' in content:
            print("  Set->List patch already applied; skipping")
            return content
        # Neither old nor new pattern found — something is wrong
        print(
            "ERROR: could not find SetNestedAttribute or ListNestedAttribute for streams",
            file=sys.stderr,
        )
        sys.exit(1)

    has_error = False
    if schema_count != 1:
        print(
            f'ERROR: expected 1 occurrence of \'"streams": schema.SetNestedAttribute{{\''
            f" but found {schema_count}",
            file=sys.stderr,
        )
        has_error = True

    if modifier_count != 1:
        print(
            f"ERROR: expected 1 occurrence of the Set plan modifier block "
            f"but found {modifier_count}",
            file=sys.stderr,
        )
        has_error = True

    if has_error:
        print(
            "  Aborting Set->List patch to avoid partially updated connection_resource.go",
            file=sys.stderr,
        )
        sys.exit(1)

    content = content.replace(old_schema, new_schema)
    print("  Patched SetNestedAttribute -> ListNestedAttribute")

    content = content.replace(old_plan_modifier, new_plan_modifier)
    print("  Patched Set plan modifier -> List plan modifier")

    return content


def patch_unused_set_import(content: str) -> str:
    """Remove unused speakeasy_setplanmodifier import if no longer referenced."""
    # Check if speakeasy_setplanmodifier is still used elsewhere in the file
    # (beyond the import line itself)
    import_line = 'speakeasy_setplanmodifier "github.com/airbytehq/terraform-provider-airbyte/internal/planmodifiers/setplanmodifier"'
    usage_count = content.count("speakeasy_setplanmodifier")
    # One occurrence = just the import; if only 1, it's unused
    if usage_count == 1:
        content = content.replace(f"\t{import_line}\n", "")
    return content


def patch_cursor_primary_key_nil_guards(content: str) -> str:
    """Add nil guards for cursorField and primaryKey serialization.

    The generated code unconditionally serializes cursorField and primaryKey
    into API requests, even when the user didn't specify them (relying on
    source-defined defaults). This causes source-defined values to round-trip
    back to the API.

    This patch wraps the serialization with len() > 0 checks so that
    empty/unset cursorField and primaryKey are sent as nil (omitted from JSON
    via omitempty), matching how namespace and syncMode are handled.
    """
    # Pattern: the unconditional cursorField serialization block
    old_cursor = """\t\t\tcursorField := make([]string, 0, len(r.Configurations.Streams[streamsIndex].CursorField))
\t\t\tfor cursorFieldIndex := range r.Configurations.Streams[streamsIndex].CursorField {
\t\t\t\tcursorField = append(cursorField, r.Configurations.Streams[streamsIndex].CursorField[cursorFieldIndex].ValueString())
\t\t\t}"""

    new_cursor = """\t\t\tvar cursorField []string
\t\t\tif len(r.Configurations.Streams[streamsIndex].CursorField) > 0 {
\t\t\t\tcursorField = make([]string, 0, len(r.Configurations.Streams[streamsIndex].CursorField))
\t\t\t\tfor cursorFieldIndex := range r.Configurations.Streams[streamsIndex].CursorField {
\t\t\t\t\tcursorField = append(cursorField, r.Configurations.Streams[streamsIndex].CursorField[cursorFieldIndex].ValueString())
\t\t\t\t}
\t\t\t}"""

    # Pattern: the unconditional primaryKey serialization block
    old_pk = """\t\t\tprimaryKey := make([][]string, 0, len(r.Configurations.Streams[streamsIndex].PrimaryKey))
\t\t\tfor primaryKeyIndex := range r.Configurations.Streams[streamsIndex].PrimaryKey {
\t\t\t\tprimaryKeyTmp := make([]string, 0, len(r.Configurations.Streams[streamsIndex].PrimaryKey[primaryKeyIndex]))
\t\t\t\tfor index := range r.Configurations.Streams[streamsIndex].PrimaryKey[primaryKeyIndex] {
\t\t\t\t\tprimaryKeyTmp = append(primaryKeyTmp, r.Configurations.Streams[streamsIndex].PrimaryKey[primaryKeyIndex][index].ValueString())
\t\t\t\t}
\t\t\t\tprimaryKey = append(primaryKey, primaryKeyTmp)
\t\t\t}"""

    new_pk = """\t\t\tvar primaryKey [][]string
\t\t\tif len(r.Configurations.Streams[streamsIndex].PrimaryKey) > 0 {
\t\t\t\tprimaryKey = make([][]string, 0, len(r.Configurations.Streams[streamsIndex].PrimaryKey))
\t\t\t\tfor primaryKeyIndex := range r.Configurations.Streams[streamsIndex].PrimaryKey {
\t\t\t\t\tprimaryKeyTmp := make([]string, 0, len(r.Configurations.Streams[streamsIndex].PrimaryKey[primaryKeyIndex]))
\t\t\t\t\tfor index := range r.Configurations.Streams[streamsIndex].PrimaryKey[primaryKeyIndex] {
\t\t\t\t\t\tprimaryKeyTmp = append(primaryKeyTmp, r.Configurations.Streams[streamsIndex].PrimaryKey[primaryKeyIndex][index].ValueString())
\t\t\t\t\t}
\t\t\t\t\tprimaryKey = append(primaryKey, primaryKeyTmp)
\t\t\t\t}
\t\t\t}"""

    cursor_count = content.count(old_cursor)
    pk_count = content.count(old_pk)

    # If neither legacy pattern is present, assume the file is already patched
    # or upstream code layout has changed in a way that removed these blocks.
    # This keeps the script idempotent.
    if cursor_count == 0 and pk_count == 0:
        print("  No legacy cursorField/primaryKey serialization patterns found; assuming already patched")
        return content

    # Validate we see exactly the expected number of occurrences for each block
    # (create + patch). Any deviation risks a partial patch and should fail fast.
    has_error = False
    expected_blocks = 2

    if cursor_count != expected_blocks:
        print(
            f"ERROR: expected to find {expected_blocks} cursorField serialization block(s) "
            f"(create + patch), but found {cursor_count}",
            file=sys.stderr,
        )
        has_error = True

    if pk_count != expected_blocks:
        print(
            f"ERROR: expected to find {expected_blocks} primaryKey serialization block(s) "
            f"(create + patch), but found {pk_count}",
            file=sys.stderr,
        )
        has_error = True

    if has_error:
        print(
            "  Aborting cursorField/primaryKey patch to avoid partially updated connection_resource_sdk.go",
            file=sys.stderr,
        )
        sys.exit(1)

    # At this point, we know we have the expected number of blocks; apply patches.
    content = content.replace(old_cursor, new_cursor)
    print(f"  Patched {cursor_count} cursorField serialization block(s)")

    content = content.replace(old_pk, new_pk)
    print(f"  Patched {pk_count} primaryKey serialization block(s)")

    return content


def main() -> None:
    # Patch 1: SetNestedAttribute -> ListNestedAttribute in connection_resource.go
    if CONNECTION_RESOURCE.exists():
        print(f"Patching {CONNECTION_RESOURCE}...")
        content = CONNECTION_RESOURCE.read_text()
        original = content

        content = patch_set_to_list_attribute(content)
        content = patch_unused_set_import(content)

        if content != original:
            CONNECTION_RESOURCE.write_text(content)
            print(f"  Patched {CONNECTION_RESOURCE}")
        else:
            print(f"  No changes needed for {CONNECTION_RESOURCE}")
    else:
        print(f"WARNING: {CONNECTION_RESOURCE} not found", file=sys.stderr)

    # Patch 2: Add nil guards for cursorField/primaryKey in connection_resource_sdk.go
    if CONNECTION_RESOURCE_SDK.exists():
        print(f"Patching {CONNECTION_RESOURCE_SDK}...")
        content = CONNECTION_RESOURCE_SDK.read_text()
        original = content

        content = patch_cursor_primary_key_nil_guards(content)

        if content != original:
            CONNECTION_RESOURCE_SDK.write_text(content)
            print(f"  Patched {CONNECTION_RESOURCE_SDK}")
        else:
            print(f"  No changes needed for {CONNECTION_RESOURCE_SDK}")
    else:
        print(f"WARNING: {CONNECTION_RESOURCE_SDK} not found", file=sys.stderr)


if __name__ == "__main__":
    main()
