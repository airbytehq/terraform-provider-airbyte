resource "airbyte_source_tempo" "my_source_tempo" {
  configuration = {
    api_token   = "...my_api_token..."
    source_type = "tempo"
  }
  name         = "Elias Glover"
  secret_id    = "...my_secretId..."
  workspace_id = "37e45b89-55d4-413e-93a4-82310907bd35"
}