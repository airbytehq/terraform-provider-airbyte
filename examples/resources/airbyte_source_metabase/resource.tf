resource "airbyte_source_metabase" "my_source_metabase" {
  configuration = {
    instance_api_url = "https://localhost:3000/api/"
    password         = "...my_password..."
    session_token    = "...my_session_token..."
    username         = "Alva_Sanford24"
  }
  definition_id = "e76e9fde-f541-4f06-8a13-b1e89c1488fa"
  name          = "Dr. Randall Casper"
  secret_id     = "...my_secret_id..."
  workspace_id  = "d922269c-9d64-48f0-bccd-d2e95af6ed3c"
}