resource "airbyte_source_pendo" "my_source_pendo" {
  configuration = {
    api_key     = "...my_api_key..."
    source_type = "pendo"
  }
  name         = "Francisco Hauck"
  workspace_id = "f1031e68-99f0-4c20-81e2-2cd55cc0584a"
}