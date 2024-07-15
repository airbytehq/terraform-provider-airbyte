resource "airbyte_source_recruitee" "my_source_recruitee" {
  configuration = {
    api_key    = "...my_api_key..."
    company_id = 5
  }
  definition_id = "6535f73a-4553-45ff-b5d1-d34f0cce5486"
  name          = "Ms. Nathan O'Reilly PhD"
  secret_id     = "...my_secret_id..."
  workspace_id  = "c53f6414-8acb-48b4-9d5b-f94a01397d3d"
}