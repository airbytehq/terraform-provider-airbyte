resource "airbyte_source_metabase" "my_source_metabase" {
  configuration = {
    instance_api_url = "https://localhost:3000/api/"
    password         = "...my_password..."
    session_token    = "...my_session_token..."
    username         = "...my_username..."
  }
  definition_id = "d43c9538-9f19-48fa-839b-519d7ddc6528"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "2a6ca9f4-7b13-4377-aec7-a4e44e8ebd23"
}