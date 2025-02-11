resource "airbyte_source_easypromos" "my_source_easypromos" {
  configuration = {
    bearer_token = "...my_bearer_token..."
  }
  definition_id = "9cafccdf-f0f9-4f01-ab79-298a80674ef5"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "34b293ab-de89-4c66-aad1-b4f59b3af9d7"
}