resource "airbyte_source_instatus" "my_source_instatus" {
  configuration = {
    api_key     = "...my_api_key..."
    source_type = "instatus"
  }
  name         = "Winston Bergstrom"
  secret_id    = "...my_secret_id..."
  workspace_id = "837ae80c-1c19-4c95-ba99-8678fa3f6969"
}