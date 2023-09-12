resource "airbyte_source_metabase" "my_source_metabase" {
  configuration = {
    instance_api_url = "https://localhost:3000/api/"
    password         = "...my_password..."
    session_token    = "...my_session_token..."
    source_type      = "metabase"
    username         = "Peyton.Green"
  }
  name         = "Tammy Sporer"
  secret_id    = "...my_secret_id..."
  workspace_id = "71e7fd07-4009-4ef8-929d-e1dd7097b5da"
}