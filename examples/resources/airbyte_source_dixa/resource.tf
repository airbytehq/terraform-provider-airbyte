resource "airbyte_source_dixa" "my_source_dixa" {
  configuration = {
    api_token  = "...my_api_token..."
    batch_size = 31
    start_date = "YYYY-MM-DD"
  }
  definition_id = "1e10d002-e1c7-43f9-ba1e-39a63be209ca"
  name          = "Vernon Mosciski"
  secret_id     = "...my_secret_id..."
  workspace_id  = "b808ec8c-0a1f-4116-b1a5-6d068f4b5e4c"
}