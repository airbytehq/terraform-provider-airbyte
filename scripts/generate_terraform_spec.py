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
import copy
import json
from pathlib import Path
from typing import Any
from urllib.request import urlopen

import yaml

# =============================================================================
# Configuration Constants
# =============================================================================

OSS_REGISTRY_URL = "https://connectors.airbyte.com/files/registries/v0/oss_registry.json"
CLOUD_REGISTRY_URL = "https://connectors.airbyte.com/files/registries/v0/cloud_registry.json"

# Base API spec URL - the actual OpenAPI spec maintained by the platform team.
# This is the source of truth for the Airbyte API. The terraform provider adds
# connector-specific paths and schemas on top of this base spec.
BASE_API_SPEC_URL = "https://raw.githubusercontent.com/airbytehq/airbyte-platform/refs/heads/main/airbyte-api/server-api/src/main/openapi/api.yaml"

# =============================================================================
# OpenAPI Path Templates
# =============================================================================

# Template for source connector paths (POST create, GET read, PUT update, DELETE)
# Placeholders: {upper_camel_name}
SOURCE_PATH_TEMPLATE = """\
  /sources#{upper_camel_name}:
    post:
      requestBody:
        required: true
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
        required: true
        content:
          application/json:
            schema:
              $ref: "#/components/schemas/Source{upper_camel_name}PutRequest"
      responses:
        "200":
          content:
            application/json:
              schema:
                $ref: "#/components/schemas/SourceResponse"
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

# Template for destination connector paths (POST create, GET read, PUT update, DELETE)
# Placeholders: {upper_camel_name}
DESTINATION_PATH_TEMPLATE = """\
  /destinations#{upper_camel_name}:
    post:
      requestBody:
        required: true
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
        required: true
        content:
          application/json:
            schema:
              $ref: "#/components/schemas/Destination{upper_camel_name}PutRequest"
      responses:
        "200":
          content:
            application/json:
              schema:
                $ref: "#/components/schemas/DestinationResponse"
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

# =============================================================================
# OpenAPI Schema Templates
# =============================================================================

# Template for source create request schema
# Placeholders: {upper_camel_name}, {hyphen_name}
SOURCE_CREATE_REQUEST_TEMPLATE = """
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
          default: "{definition_id}"
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

# Template for destination create request schema
# Placeholders: {upper_camel_name}, {hyphen_name}
DESTINATION_CREATE_REQUEST_TEMPLATE = """
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
          default: "{definition_id}"
        workspaceId:
          format: uuid
          type: string
        configuration:
          $ref: "#/components/schemas/destination-{hyphen_name}"
      x-speakeasy-entity: Destination_{upper_camel_name}
      x-speakeasy-param-suppress-computed-diff: true
"""

# Template for source update (PUT) request schema
# Placeholders: {upper_camel_name}, {hyphen_name}
SOURCE_UPDATE_REQUEST_TEMPLATE = """
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

# Template for destination update (PUT) request schema
# Placeholders: {upper_camel_name}, {hyphen_name}
DESTINATION_UPDATE_REQUEST_TEMPLATE = """
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

# Note: Custom connector stubs were removed in the 1.0 refactor (PR #232)
# The constant below is commented out but kept for reference in case custom
# connectors are re-added in the future.
# See: https://github.com/airbytehq/terraform-provider-airbyte/issues/253
# CUSTOM_CONNECTOR_STUBS = """
#     source-custom:
#       description: The values required to configure the source.
#       x-speakeasy-type-override: any
#       example: { user: "charles" }
#     destination-custom:
#       description: The values required to configure the destination.
#       x-speakeasy-type-override: any
#       example: { user: "charles" }
#     source-custom-update:
#       title: "Custom Spec"
#       x-speakeasy-type-override: any
#     destination-custom-update:
#       title: "Custom Spec"
#       x-speakeasy-type-override: any
# """

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

# =============================================================================
# Typed Resource Allowlist (Deprecated)
# =============================================================================
# Typed connector-specific resources (e.g., airbyte_source_postgres) are
# officially deprecated as of 1.0. They are retained in 1.0 for backward
# compatibility but are targeted for removal in 1.1.
#
# This allowlist freezes the set of typed resources to those that existed in the
# last stable pre-1.0 release (v0.6.5). New connectors added to the registry
# after that release will only be available via the generic airbyte_source /
# airbyte_destination resources and the airbyte_connector_configuration data
# source.
#
# The allowlist uses UpperCamelCase names for readability. Comparisons are
# performed case-insensitively so that minor casing differences (e.g.,
# "API" vs "Api") do not cause silent omissions.

TYPED_SOURCE_ALLOWLIST: set[str] = {
    "Aha",
    "Airbyte",
    "Aircall",
    "Airtable",
    "AmazonAds",
    "AmazonSellerPartner",
    "AmazonSqs",
    "Amplitude",
    "ApifyDataset",
    "Appcues",
    "Appfigures",
    "Appfollow",
    "Asana",
    "Auth0",
    "AwsCloudtrail",
    "AzureBlobStorage",
    "AzureTable",
    "BambooHr",
    "Basecamp",
    "Bigquery",
    "BingAds",
    "Bitly",
    "Braintree",
    "Braze",
    "BreezyHr",
    "Brevo",
    "Buildkite",
    "Buzzsprout",
    "Calendly",
    "Canny",
    "Cart",
    "Chameleon",
    "Chargebee",
    "Chartmogul",
    "Cimis",
    "Clazar",
    "Clickhouse",
    "ClickupApi",
    "Clockify",
    "CloseCom",
    "Coda",
    "CoinApi",
    "Coinmarketcap",
    "Configcat",
    "Confluence",
    "Convex",
    "Datadog",
    "Datascope",
    "Dbt",
    "Delighted",
    "Dixa",
    "Dockerhub",
    "Dremio",
    "Dynamodb",
    "Emailoctopus",
    "ExchangeRates",
    "Ezofficeinventory",
    "FacebookMarketing",
    "Faker",
    "Fauna",
    "File",
    "Firebolt",
    "Fleetio",
    "Freshcaller",
    "Freshdesk",
    "Freshsales",
    "Front",
    "GainsightPx",
    "Gcs",
    "Getlago",
    "Github",
    "Gitlab",
    "Glassfrog",
    "Gnews",
    "Goldcast",
    "GoogleAds",
    "GoogleAnalyticsDataApi",
    "GoogleDirectory",
    "GoogleDrive",
    "GooglePagespeedInsights",
    "GoogleSearchConsole",
    "GoogleSheets",
    "GoogleTasks",
    "GoogleWebfonts",
    "Greenhouse",
    "Gridly",
    "Guru",
    "HardcodedRecords",
    "Harvest",
    "Height",
    "Hibob",
    "HighLevel",
    "Hubplanner",
    "Hubspot",
    "Insightly",
    "Instagram",
    "Instatus",
    "Intercom",
    "Ip2whois",
    "Iterable",
    "Jira",
    "Jotform",
    "K6Cloud",
    "Klarna",
    "Klaviyo",
    "Kyve",
    "Launchdarkly",
    "Leadfeeder",
    "Lemlist",
    "LeverHiring",
    "LinkedinAds",
    "LinkedinPages",
    "Linnworks",
    "Lokalise",
    "Looker",
    "Luma",
    "Mailchimp",
    "Mailgun",
    "MailjetSms",
    "Marketo",
    "Metabase",
    "MicrosoftOnedrive",
    "MicrosoftSharepoint",
    "MicrosoftTeams",
    "Mixpanel",
    "Monday",
    "MongodbV2",
    "Mssql",
    "MyHours",
    "Mysql",
    "Netsuite",
    "NorthpassLms",
    "Notion",
    "Nylas",
    "Nytimes",
    "Okta",
    "Omnisend",
    "Onesignal",
    "Oracle",
    "Orb",
    "Orbit",
    "OutbrainAmplify",
    "Outreach",
    "PaypalTransaction",
    "Paystack",
    "Pendo",
    "Pennylane",
    "Persistiq",
    "PexelsApi",
    "Picqer",
    "Pinterest",
    "Pipedrive",
    "Piwik",
    "Planhat",
    "Pocket",
    "Pokeapi",
    "PolygonStockApi",
    "Postgres",
    "Posthog",
    "Postmarkapp",
    "Prestashop",
    "Productboard",
    "Productive",
    "Pypi",
    "Qualaroo",
    "Railz",
    "Recharge",
    "Recreation",
    "Recruitee",
    "Recurly",
    "Reddit",
    "Redshift",
    "Retently",
    "RkiCovid",
    "Rss",
    "S3",
    "Salesforce",
    "Salesloft",
    "SapFieldglass",
    "Savvycal",
    "Scryfall",
    "Secoda",
    "Sendgrid",
    "Sendinblue",
    "Senseforce",
    "Sentry",
    "Sftp",
    "SftpBulk",
    "Shopify",
    "Shortcut",
    "Shortio",
    "Slack",
    "Smaily",
    "Smartengage",
    "Smartsheets",
    "SnapchatMarketing",
    "Snowflake",
    "SonarCloud",
    "SpacexApi",
    "Square",
    "Strava",
    "Stripe",
    "SurveySparrow",
    "Surveymonkey",
    "Survicate",
    "Teamwork",
    "Tempo",
    "TheGuardianApi",
    "TiktokMarketing",
    "Trello",
    "Trustpilot",
    "TvmazeSchedule",
    "Twilio",
    "TwilioTaskrouter",
    "Twitter",
    "Typeform",
    "UsCensus",
    "Vantage",
    "Webflow",
    "WhenIWork",
    "WhiskyHunter",
    "WikipediaPageviews",
    "Woocommerce",
    "Xkcd",
    "YandexMetrica",
    "Yotpo",
    "YoutubeAnalytics",
    "ZendeskChat",
    "ZendeskSunshine",
    "ZendeskSupport",
    "ZendeskTalk",
    "Zenloop",
    "ZohoCrm",
    "Zoom",
}

TYPED_DESTINATION_ALLOWLIST: set[str] = {
    "Astra",
    "AwsDatalake",
    "AzureBlobStorage",
    "Bigquery",
    "Clickhouse",
    "Convex",
    "Databricks",
    "Duckdb",
    "Dynamodb",
    "Elasticsearch",
    "Firebolt",
    "Firestore",
    "Gcs",
    "GoogleSheets",
    "Milvus",
    "Mongodb",
    "Mssql",
    "Mysql",
    "Oracle",
    "Pgvector",
    "Pinecone",
    "Postgres",
    "Pubsub",
    "Qdrant",
    "Redis",
    "Redshift",
    "S3",
    "S3Glue",
    "SftpJson",
    "Snowflake",
    "SnowflakeCortex",
    "Teradata",
    "Timeplus",
    "Typesense",
    "Vectara",
    "Weaviate",
    "Yellowbrick",
}

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


# =============================================================================
# Helper Functions
# =============================================================================


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

    # Deep copy the spec to avoid mutating the original registry data
    spec_copy = copy.deepcopy(spec)

    # Transform the spec
    transformed = transform_spec_properties(spec_copy, is_update)

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


def _strip_hidden_defaults(transformed: dict[str, Any]) -> dict[str, Any]:
    """Strip default values from airbyte_hidden fields so they aren't forced in API requests."""
    if transformed.get("airbyte_hidden") is True and "default" in transformed:
        del transformed["default"]
    return transformed


def transform_spec_properties(spec: dict[str, Any], is_update: bool) -> dict[str, Any]:
    """Transform spec properties, handling nested objects and removing constraints for updates."""
    result = {}

    for key, value in spec.items():
        if key == "required" and is_update:
            # For update schemas, make all fields optional
            continue
        elif key == "examples":
            # OpenAPI requires 'examples' to be an array, not a single value.
            # This mitigates upstream connector-side spec issues (2026-01-28):
            # https://github.com/airbytehq/oncall/issues/11076
            if value is None:
                continue  # Skip null examples
            elif isinstance(value, list):
                result[key] = value
            else:
                result[key] = [value]
        elif key == "properties":
            result[key] = {}
            for prop_name, prop_value in value.items():
                if isinstance(prop_value, dict):
                    transformed = transform_spec_properties(prop_value, is_update)
                    result[key][prop_name] = _strip_hidden_defaults(transformed)
                else:
                    result[key][prop_name] = prop_value
        elif key == "oneOf" or key == "anyOf" or key == "allOf":
            result[key] = [
                _strip_hidden_defaults(transform_spec_properties(item, is_update))
                if isinstance(item, dict) else item
                for item in value
            ]
        elif isinstance(value, dict):
            result[key] = _strip_hidden_defaults(transform_spec_properties(value, is_update))
        else:
            result[key] = value

    return result


def generate_source_path(upper_camel_name: str) -> str:
    """Generate the OpenAPI path template for a source connector."""
    return SOURCE_PATH_TEMPLATE.format(upper_camel_name=upper_camel_name)


def generate_destination_path(upper_camel_name: str) -> str:
    """Generate the OpenAPI path template for a destination connector."""
    return DESTINATION_PATH_TEMPLATE.format(upper_camel_name=upper_camel_name)


def generate_source_create_request(
    upper_camel_name: str, hyphen_name: str, definition_id: str
) -> str:
    """Generate the OpenAPI schema for a source create request."""
    return SOURCE_CREATE_REQUEST_TEMPLATE.format(
        upper_camel_name=upper_camel_name,
        hyphen_name=hyphen_name,
        definition_id=definition_id,
    )


def generate_destination_create_request(
    upper_camel_name: str, hyphen_name: str, definition_id: str
) -> str:
    """Generate the OpenAPI schema for a destination create request."""
    return DESTINATION_CREATE_REQUEST_TEMPLATE.format(
        upper_camel_name=upper_camel_name,
        hyphen_name=hyphen_name,
        definition_id=definition_id,
    )


def generate_source_update_request(upper_camel_name: str, hyphen_name: str) -> str:
    """Generate the OpenAPI schema for a source update request."""
    return SOURCE_UPDATE_REQUEST_TEMPLATE.format(
        upper_camel_name=upper_camel_name, hyphen_name=hyphen_name
    )


def generate_destination_update_request(upper_camel_name: str, hyphen_name: str) -> str:
    """Generate the OpenAPI schema for a destination update request."""
    return DESTINATION_UPDATE_REQUEST_TEMPLATE.format(
        upper_camel_name=upper_camel_name, hyphen_name=hyphen_name
    )


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
    parser.add_argument(
        "--cloud-only",
        action="store_true",
        help="Only include connectors available in Airbyte Cloud",
    )
    parser.add_argument(
        "--type",
        choices=["all", "sources", "destinations"],
        default="all",
        help="Type of connectors to include (default: all)",
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

    # Note: Speakeasy circular reference handling has been moved to the overlay file
    # at overlays/terraform_speakeasy.yaml. The overlay adds x-speakeasy-type-override: any
    # to schemas marked with x-airbyte-circular-ref: true.

    # Filter sources and destinations based on --type flag
    # Logic:
    # - With --cloud-only: Only include connectors available in Airbyte Cloud
    # - Without --cloud-only: Include Cloud connectors + OSS connectors not in Cloud
    #   (This ensures we don't miss Cloud-only connectors that aren't in OSS)
    sources = []
    if args.type in ("all", "sources"):
        seen_source_ids = set()
        if args.cloud_only:
            # Cloud-only mode: iterate through OSS but filter to cloud IDs
            for source in oss_registry.get("sources", []):
                source_id = source.get("sourceDefinitionId")
                if source_id not in cloud_source_ids:
                    continue
                # Skip e2e-test connectors (internal testing only)
                docker_repo = source.get("dockerRepository", "")
                if "e2e-test" in docker_repo:
                    continue
                sources.append(source)
                seen_source_ids.add(source_id)
        else:
            # Cloud+OSS mode: Start with Cloud connectors, then add OSS-only connectors
            # First, add all Cloud connectors
            for source in cloud_registry.get("sources", []):
                source_id = source.get("sourceDefinitionId")
                # Skip e2e-test connectors (internal testing only)
                docker_repo = source.get("dockerRepository", "")
                if "e2e-test" in docker_repo:
                    continue
                sources.append(source)
                seen_source_ids.add(source_id)
            # Then add OSS connectors that are NOT in Cloud
            for source in oss_registry.get("sources", []):
                source_id = source.get("sourceDefinitionId")
                if source_id in seen_source_ids:
                    continue  # Already added from Cloud
                # Skip e2e-test connectors (both e2e-test and e2e-test-cloud)
                docker_repo = source.get("dockerRepository", "")
                if "e2e-test" in docker_repo:
                    continue
                sources.append(source)
                seen_source_ids.add(source_id)

    destinations = []
    if args.type in ("all", "destinations"):
        seen_dest_ids = set()
        if args.cloud_only:
            # Cloud-only mode: iterate through OSS but filter to cloud IDs
            for dest in oss_registry.get("destinations", []):
                dest_id = dest.get("destinationDefinitionId")
                if dest_id not in cloud_dest_ids:
                    continue
                destinations.append(dest)
                seen_dest_ids.add(dest_id)
        else:
            # Cloud+OSS mode: Start with Cloud connectors, then add OSS-only connectors
            # First, add all Cloud connectors
            for dest in cloud_registry.get("destinations", []):
                dest_id = dest.get("destinationDefinitionId")
                destinations.append(dest)
                seen_dest_ids.add(dest_id)
            # Then add OSS connectors that are NOT in Cloud
            for dest in oss_registry.get("destinations", []):
                dest_id = dest.get("destinationDefinitionId")
                if dest_id in seen_dest_ids:
                    continue  # Already added from Cloud
                destinations.append(dest)
                seen_dest_ids.add(dest_id)

    print(f"Processing {len(sources)} sources and {len(destinations)} destinations...")

    # Collect connector names and specs
    source_names = []
    source_definition_ids: dict[str, str] = {}
    source_specs = []
    for source in sources:
        docker_repo = source.get("dockerRepository", "")
        name = get_connector_name(docker_repo, "source-")
        spec = source.get("spec", {}).get("connectionSpecification", {})
        if not spec:
            print(f"  Skipping source {name} - no spec found")
            continue
        source_names.append(name)
        definition_id = source.get("sourceDefinitionId", "")
        if definition_id:
            source_definition_ids[name] = definition_id
        # Generate both create and update schemas
        schema_name, transformed = transform_connector_spec(name, spec, "source", False)
        source_specs.append((schema_name, transformed))
        schema_name_update, transformed_update = transform_connector_spec(name, spec, "source", True)
        source_specs.append((schema_name_update, transformed_update))

    destination_names = []
    destination_definition_ids: dict[str, str] = {}
    destination_specs = []
    for dest in destinations:
        docker_repo = dest.get("dockerRepository", "")
        name = get_connector_name(docker_repo, "destination-")
        spec = dest.get("spec", {}).get("connectionSpecification", {})
        if not spec:
            print(f"  Skipping destination {name} - no spec found")
            continue
        destination_names.append(name)
        definition_id = dest.get("destinationDefinitionId", "")
        if definition_id:
            destination_definition_ids[name] = definition_id
        # Generate both create and update schemas
        schema_name, transformed = transform_connector_spec(name, spec, "destination", False)
        destination_specs.append((schema_name, transformed))
        schema_name_update, transformed_update = transform_connector_spec(name, spec, "destination", True)
        destination_specs.append((schema_name_update, transformed_update))

    # Sort names and specs for consistent output
    source_names.sort()
    destination_names.sort()
    source_specs.sort(key=lambda x: x[0])  # Sort by schema name
    destination_specs.sort(key=lambda x: x[0])  # Sort by schema name

    # Note: Custom connectors were removed in the 1.0 refactor (PR #232)
    # so we no longer add them to the terraform spec.
    # See: https://github.com/airbytehq/terraform-provider-airbyte/issues/253

    # Filter typed resources to the frozen allowlist (deprecated connectors only).
    # All connectors remain available via the generic airbyte_source /
    # airbyte_destination resources; the typed resources are kept solely for
    # backward compatibility and will be removed in 1.1.
    _source_allowlist_lower = {s.lower() for s in TYPED_SOURCE_ALLOWLIST}
    _dest_allowlist_lower = {d.lower() for d in TYPED_DESTINATION_ALLOWLIST}
    source_names_for_terraform = [
        n for n in source_names
        if lower_hyphen_to_upper_camel(n).lower() in _source_allowlist_lower
    ]
    destination_names_for_terraform = [
        n for n in destination_names
        if lower_hyphen_to_upper_camel(n).lower() in _dest_allowlist_lower
    ]
    skipped_sources = len(source_names) - len(source_names_for_terraform)
    skipped_dests = len(destination_names) - len(destination_names_for_terraform)
    if skipped_sources or skipped_dests:
        print(
            f"  Typed resource allowlist: {len(source_names_for_terraform)} sources, "
            f"{len(destination_names_for_terraform)} destinations "
            f"(skipped {skipped_sources} sources, {skipped_dests} destinations not in allowlist)"
        )

    print("Generating OpenAPI spec...")

    # Split the base spec to insert:
    # 1. Connector-specific paths before "components:"
    # 2. Missing response stubs in components/responses
    # 3. Connector-specific schemas at the end of components/schemas
    # 4. Security schemes (if not present in base spec)
    base_lines = base_spec.split("\n")
    components_line_idx = None
    responses_line_idx = None
    schemas_line_idx = None
    security_schemes_line_idx = None

    for i, line in enumerate(base_lines):
        if line.startswith("components:"):
            components_line_idx = i
        # Find the responses section (indented with 2 spaces, inside components)
        if line == "  responses:":
            responses_line_idx = i
        # Find the schemas section (indented with 2 spaces, inside components)
        if line == "  schemas:":
            schemas_line_idx = i
        # Find the securitySchemes section (indented with 2 spaces, inside components)
        if line == "  securitySchemes:":
            security_schemes_line_idx = i
            break

    if components_line_idx is None:
        msg = "Could not find 'components:' section in base spec"
        raise ValueError(msg)

    # If no securitySchemes section, we'll add it at the end
    has_security_schemes = security_schemes_line_idx is not None

    # Build the output:
    # 1. Everything before "components:" (includes paths section)
    # 2. Connector-specific paths (still under paths section)
    # 3. "components:" and base schemas
    # 4. Connector-specific schemas (inside components/schemas)
    # 5. Security schemes (added if not present, or kept if present)

    output_parts = []

    # Part 1: Everything before components (includes all base paths)
    output_parts.append("\n".join(base_lines[:components_line_idx]))

    # Part 2: Add connector-specific paths (these go under the paths section)
    output_parts.append("\n# Connector-specific paths")
    for name in source_names_for_terraform:
        upper_camel = lower_hyphen_to_upper_camel(name)
        output_parts.append(generate_source_path(upper_camel))

    for name in destination_names_for_terraform:
        upper_camel = lower_hyphen_to_upper_camel(name)
        output_parts.append(generate_destination_path(upper_camel))

    # Part 3: Add components section with injected missing responses
    # We need to inject the ForbiddenResponse stub into the responses section
    if responses_line_idx and schemas_line_idx:
        # Include components up to and including responses section header
        output_parts.append("\n".join(base_lines[components_line_idx:responses_line_idx + 1]))
        # Find the existing responses (between responses: and schemas:)
        existing_responses = base_lines[responses_line_idx + 1:schemas_line_idx]
        output_parts.append("\n".join(existing_responses))
        # Add missing ForbiddenResponse stub
        output_parts.append(FORBIDDEN_RESPONSE_STUB)
        # Add schemas section and rest up to securitySchemes (or end)
        if has_security_schemes:
            output_parts.append("\n".join(base_lines[schemas_line_idx:security_schemes_line_idx]))
        else:
            output_parts.append("\n".join(base_lines[schemas_line_idx:]))
    elif has_security_schemes:
        # Include up to securitySchemes
        output_parts.append("\n".join(base_lines[components_line_idx:security_schemes_line_idx]))
    else:
        # Include all of components (no securitySchemes in base spec)
        output_parts.append("\n".join(base_lines[components_line_idx:]))

    # Part 4: Add connector-specific schemas (inside components/schemas, before securitySchemes)
    output_parts.append("# Connector-specific schemas")

    # Add source create/update request schemas
    for name in source_names_for_terraform:
        upper_camel = lower_hyphen_to_upper_camel(name)
        definition_id = source_definition_ids.get(name, "")
        output_parts.append(generate_source_create_request(upper_camel, name, definition_id))
        output_parts.append(generate_source_update_request(upper_camel, name))

    # Add destination create/update request schemas
    for name in destination_names_for_terraform:
        upper_camel = lower_hyphen_to_upper_camel(name)
        definition_id = destination_definition_ids.get(name, "")
        output_parts.append(generate_destination_create_request(upper_camel, name, definition_id))
        output_parts.append(generate_destination_update_request(upper_camel, name))

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

    # Note: Custom connector stubs were removed in the 1.0 refactor (PR #232)
    # The code below is commented out but kept for reference in case custom
    # connectors are re-added in the future.
    # See: https://github.com/airbytehq/terraform-provider-airbyte/issues/253
    # if args.type == "all":
    #     output_parts.append(CUSTOM_CONNECTOR_STUBS)
    # elif args.type == "sources":
    #     output_parts.append("""
    #     source-custom:
    #       description: The values required to configure the source.
    #       example: { user: "charles" }
    #     source-custom-update:
    #       title: "Custom Spec"
    # """)
    # elif args.type == "destinations":
    #     output_parts.append("""
    #     destination-custom:
    #       description: The values required to configure the destination.
    #       example: { user: "charles" }
    #     destination-custom-update:
    #       title: "Custom Spec"
    # """)

    # Note: SourceConfiguration and DestinationConfiguration stubs are already
    # present in the base api.yaml, so we don't need to add them here.

    # Add missing schema stubs (referenced in api.yaml but not defined there)
    output_parts.append(MISSING_SCHEMA_STUBS)

    # Part 5: Add securitySchemes section
    if has_security_schemes:
        # Use existing securitySchemes from base spec
        output_parts.append("\n".join(base_lines[security_schemes_line_idx:]))
    else:
        # Add security schemes (not present in base api.yaml)
        output_parts.append(SECURITY_SCHEMES)

    # Write output
    output_content = "\n".join(output_parts)
    args.output.write_text(output_content)
    print(f"Generated spec written to {args.output}")
    print(f"Total lines: {len(output_content.splitlines())}")


if __name__ == "__main__":
    main()
