#!/usr/bin/env python3
"""Validate that Speakeasy-generated connection resource code has the expected
fixes for stream drift (issue #374).

The overlay (overlays/terraform_speakeasy.yaml) applies two spec-level fixes:

  Layer 1 - removes `format: set` from StreamConfigurations.streams so that
            Speakeasy generates `ListNestedAttribute` instead of
            `SetNestedAttribute`.

  Layer 2 - adds `nullable: true` to cursorField and primaryKey so that
            Speakeasy generates nil-guarded (pointer-typed) serialisation,
            omitting these fields when the user hasn't set them.

This script validates that the generated Go code reflects both fixes.  It
runs as part of `poe post-generate` and will exit non-zero if the overlay
did not produce the expected output.
"""

from __future__ import annotations

import re
import sys
from pathlib import Path

PROVIDER_DIR = Path("internal/provider")
RESOURCE_FILE = PROVIDER_DIR / "connection_resource.go"
SDK_FILE = PROVIDER_DIR / "connection_resource_sdk.go"

# ---------------------------------------------------------------------------
# Helpers
# ---------------------------------------------------------------------------

def _read(path: Path) -> str:
    if not path.exists():
        print(f"WARNING: {path} not found — skipping validation (file may not be generated yet)")
        return ""
    return path.read_text()


def _check(condition: bool, pass_msg: str, fail_msg: str) -> bool:
    if condition:
        print(f"  PASS: {pass_msg}")
    else:
        print(f"  FAIL: {fail_msg}")
    return condition


# ---------------------------------------------------------------------------
# Layer 1 — streams must be ListNestedAttribute, not SetNestedAttribute
# ---------------------------------------------------------------------------

def validate_layer1(src: str) -> bool:
    """Verify streams uses ListNestedAttribute."""
    if not src:
        return True  # file not found, skip

    print("Layer 1: streams attribute type")

    # We look for the schema declaration for "streams" and check its type.
    # Pattern: "streams": schema.SetNestedAttribute  OR  schema.ListNestedAttribute
    set_match = re.search(r'"streams":\s*schema\.SetNestedAttribute\b', src)
    list_match = re.search(r'"streams":\s*schema\.ListNestedAttribute\b', src)

    ok = True
    ok &= _check(
        not set_match,
        '"streams" does not use SetNestedAttribute',
        '"streams" still uses SetNestedAttribute — overlay did not remove format:set',
    )
    ok &= _check(
        bool(list_match),
        '"streams" uses ListNestedAttribute',
        '"streams" does not use ListNestedAttribute — expected overlay to produce this',
    )
    return ok


# ---------------------------------------------------------------------------
# Layer 2 — cursorField / primaryKey must have nil guards
# ---------------------------------------------------------------------------

def validate_layer2(src: str) -> bool:
    """Verify cursorField and primaryKey have nil/null guards in serialisation."""
    if not src:
        return True  # file not found, skip

    print("Layer 2: cursorField / primaryKey nil guards")

    ok = True

    # After making these fields nullable, Speakeasy should generate nil checks
    # before serializing cursorField and primaryKey.  The exact pattern varies
    # by Speakeasy version, but we look for evidence of conditional handling.
    #
    # BEFORE (unconditional — bad):
    #   cursorField := make([]string, 0, len(...CursorField))
    #   for cursorFieldIndex := range ... { ... }
    #   ...
    #   CursorField: cursorField,
    #
    # AFTER (nil-guarded — good), e.g.:
    #   var cursorField *[]string  (pointer type)
    #   if ... != nil { ... }
    #   CursorField: cursorField,
    #
    # We check for ABSENCE of unconditional `make([]string, 0, len(...CursorField))`
    # and PRESENCE of some nil/null/pointer guard pattern.

    # --- cursorField ---
    unconditional_cursor = re.search(
        r'cursorField\s*:=\s*make\(\[\]string,\s*0,\s*len\(.*\.CursorField\)\)',
        src,
    )
    guarded_cursor = re.search(
        r'(CursorField\b.*\bnil\b|if\b.*CursorField\b.*!=\s*nil|\*\[\]string)',
        src,
    )
    ok &= _check(
        not unconditional_cursor,
        'cursorField is not unconditionally serialized',
        'cursorField is still unconditionally serialized (make([]string, 0, ...)) — overlay nullable fix may not have taken effect',
    )
    ok &= _check(
        bool(guarded_cursor),
        'cursorField has nil/pointer guard',
        'cursorField does not appear to have nil guard — check generated code',
    )

    # --- primaryKey ---
    unconditional_pk = re.search(
        r'primaryKey\s*:=\s*make\(\[\]\[\]string,\s*0,\s*len\(.*\.PrimaryKey\)\)',
        src,
    )
    guarded_pk = re.search(
        r'(PrimaryKey\b.*\bnil\b|if\b.*PrimaryKey\b.*!=\s*nil|\*\[\]\[\]string)',
        src,
    )
    ok &= _check(
        not unconditional_pk,
        'primaryKey is not unconditionally serialized',
        'primaryKey is still unconditionally serialized (make([][]string, 0, ...)) — overlay nullable fix may not have taken effect',
    )
    ok &= _check(
        bool(guarded_pk),
        'primaryKey has nil/pointer guard',
        'primaryKey does not appear to have nil guard — check generated code',
    )

    return ok


# ---------------------------------------------------------------------------
# Main
# ---------------------------------------------------------------------------

def main() -> int:
    print(f"Validating connection stream drift fixes (issue #374)...")
    print(f"  Resource file: {RESOURCE_FILE}")
    print(f"  SDK file:      {SDK_FILE}")
    print()

    resource_src = _read(RESOURCE_FILE)
    sdk_src = _read(SDK_FILE)

    all_ok = True
    all_ok &= validate_layer1(resource_src)
    print()
    all_ok &= validate_layer2(sdk_src)
    print()

    if all_ok:
        print("All connection stream drift validations passed.")
        return 0
    else:
        print("ERROR: Some validations failed — see above.")
        print("The overlay in overlays/terraform_speakeasy.yaml may need adjustment,")
        print("or the generated code may need a post-generation patch.")
        return 1


if __name__ == "__main__":
    sys.exit(main())
