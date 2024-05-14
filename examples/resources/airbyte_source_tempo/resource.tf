resource "airbyte_source_tempo" "my_source_tempo" {
  configuration = {
    api_token = "...my_api_token..."
  }
  definition_id = "d7bbc290-ef00-4ad5-b722-56fe50a2e7cf"
  name          = "Reginald Zulauf"
  secret_id     = "...my_secret_id..."
  workspace_id  = "acc65c56-f5fa-4677-8e44-b91c615d1280"
}