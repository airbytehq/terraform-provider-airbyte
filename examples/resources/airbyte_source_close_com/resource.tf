resource "airbyte_source_close_com" "my_source_closecom" {
  configuration = {
    api_key    = "...my_api_key..."
    start_date = "2021-01-01"
  }
  definition_id = "011b8862-473b-4757-b910-8618e91445d8"
  name          = "Myra Gusikowski"
  secret_id     = "...my_secret_id..."
  workspace_id  = "a849cd51-7f0e-432c-ae30-2e6de92b3e43"
}