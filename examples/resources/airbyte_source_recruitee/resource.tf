resource "airbyte_source_recruitee" "my_source_recruitee" {
  configuration = {
    api_key     = "...my_api_key..."
    company_id  = 9
    source_type = "recruitee"
  }
  name         = "Mrs. Tina White"
  secret_id    = "...my_secret_id..."
  workspace_id = "6bcf1525-58da-4a95-be6c-d02756c354aa"
}