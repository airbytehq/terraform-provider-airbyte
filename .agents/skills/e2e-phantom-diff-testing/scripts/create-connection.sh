#!/usr/bin/env bash
# Mint an Airbyte Cloud bearer token and create a multi-stream connection via
# the public API with explicit empty arrays for primaryKey/cursorField on
# full_refresh streams. Going direct to the REST API bypasses any provider-side
# normalization so the API state starts with [] as recorded by the backend.
#
# Required environment variables:
#   AIRBYTE_CLOUD_CLIENT_ID       OAuth client id
#   AIRBYTE_CLOUD_CLIENT_SECRET   OAuth client secret
#   AIRBYTE_SOURCE_ID             Configured source in the sandbox workspace
#   AIRBYTE_DESTINATION_ID        Configured destination in the sandbox workspace
#   NAME_PREFIX                   Unique name for the test connection
#   WORK_DIR                      Workspace dir. Script writes $WORK_DIR/connection.env
#
# Optional:
#   AIRBYTE_API_URL               Defaults to https://api.airbyte.com/v1

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
# shellcheck source=_lib.sh
. "$SCRIPT_DIR/_lib.sh"

require_bin curl jq
require_env AIRBYTE_CLOUD_CLIENT_ID AIRBYTE_CLOUD_CLIENT_SECRET \
            AIRBYTE_SOURCE_ID AIRBYTE_DESTINATION_ID NAME_PREFIX WORK_DIR

export AIRBYTE_API_URL="${AIRBYTE_API_URL:-https://api.airbyte.com/v1}"

log "requesting bearer token from $AIRBYTE_API_URL"
# Build the payload with jq --arg so JSON-special characters in secrets
# (quotes, backslashes, newlines) can't produce a malformed request body.
TOKEN_BODY=$(jq -n \
  --arg client_id     "$AIRBYTE_CLOUD_CLIENT_ID" \
  --arg client_secret "$AIRBYTE_CLOUD_CLIENT_SECRET" \
  '{
    client_id:     $client_id,
    client_secret: $client_secret,
    "grant-type":  "client_credentials"
  }')
TOKEN="$(curl -sS -X POST "$AIRBYTE_API_URL/applications/token" \
  -H "Content-Type: application/json" \
  -d "$TOKEN_BODY" \
  | jq -r .access_token)"
[[ -n "$TOKEN" && "$TOKEN" != "null" ]] || fail "token request returned empty/null access_token"

log "creating multi-stream connection $NAME_PREFIX"
BODY=$(jq -n \
  --arg source      "$AIRBYTE_SOURCE_ID" \
  --arg destination "$AIRBYTE_DESTINATION_ID" \
  --arg name        "$NAME_PREFIX" \
  --arg prefix      "${NAME_PREFIX//-/_}_" \
  '{
    sourceId:      $source,
    destinationId: $destination,
    name:          $name,
    status:        "inactive",
    prefix:        $prefix,
    configurations: {
      streams: [
        { name: "users",     syncMode: "full_refresh_append",    cursorField: [], primaryKey: [] },
        { name: "products",  syncMode: "full_refresh_overwrite", cursorField: [], primaryKey: [] },
        { name: "purchases", syncMode: "incremental_append",     cursorField: ["updated_at"], primaryKey: [["id"]] }
      ]
    }
  }')

RESP="$(curl -sS -X POST "$AIRBYTE_API_URL/connections" \
  -H "Authorization: Bearer $TOKEN" \
  -H "Content-Type: application/json" \
  -d "$BODY")"
CONNECTION_ID="$(echo "$RESP" | jq -r .connectionId)"
if [[ -z "$CONNECTION_ID" || "$CONNECTION_ID" == "null" ]]; then
  printf 'API response was:\n%s\n' "$RESP" >&2
  fail "connection creation did not return a connectionId"
fi

log "created connection $CONNECTION_ID"
{
  printf 'TOKEN=%q\n' "$TOKEN"
  printf 'CONNECTION_ID=%q\n' "$CONNECTION_ID"
  printf 'AIRBYTE_API_URL=%q\n' "$AIRBYTE_API_URL"
} > "$WORK_DIR/connection.env"
