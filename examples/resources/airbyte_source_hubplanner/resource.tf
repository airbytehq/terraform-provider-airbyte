resource "airbyte_source_hubplanner" "my_source_hubplanner" {
  configuration = {
    api_key     = "...my_api_key..."
    source_type = "hubplanner"
  }
  name         = "Stephanie Hansen"
  secret_id    = "...my_secret_id..."
  workspace_id = "a650164e-06f5-4bf6-ae59-1bc8bdef3612"
}