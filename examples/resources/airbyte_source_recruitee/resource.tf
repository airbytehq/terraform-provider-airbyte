resource "airbyte_source_recruitee" "my_source_recruitee" {
  configuration = {
    api_key    = "...my_api_key..."
    company_id = 10
  }
  definition_id = "ae93f7f0-f8c4-4b4f-8d4f-6833e1f3303a"
  name          = "Kevin Goldner"
  secret_id     = "...my_secret_id..."
  workspace_id  = "891fe9c8-dcb6-4cc1-8d73-d2cf40136d59"
}