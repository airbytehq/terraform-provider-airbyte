resource "airbyte_source_glassfrog" "my_source_glassfrog" {
  configuration = {
    api_key = "...my_api_key..."
  }
  name         = "Julie Quitzon"
  secret_id    = "...my_secret_id..."
  workspace_id = "0f5d38a1-edcb-436c-9a3d-51cbc15623ec"
}