resource "airbyte_source_sendinblue" "my_source_sendinblue" {
  configuration = {
    api_key = "...my_api_key..."
  }
  definition_id = "db09b9a9-03f6-40eb-8a54-b7cf533c55d6"
  name          = "Pablo Hamill"
  secret_id     = "...my_secret_id..."
  workspace_id  = "1f7b10c6-dd1e-462e-b5fc-f365dccaec2c"
}