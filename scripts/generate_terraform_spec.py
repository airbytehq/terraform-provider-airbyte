#!/usr/bin/env -S uv run --script
# /// script
# requires-python = ">=3.10"
# dependencies = []
# ///
"""
Generate the Terraform-specific OpenAPI spec (api_terraform.yaml).

This script fetches the upstream Airbyte API spec and transforms it into a
Terraform-specific OpenAPI spec by injecting missing schema/response stubs
and security schemes required by Speakeasy code generation.

As of v1.1, typed connector-specific resources (e.g. airbyte_source_postgres)
have been removed. All connectors are managed via the generic airbyte_source /
airbyte_destination resources. The script no longer fetches connector registries
or generates connector-specific schemas.
"""

from __future__ import annotations

import argparse
from pathlib import Path
from urllib.request import urlopen

# =============================================================================
# Configuration Constants
# =============================================================================

# Base API spec URL - the actual OpenAPI spec maintained by the platform team.
# This is the source of truth for the Airbyte API.
BASE_API_SPEC_URL = "https://raw.githubusercontent.com/airbytehq/airbyte-platform/refs/heads/main/airbyte-api/server-api/src/main/openapi/api.yaml"

# =============================================================================
# Stub Schemas and Responses
# =============================================================================

# Stub schemas for missing references in api.yaml
# These schemas are referenced in api.yaml but not defined there (upstream bug)
# We add stubs to make the spec valid for Speakeasy processing
MISSING_SCHEMA_STUBS = """
    DataplaneCreateResponseBody:
      description: Response body for dataplane creation
      type: object
      properties:
        dataplaneId:
          type: string
          format: uuid
          description: The ID of the created dataplane

    ForbiddenResponse:
      description: Forbidden response
      type: object
      properties:
        message:
          type: string
          description: Error message
"""

# Stub response for ForbiddenResponse (referenced in api.yaml but not defined)
# This gets injected into the components/responses section
FORBIDDEN_RESPONSE_STUB = """    ForbiddenResponse:
      description: Forbidden - insufficient permissions
      content:
        application/json:
          schema:
            $ref: '#/components/schemas/ForbiddenResponse'"""

# Note: Speakeasy circular reference handling has been moved to the overlay file
# at overlays/terraform_speakeasy.yaml. The overlay adds x-speakeasy-type-override: any
# to schemas marked with x-airbyte-circular-ref: true.
# See: https://github.com/airbytehq/terraform-provider-airbyte/issues/250

# Security schemes for the API
# NOTE: The two leading spaces before `securitySchemes:` are intentional.
# This snippet is inserted into an existing YAML structure where this
# indentation is required for correct formatting of the generated spec.
SECURITY_SCHEMES = """  securitySchemes:
    bearerAuth:
      type: http
      scheme: bearer
      bearerFormat: JWT
    basicAuth:
      type: http
      scheme: basic
    clientCredentials:
      type: oauth2
      flows:
        clientCredentials:
          tokenUrl: /v1/applications/token
          scopes: {}
security:
  - bearerAuth: []
  - basicAuth: []
  - clientCredentials: []
"""


def fetch_text(url: str) -> str:
    """Fetch text content from a URL."""
    with urlopen(url) as response:
        return response.read().decode("utf-8")


# =============================================================================
# Main Entry Point
# =============================================================================


def main() -> None:
    parser = argparse.ArgumentParser(description="Generate Terraform-specific OpenAPI spec")
    parser.add_argument(
        "--output",
        "-o",
        type=Path,
        default=Path("api_terraform.yaml"),
        help="Output file path for the generated spec",
    )
    parser.add_argument(
        "--base-spec",
        type=str,
        default=BASE_API_SPEC_URL,
        help="URL or path to the base API spec",
    )
    args = parser.parse_args()

    print("Fetching base API spec...")
    base_spec = fetch_text(args.base_spec)

    print("Generating OpenAPI spec...")

    # Parse the base spec to find insertion points for stubs and security schemes.
    base_lines = base_spec.split("\n")
    components_line_idx = None
    responses_line_idx = None
    schemas_line_idx = None
    security_schemes_line_idx = None

    for i, line in enumerate(base_lines):
        if line.startswith("components:"):
            components_line_idx = i
        if line == "  responses:":
            responses_line_idx = i
        if line == "  schemas:":
            schemas_line_idx = i
        if line == "  securitySchemes:":
            security_schemes_line_idx = i
            break

    if components_line_idx is None:
        msg = "Could not find 'components:' section in base spec"
        raise ValueError(msg)

    has_security_schemes = security_schemes_line_idx is not None

    # Build the output:
    # 1. Everything before "components:" (includes all base paths)
    # 2. "components:" section with injected missing response stubs
    # 3. Missing schema stubs (referenced in api.yaml but not defined there)
    # 4. Security schemes (added if not present, or kept if present)
    output_parts: list[str] = []

    # Part 1: Everything before components (includes all base paths)
    output_parts.append("\n".join(base_lines[:components_line_idx]))

    # Part 2: Add components section with injected missing responses
    if responses_line_idx and schemas_line_idx:
        # Include components up to and including responses section header
        output_parts.append("\n".join(base_lines[components_line_idx:responses_line_idx + 1]))
        # Existing responses (between responses: and schemas:)
        existing_responses = base_lines[responses_line_idx + 1:schemas_line_idx]
        output_parts.append("\n".join(existing_responses))
        # Add missing ForbiddenResponse stub
        output_parts.append(FORBIDDEN_RESPONSE_STUB)
        # Add schemas section up to securitySchemes (or end)
        if has_security_schemes:
            output_parts.append("\n".join(base_lines[schemas_line_idx:security_schemes_line_idx]))
        else:
            output_parts.append("\n".join(base_lines[schemas_line_idx:]))
    elif has_security_schemes:
        output_parts.append("\n".join(base_lines[components_line_idx:security_schemes_line_idx]))
    else:
        output_parts.append("\n".join(base_lines[components_line_idx:]))

    # Part 3: Add missing schema stubs (referenced in api.yaml but not defined there)
    output_parts.append(MISSING_SCHEMA_STUBS)

    # Part 4: Add securitySchemes section
    if has_security_schemes:
        output_parts.append("\n".join(base_lines[security_schemes_line_idx:]))
    else:
        output_parts.append(SECURITY_SCHEMES)

    # Write output
    output_content = "\n".join(output_parts)
    args.output.write_text(output_content)
    print(f"Generated spec written to {args.output}")
    print(f"Total lines: {len(output_content.splitlines())}")


if __name__ == "__main__":
    main()
