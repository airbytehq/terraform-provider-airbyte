resource "airbyte_source_recruitee" "my_source_recruitee" {
  configuration = {
    api_key    = "...my_api_key..."
    company_id = 0
  }
  definition_id = "cbe1d2ec-d015-401d-92f6-c56d3cf89e69"
  name          = "Jean Rutherford DDS"
  secret_id     = "...my_secret_id..."
  workspace_id  = "7a6ecf05-091d-4908-99d0-017533842973"
}