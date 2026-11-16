#!/usr/bin/env -S uv run --script --python 3.12
# /// script
# requires-python = ">=3.10,<3.14"
# dependencies = []
# ///
"""Preserve connection tag order across API refreshes."""

from pathlib import Path

TARGET = Path("internal/provider/connection_resource.go")
REFRESH = "\tresp.Diagnostics.Append(data.RefreshFromSharedConnectionResponse(ctx, res.ConnectionResponse)...)"
PATCHED = (
    "\tpriorTags := data.Tags\n"
    + REFRESH
    + "\n\tdata.Tags = preserveConnectionTagOrder(data.Tags, priorTags)"
)


def main() -> None:
    content = TARGET.read_text()
    if content.count(PATCHED) == 3:
        print(f"{TARGET.name}: tag order already preserved, skipping")
        return
    if content.count(REFRESH) != 3 or "priorTags :=" in content:
        raise RuntimeError("Expected three unpatched connection refresh calls")
    TARGET.write_text(content.replace(REFRESH, PATCHED))
    print(f"{TARGET.name}: preserve tag order in Create, Read and Update")


if __name__ == "__main__":
    main()
