resource "airbyte_source_smartengage" "my_source_smartengage" {
  configuration = {
    api_key = "...my_api_key..."
  }
  name         = "Marguerite Reichel"
  secret_id    = "...my_secret_id..."
  workspace_id = "61ce1bb1-cada-4a0e-b28a-3bd5563e04de"
}