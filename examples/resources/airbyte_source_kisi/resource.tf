resource "airbyte_source_kisi" "my_source_kisi" {
  configuration = {
    api_key = "...my_api_key..."
  }
  definition_id = "6a95d581-a8d4-4c54-8218-1af6e73e44ad"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "83b4e9a0-f0c6-4fff-9a55-474bf577a7b7"
}