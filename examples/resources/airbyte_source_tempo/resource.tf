resource "airbyte_source_tempo" "my_source_tempo" {
  configuration = {
    api_token = "...my_api_token..."
  }
  definition_id = "5f462d7c-8446-4197-ba1b-271a5b009f29"
  name          = "Karen Kemmer"
  secret_id     = "...my_secret_id..."
  workspace_id  = "6dac9959-2aae-4b21-989b-3db558d4aa17"
}