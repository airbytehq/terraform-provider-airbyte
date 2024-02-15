resource "airbyte_source_greenhouse" "my_source_greenhouse" {
  configuration = {
    api_key = "...my_api_key..."
  }
  definition_id = "1e868df1-f2c5-4ad8-8a46-153eb240d626"
  name          = "Ricky Lakin"
  secret_id     = "...my_secret_id..."
  workspace_id  = "ccaaf58e-0f5c-4115-9d60-149910eecfc7"
}