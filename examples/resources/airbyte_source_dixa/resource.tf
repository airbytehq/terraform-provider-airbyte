resource "airbyte_source_dixa" "my_source_dixa" {
  configuration = {
    api_token  = "...my_api_token..."
    batch_size = 1
    start_date = "YYYY-MM-DD"
  }
  definition_id = "e9256d74-638d-4140-9463-9cf5dd4a0c05"
  name          = "Floyd Feeney"
  secret_id     = "...my_secret_id..."
  workspace_id  = "6b9b8b8f-8f6a-4fbf-b65d-687e087e3905"
}