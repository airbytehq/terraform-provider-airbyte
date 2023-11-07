resource "airbyte_source_recruitee" "my_source_recruitee" {
  configuration = {
    api_key    = "...my_api_key..."
    company_id = 4
  }
  name         = "Van Jakubowski"
  secret_id    = "...my_secret_id..."
  workspace_id = "1922df28-3a61-4431-ba52-314031fd7b82"
}