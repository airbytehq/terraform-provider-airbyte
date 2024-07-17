resource "airbyte_source_dixa" "my_source_dixa" {
  configuration = {
    api_token  = "...my_api_token..."
    batch_size = 1
    start_date = "YYYY-MM-DD"
  }
  definition_id = "a34ff680-c88d-48e9-b743-1721e4227fd5"
  name          = "Patty Huel"
  secret_id     = "...my_secret_id..."
  workspace_id  = "c345b5c1-bae7-4472-aa8c-d9c5aad47afd"
}