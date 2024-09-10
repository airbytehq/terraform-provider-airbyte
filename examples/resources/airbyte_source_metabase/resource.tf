resource "airbyte_source_metabase" "my_source_metabase" {
  configuration = {
    instance_api_url = "https://localhost:3000/api/"
    password         = "...my_password..."
    session_token    = "...my_session_token..."
    username         = "Shaniya80"
  }
  definition_id = "7d43320f-ac9c-41a8-9ab7-e73a5971814e"
  name          = "Dr. Muriel Ryan"
  secret_id     = "...my_secret_id..."
  workspace_id  = "33abc58a-542d-4517-bc88-bc4998d75efe"
}