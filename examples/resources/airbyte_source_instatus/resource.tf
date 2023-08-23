resource "airbyte_source_instatus" "my_source_instatus" {
  configuration = {
    api_key     = "...my_api_key..."
    source_type = "instatus"
  }
  name         = "Rosalie Bruen V"
  secret_id    = "...my_secret_id..."
  workspace_id = "c95ba998-678f-4a3f-a969-91af388ce036"
}