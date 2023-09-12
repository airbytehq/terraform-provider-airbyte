resource "airbyte_source_hubplanner" "my_source_hubplanner" {
  configuration = {
    api_key     = "...my_api_key..."
    source_type = "hubplanner"
  }
  name         = "Cary Emmerich Sr."
  secret_id    = "...my_secret_id..."
  workspace_id = "b63c205f-da84-4077-8a68-a9a35d086b6f"
}