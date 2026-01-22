#!/usr/bin/env -S uv run --script
# /// script
# requires-python = ">=3.10"
# dependencies = ["pyyaml"]
# ///
"""
Generate the Terraform-specific OpenAPI spec (api_terraform.yaml) with connector-specific schemas.

This script fetches connector definitions from the Airbyte connector registry and generates
an OpenAPI spec that includes typed schemas for each source and destination connector.
The generated spec is then used by Speakeasy to generate the Terraform provider code.

This is a Python port of the Kotlin logic originally in:
- https://github.com/airbytehq/airbyte-platform-internal/blob/master/cloud/public-api-spec-generation/src/main/kotlin/io/airbyte/api/publicapi/gradle/tasks/ApiDocumentationGenerator.kt
- https://github.com/airbytehq/airbyte-platform-internal/blob/master/cloud/public-api-spec-generation/src/main/kotlin/io/airbyte/api/publicapi/gradle/tasks/TemplatesForTerraformOpenapiSpec.kt
"""

from __future__ import annotations

import argparse
import json
from pathlib import Path
from typing import Any
from urllib.request import urlopen

import yaml

# Registry URLs
OSS_REGISTRY_URL = "https://connectors.airbyte.com/files/registries/v0/oss_registry.json"
CLOUD_REGISTRY_URL = "https://connectors.airbyte.com/files/registries/v0/cloud_registry.json"

# Base API spec URL (the terraform-specific spec that Speakeasy already works with)
# Using api_terraform.yaml instead of api.yaml because api.yaml has newer endpoints
# with broken schema references that haven't been fixed upstream yet.
BASE_API_SPEC_URL = "https://raw.githubusercontent.com/airbytehq/airbyte-platform/refs/heads/main/airbyte-api/server-api/src/main/openapi/api_terraform.yaml"


def lower_hyphen_to_upper_camel(name: str) -> str:
    """Convert lower-hyphen-case to UpperCamelCase."""
    return "".join(word.capitalize() for word in name.split("-"))


def fetch_json(url: str) -> dict[str, Any]:
    """Fetch JSON from a URL."""
    with urlopen(url) as response:
        return json.loads(response.read().decode("utf-8"))


def fetch_text(url: str) -> str:
    """Fetch text content from a URL."""
    with urlopen(url) as response:
        return response.read().decode("utf-8")


def get_connector_name(docker_repository: str, prefix: str) -> str:
    """Extract connector name from docker repository."""
    # e.g., "airbyte/source-github" -> "github"
    image_name = docker_repository.split("/")[-1]
    name = image_name.replace(prefix, "").replace("-strict-encrypt", "")
    return name


def transform_connector_spec(
    name: str,
    spec: dict[str, Any],
    actor_type: str,
    is_update: bool,
) -> str:
    """Transform a connector spec into an OpenAPI schema component."""
    prefix = "source" if actor_type == "source" else "destination"
    schema_name = f"{prefix}-{name}"
    if is_update:
        schema_name += "-update"

    # Deep copy and transform the spec
    transformed = transform_spec_properties(spec, is_update)

    # Add the sourceType or destinationType property
    type_field = "sourceType" if actor_type == "source" else "destinationType"
    if "properties" not in transformed:
        transformed["properties"] = {}

    transformed["properties"][type_field] = {
        "type": "string",
        "const": name,
        "enum": [name],
        "default": name,
        "order": 0,
    }

    # Ensure required includes the type field
    if "required" not in transformed:
        transformed["required"] = []
    if type_field not in transformed["required"]:
        transformed["required"].insert(0, type_field)

    return schema_name, transformed


def transform_spec_properties(spec: dict[str, Any], is_update: bool) -> dict[str, Any]:
    """Transform spec properties, handling nested objects and removing constraints for updates."""
    result = {}

    for key, value in spec.items():
        if key == "required" and is_update:
            # For update schemas, make all fields optional
            continue
        elif key == "properties":
            result[key] = {}
            for prop_name, prop_value in value.items():
                if isinstance(prop_value, dict):
                    result[key][prop_name] = transform_spec_properties(prop_value, is_update)
                else:
                    result[key][prop_name] = prop_value
        elif key == "oneOf" or key == "anyOf" or key == "allOf":
            result[key] = [
                transform_spec_properties(item, is_update) if isinstance(item, dict) else item
                for item in value
            ]
        elif isinstance(value, dict):
            result[key] = transform_spec_properties(value, is_update)
        else:
            result[key] = value

    return result


def generate_source_template(upper_camel_name: str) -> str:
    """Generate the OpenAPI path template for a source connector."""
    return f"""  /sources#{upper_camel_name}:
    post:
      requestBody:
        content:
          application/json:
            schema:
              $ref: "#/components/schemas/Source{upper_camel_name}CreateRequest"
      tags:
        - "Sources"
      responses:
        "200":
          content:
            application/json:
              schema:
                $ref: "#/components/schemas/SourceResponse"
          description: "Successful operation"
        "400":
          description: "Invalid data"
        "403":
          description: "Not allowed"
      operationId: "createSource{upper_camel_name}"
      summary: "Create a source"
      description:
        "Creates a source given a name, workspace id, and a json blob containing\\
        \\ the configuration for the source."
      x-use-speakeasy-middleware: true
      x-speakeasy-entity-operation: Source_{upper_camel_name}#create
  /sources/{{sourceId}}#{upper_camel_name}:
    get:
      tags:
        - "Sources"
      responses:
        "200":
          content:
            application/json:
              schema:
                $ref: "#/components/schemas/SourceResponse"
          description: "Get a Source by the id in the path."
        "403":
          description: "Not allowed"
        "404":
          description: "Not found"
      operationId: "getSource{upper_camel_name}"
      summary: "Get Source details"
      x-use-speakeasy-middleware: true
      x-speakeasy-entity-operation: Source_{upper_camel_name}#read
    put:
      tags:
        - "Sources"
      requestBody:
        content:
          application/json:
            schema:
              $ref: "#/components/schemas/Source{upper_camel_name}PutRequest"
      responses:
        "204":
          description: "The resource was updated successfully"
        "403":
          description: "Not allowed"
        "404":
          description: "Not found"
      operationId: "putSource{upper_camel_name}"
      summary: "Update a Source fully"
      x-use-speakeasy-middleware: true
      x-speakeasy-entity-operation: Source_{upper_camel_name}#update
    delete:
      tags:
        - "Sources"
      responses:
        "204":
          description: "The resource was deleted successfully"
        "403":
          description: "Not allowed"
        "404":
          description: "Not found"
      operationId: "deleteSource{upper_camel_name}"
      summary: "Delete a Source"
      x-use-speakeasy-middleware: true
      x-speakeasy-entity-operation: Source_{upper_camel_name}#delete
    parameters:
      - name: "sourceId"
        schema:
          format: "UUID"
          type: "string"
        in: "path"
        required: true
"""


def generate_destination_template(upper_camel_name: str) -> str:
    """Generate the OpenAPI path template for a destination connector."""
    return f"""  /destinations#{upper_camel_name}:
    post:
      requestBody:
        content:
          application/json:
            schema:
              $ref: "#/components/schemas/Destination{upper_camel_name}CreateRequest"
      tags:
        - "Destinations"
      responses:
        "200":
          content:
            application/json:
              schema:
                $ref: "#/components/schemas/DestinationResponse"
          description: "Successful operation"
        "400":
          description: "Invalid data"
        "403":
          description: "Not allowed"
      operationId: "createDestination{upper_camel_name}"
      summary: "Create a destination"
      description:
        "Creates a destination given a name, workspace id, and a json blob containing\\
        \\ the configuration for the destination."
      x-use-speakeasy-middleware: true
      x-speakeasy-entity-operation: Destination_{upper_camel_name}#create
  /destinations/{{destinationId}}#{upper_camel_name}:
    get:
      tags:
        - "Destinations"
      responses:
        "200":
          content:
            application/json:
              schema:
                $ref: "#/components/schemas/DestinationResponse"
          description: "Get a Destination by the id in the path."
        "403":
          description: "Not allowed"
        "404":
          description: "Not found"
      operationId: "getDestination{upper_camel_name}"
      summary: "Get Destination details"
      x-use-speakeasy-middleware: true
      x-speakeasy-entity-operation: Destination_{upper_camel_name}#read
    put:
      tags:
        - "Destinations"
      requestBody:
        content:
          application/json:
            schema:
              $ref: "#/components/schemas/Destination{upper_camel_name}PutRequest"
      responses:
        "204":
          description: "The resource was updated successfully"
        "403":
          description: "Not allowed"
        "404":
          description: "Not found"
      operationId: "putDestination{upper_camel_name}"
      summary: "Update a Destination fully"
      x-use-speakeasy-middleware: true
      x-speakeasy-entity-operation: Destination_{upper_camel_name}#update
    delete:
      tags:
        - "Destinations"
      responses:
        "204":
          description: "The resource was deleted successfully"
        "403":
          description: "Not allowed"
        "404":
          description: "Not found"
      operationId: "deleteDestination{upper_camel_name}"
      summary: "Delete a Destination"
      x-use-speakeasy-middleware: true
      x-speakeasy-entity-operation: Destination_{upper_camel_name}#delete
    parameters:
      - name: "destinationId"
        schema:
          format: "UUID"
          type: "string"
        in: "path"
        required: true
"""


def generate_source_create_request_template(upper_camel_name: str, hyphen_name: str) -> str:
    """Generate the OpenAPI schema for a source create request."""
    return f"""
    Source{upper_camel_name}CreateRequest:
      required:
        - name
        - workspaceId
        - configuration
      type: object
      properties:
        name:
          description: Name of the source e.g. dev-mysql-instance.
          type: string
        definitionId:
          description: The UUID of the connector definition. One of configuration.sourceType or definitionId must be provided.
          format: uuid
          type: string
        workspaceId:
          format: uuid
          type: string
        configuration:
          $ref: "#/components/schemas/source-{hyphen_name}"
        secretId:
          description:
            "Optional secretID obtained through the public API OAuth redirect\\
            \\ flow."
          type: "string"
      x-speakeasy-entity: Source_{upper_camel_name}
      x-speakeasy-param-suppress-computed-diff: true
"""


def generate_destination_create_request_template(upper_camel_name: str, hyphen_name: str) -> str:
    """Generate the OpenAPI schema for a destination create request."""
    return f"""
    Destination{upper_camel_name}CreateRequest:
      required:
        - name
        - workspaceId
        - configuration
      type: object
      properties:
        name:
          description: Name of the destination e.g. dev-mysql-instance.
          type: string
        definitionId:
          description: The UUID of the connector definition. One of configuration.destinationType or definitionId must be provided.
          format: uuid
          type: string
        workspaceId:
          format: uuid
          type: string
        configuration:
          $ref: "#/components/schemas/destination-{hyphen_name}"
      x-speakeasy-entity: Destination_{upper_camel_name}
      x-speakeasy-param-suppress-computed-diff: true
"""


def generate_source_update_request_template(upper_camel_name: str, hyphen_name: str) -> str:
    """Generate the OpenAPI schema for a source update request."""
    return f"""
    Source{upper_camel_name}PutRequest:
      required:
        - "name"
        - "workspaceId"
        - "configuration"
      type: "object"
      properties:
        name:
          type: "string"
        workspaceId:
          format: "uuid"
          type: "string"
        configuration:
          $ref: "#/components/schemas/source-{hyphen_name}-update"
      x-speakeasy-entity: Source_{upper_camel_name}
      x-speakeasy-param-suppress-computed-diff: true
"""


def generate_destination_update_request_template(upper_camel_name: str, hyphen_name: str) -> str:
    """Generate the OpenAPI schema for a destination update request."""
    return f"""
    Destination{upper_camel_name}PutRequest:
      required:
        - "name"
        - "workspaceId"
        - "configuration"
      type: "object"
      properties:
        name:
          type: "string"
        workspaceId:
          format: "uuid"
          type: "string"
        configuration:
          $ref: "#/components/schemas/destination-{hyphen_name}-update"
      x-speakeasy-entity: Destination_{upper_camel_name}
      x-speakeasy-param-suppress-computed-diff: true
"""


def generate_custom_connector_stubs() -> str:
    """Generate stubs for custom connectors."""
    return """
    source-custom:
      description: The values required to configure the source.
      example: { user: "charles" }
    destination-custom:
      description: The values required to configure the destination.
      example: { user: "charles" }
    source-custom-update:
      title: "Custom Spec"
    destination-custom-update:
      title: "Custom Spec"
"""


def generate_security_schemes() -> str:
    """Generate security schemes for the API."""
    return """  securitySchemes:
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
          tokenUrl: /applications/token
          scopes: {}
security:
  - bearerAuth: []
  - basicAuth: []
  - clientCredentials: []
"""


def spec_to_yaml(spec: dict[str, Any], indent: int = 0) -> str:
    """Convert a spec dict to YAML string with proper indentation."""
    # Use PyYAML for proper YAML formatting
    yaml_str = yaml.dump(spec, default_flow_style=False, allow_unicode=True, sort_keys=False)
    # Add indentation
    if indent > 0:
        lines = yaml_str.split("\n")
        indented_lines = [" " * indent + line if line.strip() else line for line in lines]
        yaml_str = "\n".join(indented_lines)
    return yaml_str


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
    parser.add_argument(
        "--cloud-only",
        action="store_true",
        help="Only include connectors available in Airbyte Cloud",
    )
    args = parser.parse_args()

    print("Fetching connector registries...")
    oss_registry = fetch_json(OSS_REGISTRY_URL)
    cloud_registry = fetch_json(CLOUD_REGISTRY_URL)

    # Build sets of cloud connector IDs for filtering
    cloud_source_ids = {s["sourceDefinitionId"] for s in cloud_registry.get("sources", [])}
    cloud_dest_ids = {d["destinationDefinitionId"] for d in cloud_registry.get("destinations", [])}

    print("Fetching base API spec...")
    base_spec = fetch_text(args.base_spec)

    # Filter sources and destinations
    sources = []
    for source in oss_registry.get("sources", []):
        source_id = source.get("sourceDefinitionId")
        if args.cloud_only and source_id not in cloud_source_ids:
            continue
        # Skip e2e-test-cloud connector
        docker_repo = source.get("dockerRepository", "")
        if "e2e-test-cloud" in docker_repo:
            continue
        sources.append(source)

    destinations = []
    for dest in oss_registry.get("destinations", []):
        dest_id = dest.get("destinationDefinitionId")
        if args.cloud_only and dest_id not in cloud_dest_ids:
            continue
        destinations.append(dest)

    print(f"Processing {len(sources)} sources and {len(destinations)} destinations...")

    # Collect connector names and specs
    source_names = []
    source_specs = []
    for source in sources:
        docker_repo = source.get("dockerRepository", "")
        name = get_connector_name(docker_repo, "source-")
        spec = source.get("spec", {}).get("connectionSpecification", {})
        if not spec:
            print(f"  Skipping source {name} - no spec found")
            continue
        source_names.append(name)
        # Generate both create and update schemas
        schema_name, transformed = transform_connector_spec(name, spec, "source", False)
        source_specs.append((schema_name, transformed))
        schema_name_update, transformed_update = transform_connector_spec(name, spec, "source", True)
        source_specs.append((schema_name_update, transformed_update))

    destination_names = []
    destination_specs = []
    for dest in destinations:
        docker_repo = dest.get("dockerRepository", "")
        name = get_connector_name(docker_repo, "destination-")
        spec = dest.get("spec", {}).get("connectionSpecification", {})
        if not spec:
            print(f"  Skipping destination {name} - no spec found")
            continue
        destination_names.append(name)
        # Generate both create and update schemas
        schema_name, transformed = transform_connector_spec(name, spec, "destination", False)
        destination_specs.append((schema_name, transformed))
        schema_name_update, transformed_update = transform_connector_spec(name, spec, "destination", True)
        destination_specs.append((schema_name_update, transformed_update))

    # Sort names for consistent output
    source_names.sort()
    destination_names.sort()

    # Add "custom" connector
    source_names_for_terraform = source_names + ["custom"]
    destination_names_for_terraform = destination_names + ["custom"]

    print("Generating OpenAPI spec...")

    # Split the base spec to insert:
    # 1. Connector-specific paths before "components:"
    # 2. Connector-specific schemas before "securitySchemes:" (inside components/schemas)
    base_lines = base_spec.split("\n")
    components_line_idx = None
    security_schemes_line_idx = None

    for i, line in enumerate(base_lines):
        if line.startswith("components:"):
            components_line_idx = i
        # Find the securitySchemes section (indented with 2 spaces, inside components)
        if line == "  securitySchemes:":
            security_schemes_line_idx = i
            break

    if components_line_idx is None:
        msg = "Could not find 'components:' section in base spec"
        raise ValueError(msg)
    if security_schemes_line_idx is None:
        msg = "Could not find 'securitySchemes:' section in base spec"
        raise ValueError(msg)

    # Build the output:
    # 1. Everything before "components:" (includes paths section)
    # 2. Connector-specific paths (still under paths section)
    # 3. "components:" up to "securitySchemes:" (includes base schemas)
    # 4. Connector-specific schemas (inside components/schemas, before securitySchemes)
    # 5. "securitySchemes:" and rest of the spec

    output_parts = []

    # Part 1: Everything before components (includes all base paths)
    output_parts.append("\n".join(base_lines[:components_line_idx]))

    # Part 2: Add connector-specific paths (these go under the paths section)
    output_parts.append("\n# Connector-specific paths")
    for name in source_names_for_terraform:
        upper_camel = lower_hyphen_to_upper_camel(name)
        output_parts.append(generate_source_template(upper_camel))

    for name in destination_names_for_terraform:
        upper_camel = lower_hyphen_to_upper_camel(name)
        output_parts.append(generate_destination_template(upper_camel))

    # Part 3: Add components section and base schemas (up to securitySchemes)
    output_parts.append("\n".join(base_lines[components_line_idx:security_schemes_line_idx]))

    # Part 4: Add connector-specific schemas (inside components/schemas, before securitySchemes)
    output_parts.append("# Connector-specific schemas")

    # Add source create/update request schemas
    for name in source_names_for_terraform:
        upper_camel = lower_hyphen_to_upper_camel(name)
        output_parts.append(generate_source_create_request_template(upper_camel, name))
        output_parts.append(generate_source_update_request_template(upper_camel, name))

    # Add destination create/update request schemas
    for name in destination_names_for_terraform:
        upper_camel = lower_hyphen_to_upper_camel(name)
        output_parts.append(generate_destination_create_request_template(upper_camel, name))
        output_parts.append(generate_destination_update_request_template(upper_camel, name))

    # Add connector configuration schemas
    for schema_name, spec in source_specs:
        output_parts.append(f"\n    {schema_name}:")
        yaml_content = yaml.dump(spec, default_flow_style=False, allow_unicode=True, sort_keys=False)
        for line in yaml_content.split("\n"):
            if line.strip():
                output_parts.append(f"      {line}")

    for schema_name, spec in destination_specs:
        output_parts.append(f"\n    {schema_name}:")
        yaml_content = yaml.dump(spec, default_flow_style=False, allow_unicode=True, sort_keys=False)
        for line in yaml_content.split("\n"):
            if line.strip():
                output_parts.append(f"      {line}")

    # Add custom connector stubs
    output_parts.append(generate_custom_connector_stubs())

    # Part 5: Add securitySchemes section and rest of the spec
    output_parts.append("\n".join(base_lines[security_schemes_line_idx:]))

    # Write output
    output_content = "\n".join(output_parts)
    args.output.write_text(output_content)
    print(f"Generated spec written to {args.output}")
    print(f"Total lines: {len(output_content.splitlines())}")


if __name__ == "__main__":
    main()
