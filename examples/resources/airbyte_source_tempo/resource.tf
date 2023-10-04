resource "airbyte_source_tempo" "my_source_tempo" {
  configuration = {
    api_token = "...my_api_token..."
  }
  name         = "Barry Wiegand"
  secret_id    = "...my_secret_id..."
  workspace_id = "4002ca0d-0171-41f2-9a28-dde04a9ce3be"
}