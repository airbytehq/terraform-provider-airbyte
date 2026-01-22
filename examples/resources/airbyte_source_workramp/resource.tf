resource "airbyte_source_workramp" "my_source_workramp" {
  configuration = {
    academy_id = "...my_academy_id..."
    api_key    = "...my_api_key..."
  }
  definition_id = "27b4b5c5-73f2-415c-b7ca-d654a0a45417"
  name          = "...my_name..."
  secret_id     = "...my_secret_id..."
  workspace_id  = "3f3fc58a-d7d0-44e8-956a-6dda5de1e84b"
}