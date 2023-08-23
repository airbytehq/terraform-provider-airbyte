resource "airbyte_source_tempo" "my_source_tempo" {
  configuration = {
    api_token   = "...my_api_token..."
    source_type = "tempo"
  }
  name         = "Alan O'Conner DVM"
  secret_id    = "...my_secret_id..."
  workspace_id = "d5671e9c-3263-450a-8671-43789ce0e991"
}