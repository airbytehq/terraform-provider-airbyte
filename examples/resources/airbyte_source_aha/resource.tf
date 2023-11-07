resource "airbyte_source_aha" "my_source_aha" {
  configuration = {
    api_key = "...my_api_key..."
    url     = "...my_url..."
  }
  name         = "Melvin Marks"
  secret_id    = "...my_secret_id..."
  workspace_id = "39ea0e10-1659-40e1-a2bc-7de0ff637374"
}