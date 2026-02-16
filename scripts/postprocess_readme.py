#!/usr/bin/env python3
"""Post-process the Speakeasy-generated README.md to wrap resource lists in collapsible sections.

This script runs after Speakeasy generation and wraps the long lists of Resources
and Data Sources in HTML <details> tags so they render as collapsible sections on GitHub.

Usage:
    python scripts/postprocess_readme.py [--readme README.md]
"""

import argparse
import sys
from pathlib import Path


def wrap_section_in_details(lines: list[str], heading_prefix: str, summary_text: str) -> list[str]:
    """Find a ### heading and wrap its bullet list in a <details> block."""
    result = []
    i = 0
    while i < len(lines):
        line = lines[i]
        if line.rstrip() == heading_prefix:
            result.append(line)
            i += 1
            if i < len(lines) and lines[i].strip() == "":
                result.append(lines[i])
                i += 1
            count = 0
            bullet_start = i
            while i < len(lines) and lines[i].startswith("* "):
                count += 1
                i += 1
            if count > 20:
                result.append(f"<details>\n")
                result.append(f"<summary>{summary_text} ({count})</summary>\n")
                result.append("\n")
                for j in range(bullet_start, bullet_start + count):
                    result.append(lines[j])
                result.append("\n")
                result.append("</details>\n")
            else:
                for j in range(bullet_start, bullet_start + count):
                    result.append(lines[j])
        else:
            result.append(line)
            i += 1
    return result


def postprocess_readme(readme_path: Path) -> bool:
    """Add collapsible sections to the README's resource/data source lists.

    Returns True if the file was modified.
    """
    content = readme_path.read_text()
    lines = content.splitlines(keepends=True)

    lines = wrap_section_in_details(lines, "### Resources", "Click to expand Resources list")
    lines = wrap_section_in_details(lines, "### Data Sources", "Click to expand Data Sources list")

    new_content = "".join(lines)
    if new_content != content:
        readme_path.write_text(new_content)
        return True
    return False


def main() -> None:
    parser = argparse.ArgumentParser(description="Post-process README.md with collapsible sections")
    parser.add_argument(
        "--readme",
        type=Path,
        default=Path("README.md"),
        help="Path to README.md (default: README.md)",
    )
    args = parser.parse_args()

    if not args.readme.exists():
        print(f"Error: {args.readme} not found", file=sys.stderr)
        sys.exit(1)

    if postprocess_readme(args.readme):
        print(f"Updated {args.readme} with collapsible sections")
    else:
        print(f"No changes needed for {args.readme}")


if __name__ == "__main__":
    main()
