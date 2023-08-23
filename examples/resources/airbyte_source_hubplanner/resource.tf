resource "airbyte_source_hubplanner" "my_source_hubplanner" {
  configuration = {
    api_key     = "...my_api_key..."
    source_type = "hubplanner"
  }
  name         = "Scott Jast"
  secret_id    = "...my_secret_id..."
  workspace_id = "bf6ae591-bc8b-4def-b612-b63c205fda84"
}