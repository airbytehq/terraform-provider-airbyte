resource "airbyte_source_persistiq" "my_source_persistiq" {
  configuration = {
    api_key = "...my_api_key..."
  }
  definition_id = "e3b52011-25b2-4925-aa78-4d2d0f170747"
  name          = "Sonja Dibbert"
  secret_id     = "...my_secret_id..."
  workspace_id  = "a49780ba-1d6a-428c-aeef-e59b72db2240"
}