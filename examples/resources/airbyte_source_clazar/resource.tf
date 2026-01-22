resource "airbyte_source_clazar" "my_source_clazar" {
  configuration = {
    client_id     = "...my_client_id..."
    client_secret = "...my_client_secret..."
  }
  definition_id = "e48f6e8b-9783-42a5-b2c9-bdf7fd97230c"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "cb625e21-58bc-4c4a-9b08-9ae0dc70a1f9"
}